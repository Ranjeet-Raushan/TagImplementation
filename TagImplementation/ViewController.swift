//  ViewController.swift
//  TagImplementation
//  Created by Ranjeet Raushan on 26/05/19.
//  Copyright © 2019 vaayoo. All rights reserved.

import UIKit
import  WSTagsField

class ViewController: UIViewController {
    
    fileprivate let tagsField = WSTagsField()
 
    @IBOutlet fileprivate weak var tagsView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tagsField.frame = tagsView.bounds
        tagsView.addSubview(tagsField)
        tagsField.cornerRadius = 3.0
        tagsField.spaceBetweenLines = 10
        tagsField.spaceBetweenTags = 10
        tagsField.layoutMargins = UIEdgeInsets(top: 2, left: 6, bottom: 2, right: 6)
        tagsField.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tagsField.placeholder = "Enter tag"
        tagsField.placeholderColor = .green
        tagsField.placeholderAlwaysVisible = true
        tagsField.backgroundColor = UIColor.init(hex: "F9F9F9")
        tagsField.returnKeyType = .next
        tagsField.delimiter = ""
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tagsField.beginEditing()
    }
    // Tags Selection Related
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tagsField.frame = tagsView.bounds
    }

}

