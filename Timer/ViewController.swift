//
//  ViewController.swift
//  Timer
//
//  Created by Trujillo, Teyton on 11/13/18.
//  Copyright © 2018 ctec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    var time = 0
    // timer
    var timer = Timer()
    
    
    @IBAction func Start(_ sender: UIButton)
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    @IBAction func Pause(_ sender: UIButton)
    {
        timer.invalidate()
    }
    @IBAction func Restart(_ sender: UIButton)
    {
        timer.invalidate()
        time = 0
    }
    
    @objc func action()
    {
        time += 1
        lbl.text = String(time)
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

