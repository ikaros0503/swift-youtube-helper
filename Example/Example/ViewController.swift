//
//  ViewController.swift
//  Example
//
//  Created by An Nguyen on 10/17/18.
//  Copyright © 2018 An Nguyen. All rights reserved.
//

import UIKit
import YouTubeAPIWrapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        YouTube.video().list(part: "snippet")
            .setId(id: "HXkh7EOqcQ4")
            .setKey(key: "AIzaSyBzMYgY2FS9cf9F9uNnlEcVM5IWKdKjKxE")
            .execute()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

