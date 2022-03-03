//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct StoryBrain{
    
    let destini: [Story] =  [Story(title: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right"),
                             Story(title: "You see a tiger", choice1: "Shout aloud", choice2: "Play dead"),
                             Story(title: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps")]
    var storyNumber: Int = 0
    
    func getStoryTitle(storyNumber: Int) -> String{
        return destini[storyNumber].title
    }
    
    func getChoice1(storyNumber: Int) -> String{
        return destini[storyNumber].choice1
    }
    
    func getChoice2(storyNumber: Int) -> String{
        return destini[storyNumber].choice2
    }
    
    func getStoryNumber() -> Int{
        return storyNumber
    }
    
    
   
    
    mutating func chooseRoute(userAnswer: UIButton) -> Story{
        if userAnswer.titleLabel?.description == destini[storyNumber].choice1{
            storyNumber += 1
            print(destini[storyNumber])
            return destini[storyNumber]
        }
        else{
            storyNumber += 2
            return destini[self.storyNumber]
        }
    }
    
    
    
    
}

