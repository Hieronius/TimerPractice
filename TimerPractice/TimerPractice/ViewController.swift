//
//  ViewController.swift
//  TimerPractice
//
//  Created by Арсентий Халимовский on 04.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
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
//        let timeString = makeTimeString(hours: time.0, minutes: time.1, seconds: time.2)
//        timerLabel.text = "\(timeString)"
        
        
        timeLabel.text = "\(String(format: "%02d", time.0)): \(String(format: "%02d", time.1)): \(String(format: "%02d", time.2))"
        print("test commit 19.04.23=")
        print("test commit 22.04.23")
        print("test commit 23.04.23")
        print("test commit 24.04.23")
        print("test commit 25.04.23")
        print("test commit 26.04.23")
        
        
        // \((String(format: "0%1d", time.2).formateArticleDate))
    }
    
    func secondToHoursMinutesToSeconds(seconds: Int) -> (Int, Int, Int) {
        return ((seconds / 3600), ((seconds % 3600) / 60), ((seconds % 3600) % 60))
    }
    
//    func makeTimeString(hours: Int, minutes: Int, seconds: Int) -> String {
//        var timeString = ""
//        timeString += String(format: "%02d", hours)
//        timeString += " : "
//        timeString += String(format: "%02d", minutes)
//        timeString += " : "
//        timeString += String(format: "%02d", seconds)
//        return timeString
//    }


    @IBAction func timerButtonPressed(_ sender: Any) {
        createRegularTimer()
    }
}

