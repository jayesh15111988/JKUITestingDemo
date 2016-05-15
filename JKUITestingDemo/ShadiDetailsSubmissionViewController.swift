//
//  ShadiDetailsSubmissionViewController.swift
//  JKUITestingDemo
//
//  Created by Jayesh Kawli Backup on 5/15/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

import UIKit

class ShadiDetailsSubmissionViewController: UIViewController {

    var submitterName: String? = "Unknown"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = submitterName
    }
}
