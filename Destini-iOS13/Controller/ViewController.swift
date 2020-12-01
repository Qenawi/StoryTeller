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
    var idx = -1
    var story:Story? = nil
    
    @IBAction func onButtonOneClick(_ sender: UIButton)
    {
        if sender.tag == 1 {moveToNext()}
        else {moveToPrev()}
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        moveToNext()

    }
    func moveToNext()
    {
        if idx >= storyData.count {
            return
        }
        idx += 1
        story = getNext(id: idx)
        if story == nil { return }
        storyLabel.text = story?.title
        choice1Button.setTitle(story?.left,for: .normal)
        choice2Button.setTitle(story?.right,for: .normal)
    }
    func moveToPrev(){
        if idx <= 0{
            return
        }
        idx -= 1
        story = getNext(id: idx)
        if story == nil { return }
        storyLabel.text = story?.title
        choice1Button.setTitle(story?.left,for: .normal)
        choice2Button.setTitle(story?.right,for: .normal)
       }


}

