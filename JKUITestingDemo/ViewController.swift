//
//  ViewController.swift
//  JKUITestingDemo
//
//  Created by Jayesh Kawli Backup on 5/15/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var countryLivingInPreferenceOptions = ["America", "India", "UK", "Australia", "Libya"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Choose Country"
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryLivingInPreferenceOptions.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = countryLivingInPreferenceOptions[indexPath.row]
        cell.textLabel?.accessibilityLabel = countryLivingInPreferenceOptions[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let groomDetailsViewController = self.storyboard?.instantiateViewControllerWithIdentifier("fieldInputs") as! ShadiDetailsInputViewController
        groomDetailsViewController.countryName = countryLivingInPreferenceOptions[indexPath.row]
        self.navigationController?.pushViewController(groomDetailsViewController, animated: true)
    }

}

