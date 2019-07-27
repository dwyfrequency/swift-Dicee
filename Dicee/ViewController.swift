//
//  ViewController.swift
//  Dicee
//
//  Created by Jack Dwyer on 7/26/19.
//  Copyright © 2019 Jack Dwyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIdx1: Int = 0
    var randomDiceIdx2: Int = 0
    
    let diceArray: Array = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    // to get this we need to control click and drag the line to our code view
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    // @IBOutlet changes appearance of ui element
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDiceImages()
        
    }

    // @IBAction notifies the code when element is interacted with
    @IBAction func rollBtnPressed(_ sender: Any) {
        // this will get pressed when roll btn is clicked
        updateDiceImages()

    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() -> Void {
        randomDiceIdx1 = Int.random(in: 0 ... 5)
        randomDiceIdx2 = Int.random(in: 0 ... 5)
        diceImageView1.image = UIImage(named: "dice\(randomDiceIdx1 + 1)")
        diceImageView2.image = UIImage(named: diceArray[randomDiceIdx2])
    }
}

