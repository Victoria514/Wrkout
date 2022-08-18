//
//  MondayAddToDoViewController.swift
//  Wrkout
//
//  Created by Scholar on 8/16/22.
//

import UIKit

class MondayAddToDoViewController: UIViewController {
var previousToDoTVC = MondayToDoTableViewController()
    @IBOutlet weak var descriptionInput: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func mondayAddButtonTapped(_ sender: UIButton) {
        guard let accessToCoreData = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let dataFromCoreData = accessToCoreData.persistentContainer.viewContext
        
        let newToDo = MondayToDoCD(context: dataFromCoreData)
        
        if let checkForInput = descriptionInput.text {
            newToDo.descriptionInCD = checkForInput
        }
        newToDo.descriptionInCD = descriptionInput.text
        accessToCoreData.saveContext()
//        previousToDoTVC.listOfToDo.append(newToDo)
//        previousToDoTVC.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
    }
    

}
