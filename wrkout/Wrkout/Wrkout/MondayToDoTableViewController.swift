//
//  MondayToDoTableViewController.swift
//  Wrkout
//
//  Created by Scholar on 8/16/22.
//

import UIKit

class MondayToDoTableViewController: UITableViewController {
//to do list code
var listOfToDo : [MondayToDoCD] = []
    
    /* func createToDo() -> [ToDoClass] {
        let squatsToDo = ToDoClass()
        squatsToDo.description = "Do 15 reps of squats"
        
        let pushupsToDo = ToDoClass()
        pushupsToDo.description = "Do 10 pushups for 3 sets"
        
        return [squatsToDo, pushupsToDo]
    } */
    func mondayGetToDos() {
        if let accessToCoreData = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            if let dataFromCoreData = try? accessToCoreData.fetch(MondayToDoCD.fetchRequest()) as? [MondayToDoCD] {
                listOfToDo = dataFromCoreData
                tableView.reloadData()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

      // listOfToDo = createToDo()
    
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let eachToDo = listOfToDo[indexPath.row]
        
        performSegue(withIdentifier: "moveToCompletedToDoVC", sender: eachToDo)
    }
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfToDo.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let eachToDo = listOfToDo[indexPath.row]
        cell.textLabel?.text = eachToDo.descriptionInCD

        return cell
    }
    
//name on my workouts code
    
  
    override func viewWillAppear(_ animated: Bool) {
        mondayGetToDos()
    }
    
    
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let nextAddToDoVC = segue.destination as? MondayAddToDoViewController{
           nextAddToDoVC.previousToDoTVC = self
       }
       if let nextCompletedToDoVC = segue.destination as?
            MondayCompletedToDoViewController {
           if let choosenToDo = sender as? MondayToDoCD {
               nextCompletedToDoVC.selectedToDo = choosenToDo
               nextCompletedToDoVC.previousToDoTVC = self
           }
       }
    }
    

}
