//
//  MondayCompletedToDoViewController.swift
//  Wrkout
//
//  Created by Scholar on 8/16/22.
//

import UIKit

class MondayCompletedToDoViewController: UIViewController {
var previousToDoTVC = MondayToDoTableViewController()
var selectedToDo = ToDoClass()
    @IBOutlet weak var toDoDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toDoDisplay.text = selectedToDo.description
        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeTapped(_ sender: UIButton) {
    }
    

}
