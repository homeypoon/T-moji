//
//  ExploreQuizCollectionViewCell.swift
//  T-moji
//
//  Created by Homey Poon on 2023-08-03.
//

import UIKit

class ExploreQuizCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var quizTitleLabel: UILabel!
    @IBOutlet var resultGroupButton: UIButton!
    @IBOutlet var completeStateButton: UIButton!
    @IBOutlet var takenByOthersLabel: UILabel!
    
    
    func configure(quiz: Quiz, completeStateText: String, currentUserResultType: ResultType?, takenByText: String) {
        
        resultGroupButton.layer.cornerRadius = 8
        completeStateButton.layer.cornerRadius = 8
        
        resultGroupButton.backgroundColor = .systemTeal
        completeStateButton.backgroundColor = .systemPurple
        resultGroupButton.configuration?.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { incoming in
            var outgoing = incoming
            outgoing.font = UIFont.systemFont(ofSize: 14, weight: .bold)
            return outgoing
        }
        completeStateButton.configuration?.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { incoming in
            var outgoing = incoming
            outgoing.font = UIFont.systemFont(ofSize: 14, weight: .bold)
            return outgoing
        }
        
        // get groups and their users
        
        quizTitleLabel.text = quiz.title
        resultGroupButton.setTitle(quiz.resultGroup.rawValue.capitalized, for: .normal)
        completeStateButton.setTitle(completeStateText, for: .normal)
        takenByOthersLabel.text = takenByText
    }
}
