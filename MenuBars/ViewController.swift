//
//  ViewController.swift
//  MenuBars
//
//  Created by Patricio Vargas on 6/29/18.
//  Copyright © 2018 Patricio Vargas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    @IBOutlet weak var time: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        time.text = "210"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPause(_ sender: Any) {
        timer.invalidate();
    }
    
    @objc func processTimer(){
        print("a second has passed")
    }
    
    
}

