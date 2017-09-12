//
//  ViewController.swift
//  BucketList_Add
//
//  Created by Lorman Lau on 9/11/17.
//  Copyright © 2017 Lorman Lau. All rights reserved.
//

import UIKit

class BucketListViewController: UITableViewController, AddItemDelegate {
    
    var items = ["Go to Moon", "Jump out of a plane"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PerfectCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "EditItem", sender: indexPath)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        items.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddItem" {
            let navigationController = segue.destination as? UINavigationController
            let addItemTableViewController = navigationController?.topViewController as! AddItemTableViewController
            addItemTableViewController.delegate = self
        } else if segue.identifier == "EditItem" {
            let navigationController = segue.destination as? UINavigationController
            let addItemTableViewController = navigationController?.topViewController as! AddItemTableViewController
            addItemTableViewController.delegate = self
            let indexPath = sender as! NSIndexPath
            let item = items[indexPath.row]
            addItemTableViewController.item = item
            addItemTableViewController.indexPath = indexPath
        }
    }
    
    func cancelButtonPressed(by controller: UITableViewController) {
        dismiss(animated: true, completion: nil)
    }
    
    func itemSaved(item: String, at indexPath: NSIndexPath?) {
        if let index = indexPath {
            items[index.row] = item
        } else {
            items.append(item)
        }
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }

}

