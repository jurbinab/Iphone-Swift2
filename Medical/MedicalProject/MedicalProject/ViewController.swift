//
//  ViewController.swift
//  MedicalProject
//
//  Created by Jose Urbina on 2016-08-24.
//  Copyright (c) 2016 Jose Urbina. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
  
    @IBOutlet weak var usernameLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidAppear(true)
        // Create an empty array of LogItem's
        var logItems = [LogItem]()
        
        // Retreive the managedObjectContext from AppDelegate
        
        // Create the table view as soon as this class loads
        var logTableView = UITableView(frame: CGRectZero, style: .Plain)
        
        let prefs:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        let isLoggedIn:Int = prefs.integerForKey("ISLOGGEDIN") as Int
        if (isLoggedIn != 1) {
            self.performSegueWithIdentifier("goto_login", sender: self)
        } else {
            self.usernameLabel.text = prefs.valueForKey("USERNAME") as? String
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidDisappear(animated: Bool) {
        self.performSegueWithIdentifier("goto_login", sender: self)
    }
    @IBAction func logoutTapped(sender: UIButton) {
        
        let appDomain = NSBundle.mainBundle().bundleIdentifier
        NSUserDefaults.standardUserDefaults().removePersistentDomainForName(appDomain!)
        
        self.performSegueWithIdentifier("goto_login", sender: self)
    }
}