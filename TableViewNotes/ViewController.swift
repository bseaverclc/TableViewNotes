//
//  ViewController.swift
//  TableViewNotes
//
//  Created by Brian Seaver on 2/4/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
   
    
    //Outlets Go here
    
    var foods = ["Pizza", "Eggs", "Candy", "Sugar"]
    var details = ["Pizza is awesome",
                   "Eggs is for breakfast",
                   "Candy is for dessert",
                   "Sugar is in syrup"]
    var selectedRow = 0
  
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
       
    }
    
    // Actions go here
    
    // gives the number of rows in the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    // This populates each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = foods[indexPath.row]
        return cell
    }

    
    @IBAction func addAction(_ sender: UIBarButtonItem) {
        var blah = textFieldOutlet.text!
        foods.append(blah)
        tableViewOutlet.reloadData()
        
        
        
    }
    
 // This function happens when user selects a row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected \(foods[indexPath.row])")
        selectedRow = indexPath.row
        
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! DetailVCViewController
        nvc.selected = details[selectedRow]
    }
    
    
    
    
}

