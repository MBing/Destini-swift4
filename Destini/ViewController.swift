//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allStories = StoryBank()
    var currentStoryNumber: Int = 0
    var pressedButton: Int = 0

    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetStory()
        nextQuestion()
    }
    
    @IBAction func resetStories(_ sender: UIButton) {
        resetStory()
        nextQuestion()
    }
    
    func resetStory() {
        restartButton.isHidden = true
        topButton.isHidden = false
        bottomButton.isHidden = false
        currentStoryNumber = 0
    }

    func nextQuestion() {
        storyTextView.text = allStories.list[currentStoryNumber].text
        topButton.setTitle(allStories.list[currentStoryNumber].answerA,for: .normal)
        bottomButton.setTitle(allStories.list[currentStoryNumber].answerB, for: .normal)
    }
    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        print(sender.tag)
        print(currentStoryNumber)
        if (currentStoryNumber == 2 || (currentStoryNumber == 1 && sender.tag == 2) || currentStoryNumber == 4 || currentStoryNumber == 5) {
            lastQuestion()
        }
        
        if ((sender.tag == 1 && currentStoryNumber == 0) || (sender.tag == 1 && currentStoryNumber == 1)) {
            currentStoryNumber = 2 // story 3
        } else if (sender.tag == 2 && currentStoryNumber == 1) {
            currentStoryNumber = 3 // story 4
        } else if (currentStoryNumber == 0 && sender.tag == 2) {
            currentStoryNumber = 1 // story 2
        } else if (currentStoryNumber == 2 && sender.tag == 1) {
            currentStoryNumber = 5 // story 6
        } else if (currentStoryNumber == 2 && sender.tag == 2) {
            currentStoryNumber = 4 // story 5
        }
    
        nextQuestion()
    }

    func lastQuestion() {
        topButton.isHidden = true
        bottomButton.isHidden = true
        restartButton.isHidden = false
    }
}

