//
//  ShadiDetailsInputViewController.swift
//  JKUITestingDemo
//
//  Created by Jayesh Kawli Backup on 5/15/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

import UIKit

class ShadiDetailsInputViewController: UIViewController {

    @IBOutlet weak var nameInputField: UITextField!
    @IBOutlet weak var sliderView: UISlider!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var inputSwitch: UISwitch!
    @IBOutlet weak var switchValue: UILabel!
    var countryName: String = "Country"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = self.countryName
    }

    @IBAction func switchValueChanged(sender: UISwitch) {
        switchValue.text = sender.on ? "ON" : "OFF"
    }
    @IBAction func sliderValueChanged(sender: UISlider) {
        nameInputField.resignFirstResponder()
        sliderValueLabel.text = NSString(format: "%.2f", sender.value) as String
        
    }
    @IBAction func submitButtonPressed(sender: AnyObject) {
        
        let alert = UIAlertController(title: "Submit Profile", message: "Are you Sure", preferredStyle: .Alert)
        alert.accessibilityLabel = "submission"
        alert.addAction(UIAlertAction(title: "NO", style: .Destructive, handler: nil))
        alert.addAction(UIAlertAction(title: "YES", style: .Default, handler: { [unowned self] (action) in
            let inputDetailsSubmissionViewController = self.storyboard?.instantiateViewControllerWithIdentifier("submission") as! ShadiDetailsSubmissionViewController
            inputDetailsSubmissionViewController.submitterName = self.nameInputField.text
            self.navigationController?.pushViewController(inputDetailsSubmissionViewController, animated: true)
        }))
        self.presentViewController(alert, animated: true, completion: nil)
    }

}
