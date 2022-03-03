//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = story.destini[story.getStoryNumber()].title
        choice1Button.setTitle(story.destini[story.getStoryNumber()].choice1, for: .normal)
        choice2Button.setTitle(story.destini[story.getStoryNumber()].choice2, for: .normal)
        
        
    }

    @IBAction func choiceMade(_ sender: Any) {
        let routeChosen = story.chooseRoute(userAnswer: sender as! UIButton)
        
        updateUI(route: routeChosen)
        
    }
    
    func updateUI(route: Story?){
        
        
        storyLabel.text = route?.title
        choice1Button.setTitle(route?.choice1, for: .normal)
        choice2Button.setTitle(route?.choice2, for: .normal)
        
        
    }
}

