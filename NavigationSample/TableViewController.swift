//
//  TableViewController.swift
//  NavigationSample
//
//  Created by Oleksandr on 04.12.2019.
//  Copyright © 2019 Oleksandr. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController") as! ViewController
        viewController.row = indexPath.row
        switch indexPath.row {
        case 2:
            present(viewController, animated: true, completion: nil)
        case 3:
            navigationController?.pushViewController(viewController, animated: true)
        default:
            break
        }
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        (segue.destination as? ViewController)?.row = tableView.indexPathForSelectedRow?.row ?? -1
    }


}
