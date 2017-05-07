//
//  ViewController.swift
//  DigitalClock
//
//  Created by Macbook on 5/6/17.
//  Copyright © 2017 bipbipdinang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeInDayLabel: UILabel!
    @IBOutlet weak var grubLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        oclock()
        _ = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(ViewController.oclock), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func oclock(){
        let date = Date()
        let calendar = Calendar.current
        
        var hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        
        if hour > 12{
            hour = hour - 12
            grubLabel.text = "PM"
        }else{
            grubLabel.text = "AM"
        }
        
        timeInDayLabel.text = hour.description + ":" + minute.description
    }

}

