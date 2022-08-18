//
//  ViewController.swift
//  Wrkout
//
//  Created by Scholar on 8/16/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    @IBAction func enter(_ sender: UIButton) {
        if let temporary = textView.text{
            nameChanger.textPassed = temporary
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
}

