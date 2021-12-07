//
//  ViewController.swift
//  TableViewDemo
//
//  Created by student on 11/2/21.
//

import UIKit

//start of class
class student{
    var studentName : String?
    var studentId : Int?
    var studentMajor:String?
    var studentGrades : String?
    
    init (studentName  : String, studentId: Int ,studentMajor: String,studentGrades : String){
        self.studentName  = studentName
        self.studentId = studentId
        self.studentMajor=studentMajor
        self.studentGrades=studentGrades
    }
}// end of the class



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //we have to populate the cells from the data source
        let cell = TableViewOutlet.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        // ASSIGN THE DATA TO THE CELL
        cell.textLabel?.text = studentsArray[indexPath.row
        ].studentName
        
        return cell
    }
    

    @IBOutlet weak var TableViewOutlet: UITableView!
    
    var  studentsArray = [student]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableViewOutlet.delegate = self
        TableViewOutlet.dataSource = self
        
        let p1 = student(studentName: "Akhil", studentId: 91960523, studentMajor: "ACS", studentGrades: "A")
        studentsArray.append(p1)
        
        let p2 = student(studentName: "Ravanna", studentId: 91960571, studentMajor: "Arts", studentGrades: "A")
        studentsArray.append(p2)
        
        let p3 = student(studentName: "shakun", studentId: 91960671, studentMajor: "History", studentGrades: "A")
        studentsArray.append(p3)
        let p4 = student(studentName: "Arjun", studentId: 91961171, studentMajor: "Maths", studentGrades: "A")
        studentsArray.append(p4)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "ResultSegue"{
            let destination = segue.destination
            as!
                ResultViewController; destination.product = studentsArray[(TableViewOutlet.indexPathForSelectedRow?.row)!]
        }
    }

}

