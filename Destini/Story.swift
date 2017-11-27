//
//  Story.swift
//  Destini
//
//  Created by Martin Demiddel on 27.11.17.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    let text: String
    let answerA: String?
    let answerB: String?
    
    init(storyText: String, answer1: String? = nil, answer2: String? = nil) {
        text = storyText
        answerA = answer1
        answerB = answer2
    }
}
