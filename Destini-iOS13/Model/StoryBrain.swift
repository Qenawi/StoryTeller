//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
let storyData:[Story]=[Story(t: "you see fork in in road", l: "take left", r: "take right"),Story(t: "you see a tiger", l: "scream for help", r: "play dead"),Story(t: "you find atreasur chest", l: "open it", r: "check for trap")]
func getNext(id:Int) -> Story? {
    if id < storyData.count {
        return storyData[id]
    }else{
     return nil
    }
}


