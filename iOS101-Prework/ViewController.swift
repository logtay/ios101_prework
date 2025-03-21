//
//  ViewController.swift
//  iOS101-Prework
//
//  Created by Taylor on 3/20/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var schoolLabel: UILabel!
    
    @IBOutlet weak var jobLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        
    }
    
    func changeColor() -> UIColor{

        let red = CGFloat.random(in: 0.2...1)
        let green = CGFloat.random(in: 0.2...1)
        let blue = CGFloat.random(in: 0.2...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    // function to bold label fonts
    
    @IBAction func changeFontFace(_ sender: UIButton) {
        let boldFont = makeBold()
        
        
        nameLabel.font = boldFont
        schoolLabel.font = boldFont
        jobLabel.font = boldFont
        
        nameLabel.adjustsFontSizeToFitWidth = true
        schoolLabel.adjustsFontSizeToFitWidth = true
        jobLabel.adjustsFontSizeToFitWidth = true
    }
    
    func makeBold() -> UIFont {
        UIFont.boldSystemFont(ofSize: 22)
    }
}


