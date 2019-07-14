//
//  ViewController.swift
//  iOSCourse-Git
//
//  Created by omaestra on 14/07/2019.
//  Copyright © 2019 omaestra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clockLabel: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Just generating conflicts")
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(tick), userInfo: nil, repeats: true)
    }
    
    @objc func tick() {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ss"
        clockLabel.text = formatter.string(from: Date())
    }
}

