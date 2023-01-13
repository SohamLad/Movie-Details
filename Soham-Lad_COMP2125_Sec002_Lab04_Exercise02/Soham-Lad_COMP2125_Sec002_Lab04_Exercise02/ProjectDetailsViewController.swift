//
//  ProjectDetailsViewController.swift
//  Soham-Lad_COMP2125_Sec002_Lab04_Exercise02
//
//  Created by user213345 on 7/29/22.
//

import UIKit

class ProjectDetailsViewController: UIViewController {
    
    @IBOutlet  var textProjectID : UITextField!
    @IBOutlet  var textProjectName : UITextField!
    @IBOutlet  var textProjectDuration : UITextField!
    @IBOutlet  var textHourlyRate : UITextField!
    @IBOutlet  var btnNext : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Project Details";
        
       

        // Do any additional setup after loading the view.
    }
        
    func validateProjectID(_ textField: UITextField) -> (Bool, String?) {
        guard let ProjectID = textField.text else {
            return (false, nil)
        }

        if textField == textProjectID {
            return (ProjectID.utf8CString.count >= 3, "Your Proejct ID is out of range.")
        }

        return (ProjectID.utf8CString.count > 0, "This field cannot be empty.")
    }
    
        
        func validatePorjectDuration(_ textField: UITextField) -> (Bool, String?) {
            guard let text = textField.text else {
                return (false, nil)
            }

            if textField == textProjectDuration {
                return (textProjectDuration <= 50, "Your Project Duration is must be less than equal to 100.")
            }
            if textField == textProjectDuration{
                return (textProjectDuration >= 100, "Your Project Duration is must be less than equal to 100.")
            }

            return (text.utf8CString.count > 0, "This field cannot be empty.")
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
