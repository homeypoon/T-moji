//
//  QuizData.swift
//  T-moji
//
//  Created by Homey Poon on 2023-07-31.
//

import Foundation

struct QuizData {
    static let quizzes: [Quiz] = [
        // Animal Quiz
        Quiz(id: 0, resultGroup: .animal, title: "What Animal Are You?", quizType: .character, questions: [
            Question(text: "Where would you like to travel to?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "New York, USA", correspondingResult: ResultType.dog),
                Answer(text: "Paris, France", correspondingResult: ResultType.cat),
                Answer(text: "Tokyo, Japan", correspondingResult: ResultType.rabbit),
                Answer(text: "Jaipur, India", correspondingResult: ResultType.tiger)
            ]),
            Question(text: "How introverted or extraverted are you?", type: .ranged, possibleAnswers: [
                Answer(text: "Introverted", correspondingResult: ResultType.cat),
                Answer(text: "Slightly Introverted", correspondingResult: ResultType.rabbit),
                Answer(text: "Slightly Extraverted", correspondingResult: ResultType.tiger),
                Answer(text: "Extraverted", correspondingResult: ResultType.dog)
            ]),
            Question(text: "What is your favourite season?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Spring", correspondingResult: ResultType.rabbit),
                Answer(text: "Summer", correspondingResult: ResultType.dog),
                Answer(text: "Autumn", correspondingResult: ResultType.cat),
                Answer(text: "Winter", correspondingResult: ResultType.tiger)
            ]),
            Question(text: "What is your favourite color?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Orange", correspondingResult: ResultType.tiger),
                Answer(text: "Red", correspondingResult: ResultType.dog),
                Answer(text: "Black", correspondingResult: ResultType.cat),
                Answer(text: "Pink", correspondingResult: ResultType.rabbit)
            ]),
            Question(text: "Which superpower would you choose?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Super strength", correspondingResult: ResultType.tiger),
                Answer(text: "Shape-shifting", correspondingResult: ResultType.cat),
                Answer(text: "Invisibility", correspondingResult: ResultType.rabbit),
                Answer(text: "Telepathy", correspondingResult: ResultType.dog)
            ]),
            Question(text: "What's your preferred leisure activity?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Going for a hike", correspondingResult: ResultType.dog),
                Answer(text: "Curling up with a good book", correspondingResult: ResultType.cat),
                Answer(text: "Exploring new places", correspondingResult: ResultType.rabbit),
                Answer(text: "Engaging in sports", correspondingResult: ResultType.tiger)
            ])
        ]),
        // Vehicle Quiz
        Quiz(id: 1, resultGroup: .vehicle, title: "What Vehicle Are You?", quizType: .character, questions: [
            Question(text: "Which is your favourite genre?", type: .multipleChoice, possibleAnswers: [
                
                Answer(text: "Fantasy", correspondingResult: ResultType.bus),
                Answer(text: "Action", correspondingResult: ResultType.motorcycle),
                Answer(text: "Comedy", correspondingResult: ResultType.car),
                Answer(text: "Romance", correspondingResult: ResultType.bike)
            ]),
            Question(text: "How would your friends describe you?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Reliable", correspondingResult: ResultType.car),
                Answer(text: "Adventurous", correspondingResult: ResultType.motorcycle),
                Answer(text: "Calm", correspondingResult: ResultType.bike),
                Answer(text: "Caring", correspondingResult: ResultType.bus)
            ]),
            Question(text: "Indoors or Outdoors?", type: .ranged, possibleAnswers: [
                Answer(text: "Indoors", correspondingResult: ResultType.car),
                Answer(text: "Slightly Indoors", correspondingResult: ResultType.bus),
                Answer(text: "Slightly Outdoors", correspondingResult: ResultType.ship),
                Answer(text: "Outdoors", correspondingResult: ResultType.helicopter)
            ]),
            Question(text: "Which type of music do you prefer?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Rock", correspondingResult: ResultType.motorcycle),
                Answer(text: "Pop", correspondingResult: ResultType.car),
                Answer(text: "Electronic", correspondingResult: ResultType.helicopter),
                Answer(text: "Classical", correspondingResult: ResultType.ship)
            ]),
            Question(text: "What's your ideal weekend getaway?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Camping in the mountains", correspondingResult: ResultType.bike),
                Answer(text: "Luxury resort by the beach", correspondingResult: ResultType.ship),
                Answer(text: "Exploring a bustling city", correspondingResult: ResultType.bus),
                Answer(text: "Quiet cabin in the woods", correspondingResult: ResultType.car)
            ]),
            Question(text: "Sweet or Spicy?", type: .ranged, possibleAnswers: [
                Answer(text: "Sweet", correspondingResult: ResultType.bus),
                Answer(text: "Slightly Sweet", correspondingResult: ResultType.helicopter),
                Answer(text: "Slightly Spicy", correspondingResult: ResultType.ship),
                Answer(text: "Spicy", correspondingResult: ResultType.motorcycle)
            ]),
            Question(text: "What type of weather do you prefer?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Sunny and warm", correspondingResult: ResultType.car),
                Answer(text: "Rainy and cozy", correspondingResult: ResultType.bus),
                Answer(text: "Snowy and cold", correspondingResult: ResultType.ship),
                Answer(text: "Breezy and mild", correspondingResult: ResultType.helicopter)
            ])
            
        ]),
        
        // Fruit Quiz
        Quiz(id: 2, resultGroup: .fruit, title: "What Fruit Are You?", quizType: .character, questions: [
            Question(text: "Tea or Coffee?", type: .ranged, possibleAnswers: [
                Answer(text: "Tea", correspondingResult: ResultType.pineapple),
                Answer(text: "Slightly Tea", correspondingResult: ResultType.apple),
                Answer(text: "Slightly Coffee", correspondingResult: ResultType.banana),
                Answer(text: "Coffee", correspondingResult: ResultType.mango)
            ]),
            Question(text: "Which outdoor activity do you enjoy the most?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Picnicking in the park", correspondingResult: ResultType.apple),
                Answer(text: "Going out with friends", correspondingResult: ResultType.orange),
                Answer(text: "Getting food", correspondingResult: ResultType.strawberry),
                Answer(text: "Relaxing at the countryside", correspondingResult: ResultType.banana)
            ]),
            Question(text: "Morning or Night person?", type: .ranged, possibleAnswers: [
                Answer(text: "Morning person", correspondingResult: ResultType.orange),
                Answer(text: "Slightly Morning person", correspondingResult: ResultType.apple),
                Answer(text: "Slightly Night person", correspondingResult: ResultType.banana),
                Answer(text: "Night person", correspondingResult: ResultType.strawberry)
            ]),
            Question(text: "How do you like to spend your evenings?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Baking a treat", correspondingResult: ResultType.apple),
                Answer(text: "Dancing and partying", correspondingResult: ResultType.mango),
                Answer(text: "Watching a movie", correspondingResult: ResultType.orange),
                Answer(text: "Reading a book", correspondingResult: ResultType.strawberry)
            ]),
            Question(text: "What's your favourite way to stay active?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Going for a run", correspondingResult: ResultType.banana),
                Answer(text: "Yoga and meditation", correspondingResult: ResultType.pineapple),
                Answer(text: "Playing team sports", correspondingResult: ResultType.apple),
                Answer(text: "Hiking and exploring nature", correspondingResult: ResultType.mango)
            ]),
        ]),
        
        // Disney Princess Quiz
        Quiz(id: 3, resultGroup: .disneyPrincess, title: "Which Disney Princess Are You?", quizType: .character, questions: [
            Question(text: "How do you face challenges?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Adapt and overcome", correspondingResult: ResultType.moana),
                Answer(text: "Stay determined", correspondingResult: ResultType.rapunzel),
                Answer(text: "Be courageous", correspondingResult: ResultType.mulan),
                Answer(text: "Embrace my strength", correspondingResult: ResultType.elsa)
            ]),
            Question(text: "What do you want to do the most?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Travel the world", correspondingResult: ResultType.moana),
                Answer(text: "Gain knowledge", correspondingResult: ResultType.belle),
                Answer(text: "Make others proud of me", correspondingResult: ResultType.mulan),
                Answer(text: "Understand my identity", correspondingResult: ResultType.rapunzel)
            ]),
            Question(text: "What's your Greatest Fear?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Losing family", correspondingResult: ResultType.moana),
                Answer(text: "Isolation", correspondingResult: ResultType.ariel),
                Answer(text: "Being judged", correspondingResult: ResultType.belle),
                Answer(text: "Failure", correspondingResult: ResultType.elsa),
            ]),
            Question(text: "City or Countryside?", type: .ranged, possibleAnswers: [
                Answer(text: "City", correspondingResult: ResultType.ariel),
                Answer(text: "Slightly City", correspondingResult: ResultType.rapunzel),
                Answer(text: "Slightly Countryside", correspondingResult: ResultType.mulan),
                Answer(text: "Countryside", correspondingResult: ResultType.belle)
            ]),
            Question(text: "Qualities of Ideal Friend?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Fearless & bold", correspondingResult: ResultType.moana),
                Answer(text: "Curious & open", correspondingResult: ResultType.ariel),
                Answer(text: "Warm & empathetic", correspondingResult: ResultType.belle),
                Answer(text: "Loyal & dedicated", correspondingResult: ResultType.mulan)
            ]),
            Question(text: "Structure or Spontaneity?", type: .ranged, possibleAnswers: [
                Answer(text: "Structure", correspondingResult: ResultType.elsa),
                Answer(text: "Slightly Structure", correspondingResult: ResultType.belle),
                Answer(text: "Slightly Spontaneity", correspondingResult: ResultType.rapunzel),
                Answer(text: "Spontaneity", correspondingResult: ResultType.ariel)
            ]),
            Question(text: "What is Your Favourite Element?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Fire", correspondingResult: ResultType.ariel),
                Answer(text: "Water", correspondingResult: ResultType.moana),
                Answer(text: "Air", correspondingResult: ResultType.rapunzel),
                Answer(text: "Earth", correspondingResult: ResultType.belle)
            ]),
            Question(text: "What is Your Spirit Animal?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Dolphin", correspondingResult: ResultType.ariel),
                Answer(text: "Squirrel", correspondingResult: ResultType.belle),
                Answer(text: "Falcon", correspondingResult: ResultType.mulan),
                Answer(text: "Wolf", correspondingResult: ResultType.elsa)
            ])
        ]),
        
        // Mental Age
        Quiz(id: 4, resultGroup: .mentalAge, title: "What’s Your Mental Age?", quizType: .character, questions: [
            Question(text: "What is your favourite food?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Burger", correspondingResult: ResultType.child),
                Answer(text: "Steak", correspondingResult: ResultType.senior),
                Answer(text: "Chicken Nuggets", correspondingResult: ResultType.baby),
                Answer(text: "Salad", correspondingResult: ResultType.adult)
            ]),
            Question(text: "Early Bird or Night Owl?", type: .ranged, possibleAnswers: [
                Answer(text: "Early Bird", correspondingResult: ResultType.child),
                Answer(text: "Slightly Early Bird", correspondingResult: ResultType.baby),
                Answer(text: "Slightly Night Owl", correspondingResult: ResultType.senior),
                Answer(text: "Night Owl", correspondingResult: ResultType.adult)
            ]),
            Question(text: "What is your favourite pattern?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Stripes", correspondingResult: ResultType.child),
                Answer(text: "Solid Color", correspondingResult: ResultType.adult),
                Answer(text: "Polka Dots", correspondingResult: ResultType.baby),
                Answer(text: "Plaid", correspondingResult: ResultType.senior)
            ]),
            Question(text: "What would you do with a million dollars?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Invest", correspondingResult: ResultType.adult),
                Answer(text: "Buy a house", correspondingResult: ResultType.child),
                Answer(text: "Buy lottery tickets", correspondingResult: ResultType.senior),
                Answer(text: "Donate", correspondingResult: ResultType.baby)
            ]),
            Question(text: "What is your favourite subject?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Math", correspondingResult: ResultType.baby),
                Answer(text: "Art", correspondingResult: ResultType.child),
                Answer(text: "History", correspondingResult: ResultType.senior),
                Answer(text: "Technology", correspondingResult: ResultType.adult)
            ]),
            Question(text: "What's your favourite ice cream flavor?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Strawberry", correspondingResult: ResultType.baby),
                Answer(text: "Vanilla", correspondingResult: ResultType.senior),
                Answer(text: "Chocolate", correspondingResult: ResultType.adult),
                Answer(text: "Cookies & Cream", correspondingResult: ResultType.child)
            ])
        ]),
        
        // Bear Quiz
        Quiz(id: 5, resultGroup: .bear, title: "What Type of Bear Are You?", quizType: .character, questions: [
            Question(text: "What's your favourite type of pizza topping?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Pepperoni", correspondingResult: ResultType.brownBear),
                Answer(text: "Extra Cheese", correspondingResult: ResultType.koala),
                Answer(text: "Pineapple", correspondingResult: ResultType.panda),
                Answer(text: "Mushroom", correspondingResult: ResultType.polarBear)
            ]),
            Question(text: "Which celebrity would you like to meet?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Adele", correspondingResult: ResultType.polarBear),
                Answer(text: "Taylor Swift", correspondingResult: ResultType.panda),
                Answer(text: "Ed Sheeran", correspondingResult: ResultType.koala),
                Answer(text: "Shawn Mendes", correspondingResult: ResultType.brownBear)
            ]),
            Question(text: "How lazy are you?", type: .ranged, possibleAnswers: [
                Answer(text: "Not Lazy", correspondingResult: ResultType.brownBear),
                Answer(text: "Slightly Not Lazy", correspondingResult: ResultType.polarBear),
                Answer(text: "Slightly very lazy", correspondingResult: ResultType.koala),
                Answer(text: "Very Lazy", correspondingResult: ResultType.panda)
            ]),
            Question(text: "What is your favourite sense?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Taste", correspondingResult: ResultType.brownBear),
                Answer(text: "Smell", correspondingResult: ResultType.polarBear),
                Answer(text: "Sight", correspondingResult: ResultType.panda),
                Answer(text: "Hearing", correspondingResult: ResultType.koala)
            ]),
            Question(text: "When do you like to go grocery shopping?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "First thing in the morning", correspondingResult: ResultType.brownBear),
                Answer(text: "Lunch hour", correspondingResult: ResultType.polarBear),
                Answer(text: "Right before closing", correspondingResult: ResultType.koala),
                Answer(text: "Never", correspondingResult: ResultType.panda)
            ]),
            Question(text: "Which planet would you visit?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Mars", correspondingResult: ResultType.brownBear),
                Answer(text: "Saturn", correspondingResult: ResultType.koala),
                Answer(text: "Jupiter", correspondingResult: ResultType.polarBear),
                Answer(text: "Venus", correspondingResult: ResultType.panda)
            ]),
            Question(text: "Which board game do you want to play?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Monopoly", correspondingResult: ResultType.brownBear),
                Answer(text: "Scrabble", correspondingResult: ResultType.koala),
                Answer(text: "Chess", correspondingResult: ResultType.polarBear),
                Answer(text: "Game of Life", correspondingResult: ResultType.panda)
            ])
        ]),
        
        Quiz(id: 6, resultGroup: .element, title: "Which Element Are You?", quizType: .character, questions: [
            Question(text: "What Climate Do You Prefer?", type: .ranged, possibleAnswers: [
                Answer(text: "Hot", correspondingResult: ResultType.fire),
                Answer(text: "Slightly hot", correspondingResult: ResultType.water),
                Answer(text: "Slightly cold", correspondingResult: ResultType.nature),
                Answer(text: "Cold", correspondingResult: ResultType.ice)
            ]),
            Question(text: "How Do You Respond To Conflict", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Mediate", correspondingResult: ResultType.water),
                Answer(text: "Avoid", correspondingResult: ResultType.nature),
                Answer(text: "Reflect", correspondingResult: ResultType.ice),
                Answer(text: "Confront", correspondingResult: ResultType.fire)
            ]),
            Question(text: "Which Of These Describe You Best?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Generous", correspondingResult: ResultType.nature),
                Answer(text: "Patient", correspondingResult: ResultType.ice),
                Answer(text: "Passionate", correspondingResult: ResultType.fire),
                Answer(text: "Adaptable", correspondingResult: ResultType.water)
            ]),
            Question(text: "What Is The Most Important For Decision making?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Analysis", correspondingResult: ResultType.ice),
                Answer(text: "Intuition", correspondingResult: ResultType.fire),
                Answer(text: "Logic", correspondingResult: ResultType.water),
                Answer(text: "Empathy", correspondingResult: ResultType.nature)
            ]),
            Question(text: "Which one are you?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Leader", correspondingResult: ResultType.fire),
                Answer(text: "Harmonizer", correspondingResult: ResultType.ice),
                Answer(text: "Observer", correspondingResult: ResultType.water),
                Answer(text: "Listener", correspondingResult: ResultType.nature)
            ]),
            Question(text: "What Is Your Creative Style?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Versatile", correspondingResult: ResultType.nature),
                Answer(text: "Practical", correspondingResult: ResultType.water),
                Answer(text: "Thoughtful", correspondingResult: ResultType.ice),
                Answer(text: "Fiery", correspondingResult: ResultType.fire)
            ]),
        ]),
        Quiz(id: 7, resultGroup: .weather, title: "Which Weather Are You?", quizType: .character, questions: [
            Question(text: "How Do You React To Challenges?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Seek Opportunities", correspondingResult: ResultType.rainbow),
                Answer(text: "Stay Positive", correspondingResult: ResultType.sunny),
                Answer(text: "Adapt Calmly", correspondingResult: ResultType.cloudy),
                Answer(text: "Stick to Routine", correspondingResult: ResultType.rainy)
            ]),
            Question(text: "Choose a Color:", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Sunny Yellow", correspondingResult: ResultType.sunny),
                Answer(text: "Gentle Gray", correspondingResult: ResultType.cloudy),
                Answer(text: "Soothing Blue", correspondingResult: ResultType.rainy),
                Answer(text: "Stormy Blue-Gray", correspondingResult: ResultType.thunderstorm)
            ]),
            Question(text: "What Is Your Approach To Making Friends?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Casual", correspondingResult: ResultType.cloudy),
                Answer(text: "Cautious", correspondingResult: ResultType.rainy),
                Answer(text: "Enthusiastic", correspondingResult: ResultType.thunderstorm),
                Answer(text: "Humorous", correspondingResult: ResultType.rainbow)
            ]),
            Question(text: "Which is Your Ideal Foodie Adventure?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "A DIY cooking class", correspondingResult: ResultType.rainy),
                Answer(text: "A gourmet five-course meal", correspondingResult: ResultType.thunderstorm),
                Answer(text: "Exotic street food", correspondingResult: ResultType.rainbow),
                Answer(text: "My Favourite Comfort food", correspondingResult: ResultType.sunny)
            ]),
            Question(text: "What Is Your Type of Humor?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Sarcastic", correspondingResult: ResultType.thunderstorm),
                Answer(text: "Playful", correspondingResult: ResultType.rainbow),
                Answer(text: "Cheerful", correspondingResult: ResultType.sunny),
                Answer(text: "Witty", correspondingResult: ResultType.cloudy)
            ]),
            Question(text: "What is Your Favourite Type of Candy?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Sour Candy", correspondingResult: ResultType.rainbow),
                Answer(text: "Chocolate", correspondingResult: ResultType.sunny),
                Answer(text: "Hard Candy", correspondingResult: ResultType.cloudy),
                Answer(text: "Gummy", correspondingResult: ResultType.rainy)
            ]),
        ]),
        
        Quiz(id: 8, resultGroup: .color, title: "What Color Are You?", quizType: .character, questions: [
            Question(text: "What Is the Best Way To Spend a Rainy Day?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Read Books", correspondingResult: ResultType.red),
                Answer(text: "Watch TV", correspondingResult: ResultType.purple),
                Answer(text: "Bake or Cook", correspondingResult: ResultType.blue),
                Answer(text: "Play in the Rain", correspondingResult: ResultType.green)
            ]),
            Question(text: "Hot or Cold Showers?", type: .ranged, possibleAnswers: [
                Answer(text: "Hot Showers", correspondingResult: ResultType.purple),
                Answer(text: "Slightly Hot Showers", correspondingResult: ResultType.blue),
                Answer(text: "Slightly Cold Showers", correspondingResult: ResultType.green),
                Answer(text: "Cold Showers", correspondingResult: ResultType.yellow)
            ]),
            Question(text: "What Is Your Favourite Fast Food Chain?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "McDonald's", correspondingResult: ResultType.red),
                Answer(text: "Subway", correspondingResult: ResultType.green),
                Answer(text: "KFC", correspondingResult: ResultType.yellow),
                Answer(text: "Taco Bell", correspondingResult: ResultType.orange)
            ]),
            Question(text: "Brain or Brawn?", type: .ranged, possibleAnswers: [
                Answer(text: "Brain", correspondingResult: ResultType.white),
                Answer(text: "Slightly Brain", correspondingResult: ResultType.black),
                Answer(text: "Slightly Brawn", correspondingResult: ResultType.red),
                Answer(text: "Brawn", correspondingResult: ResultType.purple)
            ]),
            Question(text: "What’s your Favourite Karaoke Song?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Call Me Maybe", correspondingResult: ResultType.red),
                Answer(text: "Fireflies", correspondingResult: ResultType.yellow),
                Answer(text: "I Want It That Way", correspondingResult: ResultType.brown),
                Answer(text: "Love Story", correspondingResult: ResultType.white)
            ]),
            Question(text: "Which Skill Would You Want?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Multilingual Fluency", correspondingResult: ResultType.yellow),
                Answer(text: "Culinary expertise", correspondingResult: ResultType.orange),
                Answer(text: "Musical Virtuosity", correspondingResult: ResultType.brown),
                Answer(text: "Elite Athleticism", correspondingResult: ResultType.white)
            ]),
            Question(text: "What is Your Favourite Camping Activity?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Exploring", correspondingResult: ResultType.orange),
                Answer(text: "Cooking", correspondingResult: ResultType.brown),
                Answer(text: "Star-gazing", correspondingResult: ResultType.white),
                Answer(text: "Fishing", correspondingResult: ResultType.black)
            ]),
            Question(text: "Movie or Books?", type: .ranged, possibleAnswers: [
                Answer(text: "Movie", correspondingResult: ResultType.brown),
                Answer(text: "Slightly Movie", correspondingResult: ResultType.red),
                Answer(text: "Slightly Books", correspondingResult: ResultType.black),
                Answer(text: "Book", correspondingResult: ResultType.white)
            ]),
            
            Question(text: "What Type of Sky Looks The Best?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Blue Sky", correspondingResult: ResultType.orange),
                Answer(text: "Sunset Sky", correspondingResult: ResultType.brown),
                Answer(text: "Twilight Sky", correspondingResult: ResultType.white),
                Answer(text: "Light Sky", correspondingResult: ResultType.black)
            ]),
            
        ]),
        Quiz(id: 9, resultGroup: .fastFood, title: "What Fast Food Are You?", quizType: .character, questions: [
            Question(text: "What Type of Music do you Prefer?", type: .ranged, possibleAnswers: [
                Answer(text: "Energetic", correspondingResult: ResultType.burger),
                Answer(text: "Slightly Energetic", correspondingResult: ResultType.frenchFries),
                Answer(text: "Slightly Calm", correspondingResult: ResultType.hotDog),
                Answer(text: "Calm", correspondingResult: ResultType.pizza)
            ]),
            Question(text: "Which Type of Sports Are More Fun?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Water", correspondingResult: ResultType.hotDog),
                Answer(text: "Winter", correspondingResult: ResultType.pizza),
                Answer(text: "Extreme", correspondingResult: ResultType.frenchFries),
                Answer(text: "Ball", correspondingResult: ResultType.burger)
            ]),
            Question(text: "How Do You Travel To Close Places?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "by Foot", correspondingResult: ResultType.hotDog),
                Answer(text: "Bike", correspondingResult: ResultType.pizza),
                Answer(text: "Skateboard", correspondingResult: ResultType.frenchFries),
                Answer(text: "Drive", correspondingResult: ResultType.burger)
            ]),
            Question(text: "What is Your Favourite Stationary?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Pencil", correspondingResult: ResultType.burger),
                Answer(text: "Pen", correspondingResult: ResultType.pizza),
                Answer(text: "Ruler", correspondingResult: ResultType.frenchFries),
                Answer(text: "Crayon", correspondingResult: ResultType.hotDog)
            ]),
            Question(text: "What Is Your Humor?", type: .ranged, possibleAnswers: [
                Answer(text: "Dark", correspondingResult: ResultType.pizza),
                Answer(text: "Slightly Dark", correspondingResult: ResultType.burger),
                Answer(text: "Slightly Light", correspondingResult: ResultType.hotDog),
                Answer(text: "Light", correspondingResult: ResultType.frenchFries)
            ]),
        ]),
        Quiz(id: 10, resultGroup: .dessert, title: "What Dessert Are You?", quizType: .character, questions: [
            Question(text: "Which Cartoon Character Do You Like Most?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Spongebob", correspondingResult: ResultType.cupcake),
                Answer(text: "Pink Panther", correspondingResult: ResultType.doughnut),
                Answer(text: "Snoopy", correspondingResult: ResultType.cookie),
                Answer(text: "Winnie the Pooh", correspondingResult: ResultType.pie)
            ]),
            Question(text: "What Pet Do You Want Most?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Dog", correspondingResult: ResultType.cookie),
                Answer(text: "Cat", correspondingResult: ResultType.cupcake),
                Answer(text: "Bird", correspondingResult: ResultType.pie),
                Answer(text: "Fish", correspondingResult: ResultType.iceCream)
            ]),
            Question(text: "What is the Most Important Thing in a Good Relationship?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Trust", correspondingResult: ResultType.cupcake),
                Answer(text: "Respect", correspondingResult: ResultType.pie),
                Answer(text: "Communication", correspondingResult: ResultType.iceCream),
                Answer(text: "Connection", correspondingResult: ResultType.doughnut)
            ]),
            Question(text: "How Do You Like Your Music?", type: .ranged, possibleAnswers: [
                Answer(text: "Loud", correspondingResult: ResultType.iceCream),
                Answer(text: "Slightly Loud", correspondingResult: ResultType.doughnut),
                Answer(text: "Slightly Quiet", correspondingResult: ResultType.cookie),
                Answer(text: "Quiet", correspondingResult: ResultType.cupcake)
            ]),
            Question(text: "How Many Siblings Do You Prefer?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "None", correspondingResult: ResultType.cupcake),
                Answer(text: "One", correspondingResult: ResultType.pie),
                Answer(text: "Two", correspondingResult: ResultType.iceCream),
                Answer(text: "Three or More", correspondingResult: ResultType.doughnut)
            ]),
            Question(text: "How Much Do You Like Playing Sports?", type: .ranged, possibleAnswers: [
                Answer(text: "Hate it", correspondingResult: ResultType.iceCream),
                Answer(text: "Slightly hate it", correspondingResult: ResultType.doughnut),
                Answer(text: "Slightly love it", correspondingResult: ResultType.cookie),
                Answer(text: "Love it", correspondingResult: ResultType.pie)
            ]),
        ]),
        Quiz(id: 11, resultGroup: .bread, title: "What Bread Are You?", quizType: .character, questions: [
            Question(text: "Which Of These Colors Are Best For Clothing?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Black", correspondingResult: ResultType.pretzel),
                Answer(text: "Grey", correspondingResult: ResultType.baguette),
                Answer(text: "Navy Blue", correspondingResult: ResultType.whiteBread),
                Answer(text: "White", correspondingResult: ResultType.bagel)
            ]),
            Question(text: "What Food Is Best?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Barbecue", correspondingResult: ResultType.baguette),
                Answer(text: "Seafood", correspondingResult: ResultType.whiteBread),
                Answer(text: "Vegetarian", correspondingResult: ResultType.bagel),
                Answer(text: "Dessert", correspondingResult: ResultType.croissant)
            ]),
            Question(text: "What Profession would You Want?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Doctor", correspondingResult: ResultType.whiteBread),
                Answer(text: "Singer", correspondingResult: ResultType.bagel),
                Answer(text: "Scientist", correspondingResult: ResultType.croissant),
                Answer(text: "Astronaut", correspondingResult: ResultType.pretzel)
            ]),
            Question(text: "What Cold Dessert is the Best?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Ice Cream", correspondingResult: ResultType.bagel),
                Answer(text: "Sorbet", correspondingResult: ResultType.croissant),
                Answer(text: "Gelato", correspondingResult: ResultType.pretzel),
                Answer(text: "Frozen Yogurt", correspondingResult: ResultType.baguette)
            ]),
            Question(text: "Your Opinion on Reading?", type: .ranged, possibleAnswers: [
                Answer(text: "Hate it", correspondingResult: ResultType.croissant),
                Answer(text: "Slightly Hate it", correspondingResult: ResultType.pretzel),
                Answer(text: "Slightly Love it", correspondingResult: ResultType.baguette),
                Answer(text: "Love it", correspondingResult: ResultType.whiteBread)
            ]),
            Question(text: "Which Do You Want Most?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Fame", correspondingResult: ResultType.croissant),
                Answer(text: "Power", correspondingResult: ResultType.pretzel),
                Answer(text: "Money", correspondingResult: ResultType.baguette),
                Answer(text: "Love", correspondingResult: ResultType.whiteBread)
            ]),
        ]),
        Quiz(id: 12, resultGroup: .vegetable, title: "What Vegetable Are You?", quizType: .character, questions: [
            Question(text: "How Do You Like To Write Notes?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Pencil", correspondingResult: ResultType.broccoli),
                Answer(text: "Mechanical Pencil", correspondingResult: ResultType.corn),
                Answer(text: "Pen", correspondingResult: ResultType.sweetPotato),
                Answer(text: "Marker", correspondingResult: ResultType.chiliPepper)
            ]),
            Question(text: "What Fruit Tastes Best?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Apple", correspondingResult: ResultType.corn),
                Answer(text: "Banana", correspondingResult: ResultType.sweetPotato),
                Answer(text: "Orange", correspondingResult: ResultType.chiliPepper),
                Answer(text: "Strawberry", correspondingResult: ResultType.onion)
            ]),
            Question(text: "What’s Your Favourite Condiment?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Ketchup", correspondingResult: ResultType.sweetPotato),
                Answer(text: "Hot Sauce", correspondingResult: ResultType.chiliPepper),
                Answer(text: "Soy Sauce", correspondingResult: ResultType.onion),
                Answer(text: "Barbeque Sauce", correspondingResult: ResultType.potato)
            ]),
            Question(text: "Would you rather be hungry or tired", type: .ranged, possibleAnswers: [
                Answer(text: "Hungry", correspondingResult: ResultType.chiliPepper),
                Answer(text: "Slightly hungry", correspondingResult: ResultType.onion),
                Answer(text: "Slightly tired", correspondingResult: ResultType.potato),
                Answer(text: "Tired", correspondingResult: ResultType.broccoli)
            ]),
            Question(text: "What Color is Math?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Blue", correspondingResult: ResultType.sweetPotato),
                Answer(text: "Yellow", correspondingResult: ResultType.chiliPepper),
                Answer(text: "Red", correspondingResult: ResultType.onion),
                Answer(text: "Orange", correspondingResult: ResultType.potato)
            ]),
            Question(text: "What’s your Favourite Comfort Food?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Mac N Cheese", correspondingResult: ResultType.onion),
                Answer(text: "Mashed Potatoes", correspondingResult: ResultType.potato),
                Answer(text: "Grilled Cheese", correspondingResult: ResultType.broccoli),
                Answer(text: "Ice Cream", correspondingResult: ResultType.corn)
            ]),
        ]),
        
        Quiz(id: 13, resultGroup: .stationary, title: "What Stationary Are You?", quizType: .character, questions: [
            
            Question(text: "Which Flower Looks Best?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Rose", correspondingResult: ResultType.ruler),
                Answer(text: "Tulip", correspondingResult: ResultType.pencil),
                Answer(text: "Lily", correspondingResult: ResultType.scissors),
                Answer(text: "Daisy", correspondingResult: ResultType.crayon)
            ]),
            Question(text: "What Candy Flavour Tastes Best?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Fruit", correspondingResult: ResultType.pencil),
                Answer(text: "Chocolate", correspondingResult: ResultType.scissors),
                Answer(text: "Mint", correspondingResult: ResultType.crayon),
                Answer(text: "Caramel", correspondingResult: ResultType.pen)
            ]),
            Question(text: "What Apple Product Do You Like The Most?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "iPhone", correspondingResult: ResultType.pen),
                Answer(text: "iPad", correspondingResult: ResultType.ruler),
                Answer(text: "MacBook", correspondingResult: ResultType.pencil),
                Answer(text: "AirPods", correspondingResult: ResultType.scissors)
            ]),
            Question(text: "What Juice Flavor Tastes Best?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Apple", correspondingResult: ResultType.scissors),
                Answer(text: "Orange", correspondingResult: ResultType.crayon),
                Answer(text: "Mango", correspondingResult: ResultType.pen),
                Answer(text: "Raspberry", correspondingResult: ResultType.ruler)
            ]),
            Question(text: "How Much Do You Like To Draw?", type: .ranged, possibleAnswers: [
                Answer(text: "Hate it", correspondingResult: ResultType.crayon),
                Answer(text: "Slightly hate it", correspondingResult: ResultType.pen),
                Answer(text: "Slightly love it", correspondingResult: ResultType.ruler),
                Answer(text: "Love it", correspondingResult: ResultType.pencil)
            ]),
            Question(text: "What Type of Shoe is the Best?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Sneakers", correspondingResult: ResultType.pen),
                Answer(text: "Boots", correspondingResult: ResultType.ruler),
                Answer(text: "Sandals", correspondingResult: ResultType.pencil),
                Answer(text: "High Heels", correspondingResult: ResultType.scissors)
            ]),
        ]),
        
        Quiz(id: 14, resultGroup: .animal, title: "What Math Operation Are You?", quizType: .character, questions: [
            Question(text: "What is the Best Type Of Pizza?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Margherita", correspondingResult: ResultType.addition),
                Answer(text: "Pepperoni", correspondingResult: ResultType.subtraction),
                Answer(text: "Hawaiian", correspondingResult: ResultType.division),
                Answer(text: "Supreme", correspondingResult: ResultType.multiplication)
            ]),
            Question(text: "What are the Best Type of Games?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Video Games", correspondingResult: ResultType.subtraction),
                Answer(text: "Board Games", correspondingResult: ResultType.division),
                Answer(text: "Card Games", correspondingResult: ResultType.multiplication),
                Answer(text: "Puzzles", correspondingResult: ResultType.addition)
            ]),
            Question(text: "What is the Best Breakfast?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Cereal with Milk", correspondingResult: ResultType.division),
                Answer(text: "Eggs", correspondingResult: ResultType.multiplication),
                Answer(text: "Toast", correspondingResult: ResultType.addition),
                Answer(text: "Oatmeal", correspondingResult: ResultType.subtraction)
            ]),
            Question(text: "What is The Tastiest Beverage?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Coffee", correspondingResult: ResultType.multiplication),
                Answer(text: "Tea", correspondingResult: ResultType.addition),
                Answer(text: "Orange Juice", correspondingResult: ResultType.subtraction),
                Answer(text: "Hot Chocolate", correspondingResult: ResultType.division)
            ]),
            Question(text: "What Type Of Song Lyrics Do You Like Most?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Love & Romantic", correspondingResult: ResultType.addition),
                Answer(text: "Social & political", correspondingResult: ResultType.subtraction),
                Answer(text: "Self Expression", correspondingResult: ResultType.division),
                Answer(text: "Story Telling", correspondingResult: ResultType.multiplication)
            ]),
            Question(text: "What Type Of Hats Are the Most Stylish?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Baseball Caps", correspondingResult: ResultType.addition),
                Answer(text: "Fedoras", correspondingResult: ResultType.subtraction),
                Answer(text: "Bucket Hats", correspondingResult: ResultType.division),
                Answer(text: "Beanies", correspondingResult: ResultType.multiplication)
            ]),
        ]),
        Quiz(id: 15, resultGroup: .flower, title: "What Flower Are You?", quizType: .character, questions: [
            Question(text: "What Color Palette Do You Prefer?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Vibrant", correspondingResult: ResultType.tulip),
                Answer(text: "Romantic", correspondingResult: ResultType.rose),
                Answer(text: "Pastels", correspondingResult: ResultType.cherryBlossom),
                Answer(text: "Simple", correspondingResult: ResultType.sunflower)
            ]),
            Question(text: "What Is Your Social Style?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Deep", correspondingResult: ResultType.rose),
                Answer(text: "Observant", correspondingResult: ResultType.cherryBlossom),
                Answer(text: "Friendly", correspondingResult: ResultType.tulip),
                Answer(text: "Energetic", correspondingResult: ResultType.sunflower)
            ]),
            Question(text: "Who Are You In Social Situations?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Life of the party", correspondingResult: ResultType.cherryBlossom),
                Answer(text: "Social chameleon", correspondingResult: ResultType.tulip),
                Answer(text: "Thoughtful listener", correspondingResult: ResultType.sunflower),
                Answer(text: "Mysterious lurker", correspondingResult: ResultType.rose)
            ]),
            Question(text: "What Word Resonates Most?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Simplicity", correspondingResult: ResultType.sunflower),
                Answer(text: "Diversity", correspondingResult: ResultType.tulip),
                Answer(text: "Romance", correspondingResult: ResultType.rose),
                Answer(text: "Nurturing", correspondingResult: ResultType.cherryBlossom)
            ]),
            Question(text: "Would You Rather Explore:", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Space", correspondingResult: ResultType.cherryBlossom),
                Answer(text: "Sea", correspondingResult: ResultType.tulip),
                Answer(text: "Forest", correspondingResult: ResultType.rose),
                Answer(text: "Dessert", correspondingResult: ResultType.sunflower)
            ]),
            Question(text: "Where Is Your Ideal Weekend Getaway?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Countryside", correspondingResult: ResultType.rose),
                Answer(text: "Village", correspondingResult: ResultType.cherryBlossom),
                Answer(text: "Coastal", correspondingResult: ResultType.sunflower),
                Answer(text: "City", correspondingResult: ResultType.tulip)
                
            ]),
        ]),
        Quiz(id: 16, resultGroup: .animal, title: "What Bathroom Item Are You?", quizType: .character, questions: [
            Question(text: "What do you like to do in your free time?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Clean your room", correspondingResult: ResultType.soap),
                Answer(text: "Watch TV", correspondingResult: ResultType.toiletPaper),
                Answer(text: "Explore new hobbies", correspondingResult: ResultType.bathtub),
                Answer(text: "Play sports", correspondingResult: ResultType.toothbrush)
            ]),
            Question(text: "How organized are you?", type: .ranged, possibleAnswers: [
                Answer(text: "Not Organized", correspondingResult: ResultType.bathtub),
                Answer(text: "Slightly Not Organized", correspondingResult: ResultType.soap),
                Answer(text: "Slightly Organized", correspondingResult: ResultType.toothbrush),
                Answer(text: "Very Organized", correspondingResult: ResultType.toiletPaper)
            ]),
            Question(text: "What is your favourite sport?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Soccer", correspondingResult: ResultType.toiletPaper),
                Answer(text: "Swimming", correspondingResult: ResultType.bathtub),
                Answer(text: "Basketball", correspondingResult: ResultType.soap),
                Answer(text: "Frisbee", correspondingResult: ResultType.toothbrush)
            ]),
            Question(text: "Which animal do you like?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Dog", correspondingResult: ResultType.toiletPaper),
                Answer(text: "Cat", correspondingResult: ResultType.soap),
                Answer(text: "Hamster", correspondingResult: ResultType.bathtub),
                Answer(text: "Snake", correspondingResult: ResultType.toothbrush)
            ]),
            Question(text: "What’s your favourite day of the week?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Monday", correspondingResult: ResultType.toiletPaper),
                Answer(text: "Friday", correspondingResult: ResultType.bathtub),
                Answer(text: "Saturday", correspondingResult: ResultType.soap),
                Answer(text: "Sunday", correspondingResult: ResultType.toothbrush)
            ]),
            Question(text: "Who’s your favourite Harry Potter character?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Harry Potter", correspondingResult: ResultType.toothbrush),
                Answer(text: "Hermione Granger", correspondingResult: ResultType.toiletPaper),
                Answer(text: "Ron Weasley", correspondingResult: ResultType.soap),
                Answer(text: "Snape", correspondingResult: ResultType.bathtub)
            ])
        ]),
        Quiz(id: 17, resultGroup: .animal, title: "What Ball Sport Are You?", quizType: .character, questions: [
            Question(text: "What do you value most in friendships?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Hanging out", correspondingResult: ResultType.basketball),
                Answer(text: "Improving together", correspondingResult: ResultType.tennis),
                Answer(text: "Supporting one another", correspondingResult: ResultType.volleyball),
                Answer(text: "Having fun", correspondingResult: ResultType.soccer)
            ]),
            Question(text: "What do you think is the #1 rule for success?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Collaboration", correspondingResult: ResultType.soccer),
                Answer(text: "Flawless execution", correspondingResult: ResultType.tennis),
                Answer(text: "Smart decision-making", correspondingResult: ResultType.football),
                Answer(text: "Unwavering dedication", correspondingResult: ResultType.volleyball)
            ]),
            Question(text: "How do you react to a challenge?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Ask for help", correspondingResult: ResultType.soccer),
                Answer(text: "Find a solution", correspondingResult: ResultType.tennis),
                Answer(text: "Cry", correspondingResult: ResultType.volleyball),
                Answer(text: "Run away", correspondingResult: ResultType.basketball)
            ]),
            Question(text: "What’s your favourite ride at a theme park?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Ferris Wheel", correspondingResult: ResultType.volleyball),
                Answer(text: "Game Booths", correspondingResult: ResultType.tennis),
                Answer(text: "Roller Coaster", correspondingResult: ResultType.football),
                Answer(text: "Bumper Cars", correspondingResult: ResultType.basketball)
            ]),
            Question(text: "Which word resonates with you the most?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Teamwork", correspondingResult: ResultType.volleyball),
                Answer(text: "Precision", correspondingResult: ResultType.basketball),
                Answer(text: "Strategy", correspondingResult: ResultType.football),
                Answer(text: "Passion", correspondingResult: ResultType.soccer)
            ]),
            
            Question(text: "What’s your favourite summertime activity?", type: .multipleChoice, possibleAnswers: [
                
                Answer(text: "Hiking", correspondingResult: ResultType.soccer),
                Answer(text: "Fishing", correspondingResult: ResultType.football),
                Answer(text: "Fruit-Picking", correspondingResult: ResultType.basketball),
                Answer(text: "Camping", correspondingResult: ResultType.volleyball)
            ]),
        ]),
        Quiz(id: 18, resultGroup: .insect, title: "What Insect Are You?", quizType: .character, questions: [
            Question(text: "What Does Your Weekend Look Like?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Sports", correspondingResult: ResultType.ant),
                Answer(text: "Creativity", correspondingResult: ResultType.butterfly),
                Answer(text: "Travel", correspondingResult: ResultType.bee),
                Answer(text: "Enjoying Content", correspondingResult: ResultType.ladybug)
            ]),
            Question(text: "Do You Tend to be High or Low Energy", type: .ranged, possibleAnswers: [
                Answer(text: "High Energy", correspondingResult: ResultType.bee),
                Answer(text: "Slightly High Energy", correspondingResult: ResultType.butterfly),
                Answer(text: "Slightly Low Energy", correspondingResult: ResultType.ant),
                Answer(text: "Low Energy", correspondingResult: ResultType.ladybug)
            ]),
            Question(text: "Who Are You In Parties?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Socialite", correspondingResult: ResultType.ladybug),
                Answer(text: "Foodie", correspondingResult: ResultType.bee),
                Answer(text: "Wallflower", correspondingResult: ResultType.ant),
                Answer(text: "Entertainer", correspondingResult: ResultType.butterfly)
            ]),
            Question(text: "Which Of These Senses Would You Rather Have Heightened?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Sight", correspondingResult: ResultType.butterfly),
                Answer(text: "Hearing", correspondingResult: ResultType.ladybug),
                Answer(text: "Taste", correspondingResult: ResultType.bee),
                Answer(text: "Smell", correspondingResult: ResultType.ant)
            ]),
            Question(text: "What Side Should Face The Bed?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Right side", correspondingResult: ResultType.butterfly),
                Answer(text: "Stomach", correspondingResult: ResultType.ladybug),
                Answer(text: "Left Side", correspondingResult: ResultType.bee),
                Answer(text: "Back", correspondingResult: ResultType.ant)
            ]),
            Question(text: "Which Instrument Group Sounds Best?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Woodwinds", correspondingResult: ResultType.butterfly),
                Answer(text: "Brass", correspondingResult: ResultType.ladybug),
                Answer(text: "Percussion", correspondingResult: ResultType.bee),
                Answer(text: "Strings", correspondingResult: ResultType.ant)
            ]),
        ]),
        Quiz(id: 19, resultGroup: .tree, title: "What Tree Are You?", quizType: .character, questions: [
            Question(text: "What is Your Favourite Weather?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Sunny", correspondingResult: ResultType.palmTree),
                Answer(text: "Cloudy", correspondingResult: ResultType.deciduousTree),
                Answer(text: "Rainy", correspondingResult: ResultType.evergreenTree),
                Answer(text: "Snowy", correspondingResult: ResultType.christmasTree)
            ]),
            Question(text: "Reading or Watching", type: .ranged, possibleAnswers: [
                Answer(text: "Reading", correspondingResult: ResultType.deciduousTree),
                Answer(text: "Slightly Reading", correspondingResult: ResultType.palmTree),
                Answer(text: "Slightly Watching", correspondingResult: ResultType.christmasTree),
                Answer(text: "Watching", correspondingResult: ResultType.evergreenTree)
            ]),
            Question(text: "Which Would You Ride?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Roller Coaster", correspondingResult: ResultType.evergreenTree),
                Answer(text: "Rocket", correspondingResult: ResultType.christmasTree),
                Answer(text: "Hot Air Balloon", correspondingResult: ResultType.palmTree),
                Answer(text: "Submarine", correspondingResult: ResultType.deciduousTree)
            ]),
            Question(text: "Which Of These Describe You Best?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Funny", correspondingResult: ResultType.palmTree),
                Answer(text: "Dark", correspondingResult: ResultType.evergreenTree),
                Answer(text: "Soothing", correspondingResult: ResultType.christmasTree),
                Answer(text: "Brave", correspondingResult: ResultType.deciduousTree)
            ]),
            Question(text: "Which Of These Taste Better?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Burgers", correspondingResult: ResultType.deciduousTree),
                Answer(text: "French Fries", correspondingResult: ResultType.evergreenTree),
                Answer(text: "Pizza", correspondingResult: ResultType.christmasTree),
                Answer(text: "Ice Cream", correspondingResult: ResultType.palmTree)
            ]),
            Question(text: "Which Is More Important When Choosing Clothes?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Protection", correspondingResult: ResultType.evergreenTree),
                Answer(text: "Modesty", correspondingResult: ResultType.palmTree),
                Answer(text: "Expression", correspondingResult: ResultType.christmasTree),
                Answer(text: "Functionality", correspondingResult: ResultType.deciduousTree)
            ]),
        ]),
        Quiz(id: 20, resultGroup: .outdoorActivity, title: "What’s Your Outdoor Activity?", quizType: .character, questions: [
            Question(text: "Which Mythical Creature Would You Want As Your Partner?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Dragon", correspondingResult: ResultType.swimming),
                Answer(text: "Phoenix", correspondingResult: ResultType.surfing),
                Answer(text: "Pegasus", correspondingResult: ResultType.rockClimbing),
                Answer(text: "Werewolf", correspondingResult: ResultType.biking)
            ]),
            Question(text: "Choose a scenery:", type: .ranged, possibleAnswers: [
                Answer(text: "Mountains", correspondingResult: ResultType.swimming),
                Answer(text: "Beaches", correspondingResult: ResultType.surfing),
                Answer(text: "Cliffs", correspondingResult: ResultType.rockClimbing),
                Answer(text: "Countryside", correspondingResult: ResultType.biking)
            ]),
            Question(text: "If You Were a Seashell, What Would Be Your Pattern?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Spiral", correspondingResult: ResultType.swimming),
                Answer(text: "Smooth and Rounded", correspondingResult: ResultType.surfing),
                Answer(text: "Angular and Unique", correspondingResult: ResultType.rockClimbing),
                Answer(text: "Textured and Edgy", correspondingResult: ResultType.biking)
            ]),
            Question(text: "How Do You Handle Heights?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Scared but can handle", correspondingResult: ResultType.swimming),
                Answer(text: "Fine with them", correspondingResult: ResultType.surfing),
                Answer(text: "Love a challenge", correspondingResult: ResultType.rockClimbing),
                Answer(text: "Prefer to stay low", correspondingResult: ResultType.biking)
            ]),
            Question(text: "Your Ideal Coastal Adventure Involves:", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Snorkeling in Coral Reefs", correspondingResult: ResultType.swimming),
                Answer(text: "Catching Waves on a Surfboard", correspondingResult: ResultType.surfing),
                Answer(text: "Scaling Seaside Cliffs", correspondingResult: ResultType.rockClimbing),
                Answer(text: "Coastal Biking Trails", correspondingResult: ResultType.biking)
            ]),
            Question(text: "Excitement or Calmness?", type: .ranged, possibleAnswers: [
                Answer(text: "Excitement", correspondingResult: ResultType.rockClimbing),
                Answer(text: "Slightly Excitement", correspondingResult: ResultType.surfing),
                Answer(text: "Slightly Calmness", correspondingResult: ResultType.biking),
                Answer(text: "Calmness", correspondingResult: ResultType.swimming)
            ]),
            Question(text: "Which Colour Palette Appeals to You the Most?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Azure Blue", correspondingResult: ResultType.swimming),
                Answer(text: "Sunset Orange", correspondingResult: ResultType.surfing),
                Answer(text: "Deep Sea Green", correspondingResult: ResultType.rockClimbing),
                Answer(text: "Sandy Beige", correspondingResult: ResultType.biking)
            ]),
            Question(text: "In a Fantastical World, Which Enchanted forest Would You Explore?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Mystic Grove of Whispers", correspondingResult: ResultType.swimming),
                Answer(text: "Eternal Flame Emberwood", correspondingResult: ResultType.surfing),
                Answer(text: "Lunar Cascade Shadowland", correspondingResult: ResultType.rockClimbing),
                Answer(text: "Sun-kissed Serenity Glade", correspondingResult: ResultType.biking)
            ]),
        ]),
        Quiz(id: 21, resultGroup: .breakfastFood, title: "What Breakfast Food Are You?", quizType: .character, questions: [
            Question(text: "Choose a Morning Activity:", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Morning jog", correspondingResult: ResultType.pancake),
                Answer(text: "Meditating", correspondingResult: ResultType.waffle),
                Answer(text: "Checking emails", correspondingResult: ResultType.breakfastWrap),
                Answer(text: "Reading a book", correspondingResult: ResultType.scrambledEgg)
            ]),
            Question(text: "Pick a Pancake Topping:", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Maple Syrup", correspondingResult: ResultType.pancake),
                Answer(text: "Fruit", correspondingResult: ResultType.breakfastWrap),
                Answer(text: "Chocolate Syrup", correspondingResult: ResultType.waffle),
                Answer(text: "No syrup", correspondingResult: ResultType.scrambledEgg)
            ]),
            Question(text: "Which Meditation Soundtrack Resonates with You?", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Nature Sounds", correspondingResult: ResultType.scrambledEgg),
                Answer(text: "Calming Instrumental Tunes", correspondingResult: ResultType.waffle),
                Answer(text: "Upbeat and Energizing Music", correspondingResult: ResultType.pancake),
                Answer(text: "Ambient Office Background", correspondingResult: ResultType.breakfastWrap)
            ]),
            Question(text: "Work Alone or With Others?", type: .ranged, possibleAnswers: [
                Answer(text: "Work Alone", correspondingResult: ResultType.breakfastWrap),
                Answer(text: "Slightly Work Alone", correspondingResult: ResultType.scrambledEgg),
                Answer(text: "Slightly Work With Others", correspondingResult: ResultType.waffle),
                Answer(text: "Work With Others", correspondingResult: ResultType.pancake)
            ]),
            Question(text: "Pick a Historical Period to Time Travel to:", type: .multipleChoice, possibleAnswers: [
                Answer(text: "Ancient Rome", correspondingResult: ResultType.breakfastWrap),
                Answer(text: "Medieval Europe", correspondingResult: ResultType.scrambledEgg),
                Answer(text: "Renaissance", correspondingResult: ResultType.waffle),
                Answer(text: "Wild West", correspondingResult: ResultType.pancake)
            ]),
        ]),
    ]
}
