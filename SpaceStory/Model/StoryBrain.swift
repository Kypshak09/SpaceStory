//
//  StoryBrain.swift
//  SpaceStory
//
//  Created by Amir Zhunussov on 05.07.2022.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    
    let questions = [
        Story(question: "You're alone in space and you have a rocketpack and a phone to call. What will you choose?", choice1: "Rocketpack", choice1Destination: 2, choice2: "phone", choice2Destination: 1),
        Story(question: "asasas", choice1: "asasas", choice1Destination: 2, choice2: "dsfks", choice2Destination: 3),
        Story(question: "yeah boy", choice1: "ksksk", choice1Destination: 5, choice2: "sjdakld", choice2Destination: 4),
        Story(question: "KAkak", choice1: "fkfjf", choice1Destination: 0, choice2: "kfjkfjf", choice2Destination: 0),
        Story(question: "ajdkkdj", choice1: "kfsjf", choice1Destination: 0, choice2: "jfsnfs", choice2Destination: 0),
        Story(question: "qiqiiq", choice1: "ksdkdk", choice1Destination: 0, choice2: "sdkk", choice2Destination: 0)
        
    ]
    
    func getQuestionTitle() -> String {
        return questions[storyNumber].question
    }
    func getChoice1() -> String {
        return questions[storyNumber].choice1
    }
    func getChoice2() -> String {
        return questions[storyNumber].choice2
    }
    
    mutating func nextQuestion(userChoice: String) {
        let currentQuestion = questions[storyNumber]
        if userChoice == currentQuestion.choice1 {
            storyNumber = currentQuestion.choice1Destination
        } else if userChoice == currentQuestion.choice2 {
            storyNumber = currentQuestion.choice2Destination
        }
    }
}
