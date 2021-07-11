//
//  ViewController.swift
//  FloatingButton
//
//  Created by Macbook on 11/07/2021.
//

import UIKit

class ViewController: UIViewController {
    var actionButton: ActionButton!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setupButtons()
        // Do any additional setup after loading the view.
    }
    func setupButtons(){
        let google = ActionButtonItem(title: "Google", image: #imageLiteral(resourceName: "a1"))
        google.action = {item in self.view.backgroundColor = UIColor.red}
        let twitter = ActionButtonItem(title: "Twitter", image: #imageLiteral(resourceName: "a2"))
        twitter.action = {item in self.view.backgroundColor = UIColor.blue}
        let facebook = ActionButtonItem(title: "Facebook", image: #imageLiteral(resourceName: "a3"))
        facebook.action = {item in self.view.backgroundColor = UIColor.yellow}
        let linkedin = ActionButtonItem(title: "Linkedin", image: #imageLiteral(resourceName: "a4"))
        linkedin.action = {item in self.view.backgroundColor = UIColor.brown}
        actionButton = ActionButton(attachedToView: self.view, items: [google,twitter,facebook,linkedin])
        //actionButton.setImage(#imageLiteral(resourceName: "a1"), forState: UIControl.State())
        actionButton.setTitle("+", forState: UIControl.State())
        actionButton.backgroundColor = UIColor(displayP3Red: 238.0/255.0, green: 130.0/255.0, blue: 130.0/255.0, alpha: 1)
        actionButton.action = {
            button in button.toggleMenu()
        }
    }

}

