//
//  ViewController.swift
//  CircularTransition
//
//  Created by Kilian on 23.12.17.
//  Copyright © 2017 Kilian. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UIViewControllerTransitioningDelegate {

    @IBOutlet weak var menueButton: UIButton!
    
    let transition = CircularTransistion()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menueButton.layer.cornerRadius = menueButton.frame.size.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! SecondviewController
        secondVC.transitioningDelegate = self
        secondVC.modalPresentationStyle = .custom
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = menueButton.center
        transition.circleColor = menueButton.backgroundColor!
        
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = menueButton.center
        transition.circleColor = menueButton.backgroundColor!
        
        return transition
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

