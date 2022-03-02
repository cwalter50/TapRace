//
//  ViewController.swift
//  TapRace
//
//  Created by Christopher Walter on 3/1/22.
//

import UIKit

class ViewController: UIViewController
{

    
    var label = UILabel()
    var counter = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        createButton()
        
        label = UILabel(frame: CGRect(x: 200, y: 50, width: 100, height: 50))
        label.text = "0"
        label.textColor = UIColor.black
        
        view.addSubview(label)
        
        
    }
    
    @objc func buttonPressed(sender: UIButton)
    {
        print("buttonPressed")
        sender.removeFromSuperview()
        createButton()
        
        counter += 1
        label.text = "\(counter)"
    }
    
    func createButton()
    {
        let randX = CGFloat.random(in: 0...UIScreen.main.bounds.width-100)
        let randY = CGFloat.random(in: 0...UIScreen.main.bounds.height-100)
        
        let button = UIButton(frame: CGRect(x: randX, y: randY, width: 200, height: 50)) // creates a button
        // set the buttons properties
        button.setTitle("Press Me", for: .normal)
        button.backgroundColor = UIColor.red
        
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        view.addSubview(button) // adds button to screen
    }


}

