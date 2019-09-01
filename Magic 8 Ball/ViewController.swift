//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by AlexWang1 on 9/1/19.
//  Copyright © 2019 Alex Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int.random(in: 1...5)
        imageView.image = UIImage(named: "ball\(randomBallNumber)")
    }
    
}

