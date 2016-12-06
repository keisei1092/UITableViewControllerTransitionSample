//
//  ViewController.swift
//  TableViewTransitionSample
//
//  Created by Keisei Saito on 2016/12/06.
//  Copyright © 2016 keisei_1092. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = "\(indexPath.row)"
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "SecondViewController", bundle: nil)
        let secondViewController = storyboard.instantiateInitialViewController() as! SecondViewController
        secondViewController.number = indexPath.row
        navigationController?.pushViewController(secondViewController, animated: true)
    }

}

