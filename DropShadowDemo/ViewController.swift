//
//  ViewController.swift
//  DropShadowDemo
//
//
//  A Demo for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    @IBAction func buttonTouchedUpInside(_ sender: UIButton) {
        basicDropShadow(button: sender)
    }
    
    @IBAction func button1TouchedDownInside(_ sender: UIButton) {
        sender.layer.shadowOffset = CGSize(width: 0, height: 0)
        sender.layer.shadowRadius = 0.5
    }
    @IBAction func button2TouchDownInside(_ sender: UIButton) {
       sender.layer.shadowColor = UIColor.yellow.cgColor
        sender.layer.shadowRadius = 50
    }
    
    func basicDropShadow(button:UIButton){
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 5.0
        button.layer.shadowOffset = CGSize(width: 5.0, height: 2.0)
        button.layer.shadowColor = UIColor.black.cgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .lightGray
        basicDropShadow(button: button1)
        basicDropShadow(button: button2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

