//
//  SecondviewController.swift
//  CircularTransition
//
//  Created by Kilian on 23.12.17.
//  Copyright © 2017 Kilian. All rights reserved.
//

import UIKit

class SecondviewController: UIViewController {

    @IBOutlet weak var dismissButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        dismissButton.layer.cornerRadius = dismissButton.frame.size.width / 2
    }
    
    @IBAction func dismissSecondVc(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
