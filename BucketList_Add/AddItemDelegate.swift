//
//  AddItemTableViewControllerDelegate.swift
//  BucketList_Add
//
//  Created by Lorman Lau on 9/11/17.
//  Copyright © 2017 Lorman Lau. All rights reserved.
//

import UIKit

protocol AddItemDelegate: class {
    func cancelButtonPressed(by controller: UITableViewController)
    func itemSaved(item: String, at: NSIndexPath?)
}
