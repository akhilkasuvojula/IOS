//
//  ResultViewController.swift
//  TableViewDemo
//
//  Created by student on 11/2/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    var product : student?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayLabel.text = "The Student with name :  \((product?.studentName)!) with student id: \((product?.studentId)!)  has course in  majors of  \((product?.studentMajor)!) and has a grade of \((product?.studentGrades)!)."
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
