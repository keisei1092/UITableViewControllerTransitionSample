//
//  SecondViewController.swift
//  TableViewTransitionSample
//
//  Created by Keisei Saito on 2016/12/06.
//  Copyright © 2016 keisei_1092. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var number: Int?

    @IBOutlet weak var numberLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let number = number else {
            return
        }
        numberLabel.text = "\(number)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
