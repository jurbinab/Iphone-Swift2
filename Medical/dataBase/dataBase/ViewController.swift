//
//  ViewController.swift
//  dataBase
//
//  Created by Jose Urbina on 2016-09-01.
//  Copyright (c) 2016 Jose Urbina. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var nameTextField UITextField!
     @IBOutlet weak var phoneTextField UITextField!
     @IBOutlet weak var addressTextField UITextField!
    
    
    private var contacts = [Contact]()
    private var selectContact: Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
        func tableview  (tableView: UITableView, didSelectRowAtIndexPAth indexPath: NSIndexPath)
        {
            
            nameTextField.text = contacts[indexPath.row].name
            nameTextField.text = contacts[indexPath.row].phone
            nameTextField.text = contacts[indexPath.row].address
            selectContact = indexPath.row
            
        }
        
        func tableView (tableView: UITableView. numberofRowInSection section: Int) ->Int{
            
        return contacts.count
            
        }
        
        
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)->UITableViewCell{
            
            let cell = tableView.dequeueReusableCellWithIdentifier("ConatctCell")!
            var label : UILabel
            label = cell.viewWithTag(1)as! UILabel//Name Label
            label.text = contacts[indexPath.row]phone
            return cell
        }
        
        @IBAction func ADDBUTTONCLICKED(){
            
            let name = nameTextField.text ?? ""
            let phone = phoneTextField.text ?? ""
            let address = addressTextField.text ?? ""
            
            let contact = contact(id: 0, name: name, phone:phone address: address)
            contacts.append(contact)
            contacts
            
        } //IBAction
        
    
    }


}

