//
//  ViewController.swift
//  HelloWorld
//
//  Created by Jennifer Bacon on 07/10/2017.
//  Copyright © 2017 Jenny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let labelhidden = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        labelhidden.center = CGPoint(x: 160, y: 285)
        labelhidden.textAlignment = .center
        labelhidden.tag = 1
        labelhidden.text = "Hidden"
        labelhidden.isHidden = true
        self.view.addSubview(labelhidden)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMessage() {
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showAnotherMessage() {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.text = "You're not good"
        self.view.addSubview(label)
    }
    
    @IBAction func showGoodMessage() {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.text = "You're good"
        self.view.addSubview(label)
    }
    
    @IBAction func imGood() {
        let labels = self.view.subviews
        print(labels)
        for case let label as UILabel in self.view.subviews {
            if label.tag == 1 {
                label.text = "Good!"
                label.isHidden = false
            }
        }
    }
    
    @IBAction func imBad() {
        for case let label as UILabel in self.view.subviews {
            if label.tag == 1 {
                label.text = "Bad!"
                label.isHidden = false
            }
        }
    }
}

