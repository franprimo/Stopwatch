//
//  ViewController.swift
//  Stopwatch
//
//  Created by Fran Primo Ruiz on 17/6/15.
//  Copyright (c) 2015 Fran Primo Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var isRunning = false
    var count = 0
    
    func updateTime() {
        count++
        timeLbl.text = "\(count)"
    }

    @IBOutlet weak var timeLbl: UILabel!
    
    @IBAction func stopBtn(sender: AnyObject) {
        timer.invalidate()
        count = 0
        timeLbl.text = "0"
    }
    
    @IBAction func playBtn(sender: AnyObject) {
        //Si el contadores no esta incrementandose, lo pone en marcha y el booleano pasa true. En el caso contrario,
        //lo para y el booleano pasa a false
        if isRunning == false {
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
            isRunning = true
        }else{
            timer.invalidate()
            isRunning = false
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

