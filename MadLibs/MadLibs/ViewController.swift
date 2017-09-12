//
//  ViewController.swift
//  MadLibs
//
//  Created by Lorman Lau on 9/12/17.
//  Copyright © 2017 Lorman Lau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MadLibLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "newMadLib" {
            let controller = segue.destination as! addMadLibViewController
            controller.delegate = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: SubmitMadLib {
    func submitMadLib(adjective: String, verb1: String, verb2: String, noun: String) {
        MadLibLabel.text = "A new and \(adjective) fairy princess movie coming out soon! It will be about Snow \(verb1) and  the \(verb2) dwarfs in the land of \(noun)"
        dismiss(animated: true, completion: nil)
    }
}
