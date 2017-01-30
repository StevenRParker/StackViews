//
//  ViewController.swift
//  StackViewMagic
//
//  Created by Steven Parker on 10/26/16.
//  Copyright © 2016 Steven Parker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var emojiView: [UIView]! {
        didSet {
            emojiView.forEach {
                $0.isHidden = true
            }
        }
    }
    
    @IBOutlet var emojiText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func donutButtonPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🍩"
    }
    
    @IBAction func fryButtonPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🍟"
    }
    
    @IBAction func icecreamButtonPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🍦"
    }

    @IBAction func tacoButtonPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🌮"
    }
    
    @IBAction func pizzaButtonPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🍕"
    }
    
    @IBAction func cookieButtonPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🍪"
    }
    
    @IBAction func popcornButtonPressed(_ sender: AnyObject) {
        hideButtons()
        emojiText.text = "🍿"
    }
    
    
    

    @IBAction func onSettingsButtonPressed(_ sender: AnyObject) {
        hideButtons()
    }
    
    func hideButtons() {
        UIView.animate(withDuration: 0.3) {
            self.emojiView.forEach {
                $0.isHidden = !$0.isHidden
            }
        }
    }

}

