//
//  AddItemTableViewController.swift
//  BucketList_Add
//
//  Created by Lorman Lau on 9/11/17.
//  Copyright © 2017 Lorman Lau. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    
    weak var delegate: AddItemDelegate?
    var item: String?
    var indexPath: NSIndexPath?
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    
    @IBAction func submitButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.itemSaved(item: textField.text!, at: indexPath)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = item
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
