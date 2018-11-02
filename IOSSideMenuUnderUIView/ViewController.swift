//
//  ViewController.swift
//  IOSSideMenuUnderUIView
//
//  Created by Iengpho on 11/2/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var trailingConstrain: NSLayoutConstraint!
    @IBOutlet weak var leadingConstrain: NSLayoutConstraint!
    var openMenu = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainView.layer.shadowOpacity = 1
        mainView.layer.shadowRadius = 6
    }

    @IBAction func openMenu(_ sender: Any) {
        if openMenu {
            leadingConstrain.constant = 0
            trailingConstrain.constant = 0
        } else {
            leadingConstrain.constant = 100
            trailingConstrain.constant = 100
        }
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
        openMenu = !openMenu
    }
    
}

