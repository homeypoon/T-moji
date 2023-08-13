//
//  QuizDetailViewController.swift
//  T-moji
//
//  Created by Homey Poon on 2023-08-05.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class QuizDetailViewController: UIViewController {
    var quiz: Quiz?
    var currentUser: User!
    var quizHistory: QuizHistory!
    var quizCompleteState: Bool = false
    var currentUserResultType: ResultType?
    var takenByText: String!
    
    @IBOutlet var quizTitleLabel: UILabel!
    @IBOutlet var resultGroupButton: UIButton!
    @IBOutlet var myResultLabel: UILabel!
    @IBOutlet var resultDetailButton: UIButton!
    @IBOutlet var takeQuizButton: UIButton!
    @IBOutlet var guessForTmatesButton: UIButton!
    @IBOutlet var quizDetailStackView: UIStackView!
    
    
    @IBOutlet var quizButtons: [UIButton]!
    
    var isRetakeQuiz: Bool?
    
    @IBOutlet var resultStackView: UIStackView!
    var takeQuizState: Int!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.tabBarController?.tabBar.isHidden = false
        fetchQuizHistory()
        fetchUser()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateButtonFont()
        updateUIText()
    }
    
    private func updateUIText() {
        currentUser.dollarCount = 28 // TEMP FOR TESTING
        
        print("updating uitext")
        print("self \(currentUserResultType)")
        guard let userID = Auth.auth().currentUser?.uid else { return }
        takeQuizState = quizHistory.completedUsers.contains(userID) ? ButtonState.retakeQuiz : ButtonState.takeQuiz
        
        if takeQuizState == ButtonState.takeQuiz {
            myResultLabel.isHidden = true
            resultDetailButton.isHidden = true
            resultStackView.isHidden = true
            
            takeQuizButton.setTitle("Take Quiz", for: [])
        } else if takeQuizState == ButtonState.retakeQuiz {
            myResultLabel.isHidden = false
            resultDetailButton.isHidden = false
            resultStackView.isHidden = false
            
            myResultLabel.text = "My Result: \(currentUserResultType?.emoji ?? " ")"
            takeQuizButton.setTitle("Retake Quiz", for: [])
        }
        
        quizTitleLabel.text = quiz?.title
        
        // If no t-mates have taken quiz
        if takenByText == TakenByText.noTmates {
            guessForTmatesButton.isUserInteractionEnabled = false
            
            guessForTmatesButton.tintColor = .systemGray2
            print("truee")
        } else {
            guessForTmatesButton.isEnabled = true
            guessForTmatesButton.tintColor = UIColor.systemCyan
            print("false")
        }
        guessForTmatesButton.configuration?.subtitle = takenByText
        
        quizDetailStackView.layoutMargins = UIEdgeInsets(top: 40, left: 20, bottom: 30, right: 20)
        quizDetailStackView.isLayoutMarginsRelativeArrangement = true
        
        quizDetailStackView.applyRoundedCornerAndShadow(borderType: .big)
    }
    
    private func updateButtonFont() {
        for button in quizButtons {
            button.applyRoundedCornerAndShadow(borderType: .big)
            button.configuration?.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { incoming in
                var outgoing = incoming
                outgoing.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
                return outgoing
            }
        }
        resultGroupButton.setTitle(quiz?.resultGroup.rawValue.capitalized, for: [])
        resultGroupButton.configuration?.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { incoming in
            var outgoing = incoming
            outgoing.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
            return outgoing
        }
        
    }
    
    @IBAction func showQuiz(_ sender: UIButton) {

        isRetakeQuiz = takeQuizState == ButtonState.retakeQuiz
        if isRetakeQuiz! {
            self.performSegue(withIdentifier: "showPersonalQuiz", sender: nil)
        } else {
            performSegue(withIdentifier: "showPersonalQuiz", sender: nil)
        }
    }
    
    @IBAction func guessForTmatesPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "selectMember", sender: nil)
    }
    
    
    func presentRetakeAlert(withTitle title: String, withMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        
        // add watch ad to redo
        
        present(alert, animated: true, completion: nil)
    }
    
    func fetchQuizHistory() {
        guard let quizID = quiz?.id else {return}
        
        FirestoreService.shared.db.collection("quizHistories").whereField("quizID", isEqualTo: quizID).getDocuments { (querySnapshot, error) in
            if let error = error {
                self.presentErrorAlert(with: error.localizedDescription)
            } else {
                for document in querySnapshot!.documents {
                    do {
                        self.quizHistory = try document.data(as: QuizHistory.self)
                        print("q \(self.quizHistory)")
                        DispatchQueue.main.async { // Ensure UI updates are on the main thread
                            self.updateUIText()
                            self.updateButtonFont()
                            print("updating")
                        }
                    } catch {
                        self.presentErrorAlert(with: error.localizedDescription)
                    }
                }
            }
        }
    }
    
    private func fetchUser() {
        guard let userID = Auth.auth().currentUser?.uid else { return }
        
        let docRef = FirestoreService.shared.db.collection("users").document(userID)
        
        docRef.getDocument(as: User.self) { result in
            switch result {
            case .success(let user):
                self.currentUser = user
                print("result type \(user)")
                self.currentUserResultType = user.userQuizHistory.first(where: { $0.quizID == self.quiz?.id })?.finalResult
                print("currentUserResultType")
                self.updateUIText()
            case .failure(let error):
                // Handle the error appropriately
                self.presentErrorAlert(with: error.localizedDescription)
            }
        }
    }
    
    func presentErrorAlert(with message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func seeResultDetailsPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showResultDetails", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier == "showPersonalQuiz" {
            let personalQuizVC = segue.destination as! PersonalQuizViewController
            personalQuizVC.isRetakeQuiz = isRetakeQuiz
            personalQuizVC.currentUser = currentUser
            personalQuizVC.quiz = quiz
        } else if segue.identifier == "showResultDetails" {
            let quizResultVC = segue.destination as! QuizResultCollectionViewController
            quizResultVC.quiz = self.quiz
            quizResultVC.currentUser = self.currentUser
            
            quizResultVC.userQuizHistory = currentUser.userQuizHistory.first(where: { $0.quizID == self.quiz?.id })
        } else if segue.identifier == "selectMember" {
            let selectMemberVC = segue.destination as! SelectMemberCollectionViewController
            selectMemberVC.quiz = quiz
            selectMemberVC.currentUser = currentUser
            selectMemberVC.quizHistory = quizHistory
        }
    }
    
}
