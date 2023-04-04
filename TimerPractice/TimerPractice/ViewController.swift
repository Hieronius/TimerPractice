//
//  ViewController.swift
//  TimerPractice
//
//  Created by Арсентий Халимовский on 04.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    
    var count = 0
    var regularTimer = Timer()
    var backTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func createRegularTimer() {
        regularTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(handleRegularTimer), userInfo: nil, repeats: true)
    }
    
    @objc func handleRegularTimer() {
        count += 1
        let time = secondToHoursMinutesToSeconds(seconds: count)
        timerLabel.text = "\(String(format: "0%1d", time.0)): \(String(format: "0%1d", time.1)): \(String(format: "0%1d", time.2))"
    }
    
    func secondToHoursMinutesToSeconds(seconds: Int) -> (Int, Int, Int) {
        return ((seconds / 3600), ((seconds % 3600) / 60), ((seconds % 3600) % 60))
    }


    @IBAction func timerButtonPressed(_ sender: Any) {
    }
}

