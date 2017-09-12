//
//  addMadLibViewController.swift
//  MadLibs
//
//  Created by Lorman Lau on 9/12/17.
//  Copyright © 2017 Lorman Lau. All rights reserved.
//

import UIKit

class addMadLibViewController: UIViewController {

    weak var delegate: SubmitMadLib?
    
    @IBOutlet weak var adjective: UITextField!
    @IBOutlet weak var verb1: UITextField!
    @IBOutlet weak var verb2: UITextField!
    @IBOutlet weak var noun: UITextField!
    
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        delegate?.submitMadLib(adjective: adjective.text!, verb1: verb1.text!, verb2: verb2.text!, noun: noun.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
