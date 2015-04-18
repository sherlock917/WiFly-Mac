//
//  ViewController.swift
//  WiFly-Mac
//
//  Created by Sherlock Zhong on 4/18/15.
//  Copyright (c) 2015 SherlockZhong. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet var tf_name: NSTextField!
    
    @IBAction func register(sender: AnyObject) {
        println(tf_name.stringValue)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

