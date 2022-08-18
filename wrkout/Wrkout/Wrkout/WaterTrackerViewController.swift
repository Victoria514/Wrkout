//
//  WaterTrackerViewController.swift
//  Wrkout
//
//  Created by Scholar on 8/18/22.
//

import UIKit

class WaterTrackerViewController: UIViewController {

  @IBOutlet weak var cupsTextView: UILabel!
    
    @IBOutlet weak var cupsInput: UITextField!
    @IBAction func waterEnter(_ sender: UIButton) {
        if let waterTemporary = cupsInput.text{
            waterTrackerChanger.waterPassed = waterTemporary
            cupsTextView.text = waterTemporary
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        waterOutput.text = waterTrackerChanger.waterPassed
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
