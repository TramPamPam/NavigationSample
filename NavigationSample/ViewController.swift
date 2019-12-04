//
//  ViewController.swift
//  NavigationSample
//
//  Created by Oleksandr on 04.12.2019.
//  Copyright © 2019 Oleksandr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var row: Int = -1

    @IBOutlet private weak var lineLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        lineLabel.text = "Line \(row)"
    }


}

