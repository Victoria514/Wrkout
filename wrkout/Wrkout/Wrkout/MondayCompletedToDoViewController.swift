//
//  MondayCompletedToDoViewController.swift
//  Wrkout
//
//  Created by Scholar on 8/16/22.
//

import UIKit

class MondayCompletedToDoViewController: UIViewController {
var previousToDoTVC = MondayToDoTableViewController()
    var selectedToDo : MondayToDoCD?
    @IBOutlet weak var toDoDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toDoDisplay.text = selectedToDo?.descriptionInCD
        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeTapped(_ sender: UIButton) {
        guard let accessToCoreData =
                UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let dataFromCoreData =
        accessToCoreData.persistentContainer.viewContext
        
        if let toDo2Delete = selectedToDo {
            dataFromCoreData.delete(toDo2Delete)
            navigationController?.popViewController(animated: true)
        }
    }
    

}
