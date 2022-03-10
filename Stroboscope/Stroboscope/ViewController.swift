//
//  ViewController.swift
//  Stroboscope
//
//  Created by Андрей Трофимов on 05.03.2022.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var flagSwitch = true
    var flag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var First: UIView!
    @IBOutlet weak var Second: UIView!
    @IBOutlet weak var TapMeLabel: UILabel!
    
    @IBAction func Button(_ sender: UIButton) {
        if flag == false {
            timer = Timer.scheduledTimer(timeInterval: 0.35, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
            flag = true
            TapMeLabel.isHidden = true
        } else {
            flag = false
            First.backgroundColor = UIColor.black
            Second.backgroundColor = UIColor.black
            timer.invalidate()
            TapMeLabel.isHidden = false
        }
    }
    
    @objc func timerAction() {
        if flagSwitch == true {
            First.backgroundColor = UIColor.red
            Second.backgroundColor = UIColor.blue
            flagSwitch = false
        } else {
            First.backgroundColor = UIColor.blue
            Second.backgroundColor = UIColor.red
            flagSwitch = true
        }
    }
}
