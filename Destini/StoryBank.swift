//
//  StoryBank.swift
//  Destini
//
//  Created by Martin Demiddel on 27.11.17.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import Foundation

class StoryBank {
    var list = [Story]()
    
    init() {
        let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
        let answer1a = "I\'ll hop in. Thanks for the help!"
        let answer1b = "Better ask him if he\'s a murderer first."
        
        
        let story2 = "He nods slowly, unphased by the question."
        let answer2a = "At least he\'s honest. I\'ll climb in."
        let answer2b = "Wait, I know how to change a tire."
        
        let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
        let answer3a = "I love Elton John! Hand him the cassette tape."
        let answer3b = "It\'s him or me! You take the knife and stab him."
        
        let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
        let answer4a = "a"
        let answer4b = "b"
        
        let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
        let answer5a = "a"
        let answer5b = "b"
        
        let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
        let answer6a = "a"
        let answer6b = "b"
        
        list.append(Story(storyText: story1, answer1: answer1a, answer2: answer1b))
        list.append(Story(storyText: story2, answer1: answer2a, answer2: answer2b))
        list.append(Story(storyText: story3, answer1: answer3a, answer2: answer3b))
        list.append(Story(storyText: story4, answer1: answer4a, answer2: answer4b))
        list.append(Story(storyText: story5, answer1: answer5a, answer2: answer5b))
        list.append(Story(storyText: story6, answer1: answer6a, answer2: answer6b))
    }
}