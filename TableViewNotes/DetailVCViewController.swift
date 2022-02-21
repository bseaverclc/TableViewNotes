//
//  DetailVCViewController.swift
//  TableViewNotes
//
//  Created by Brian Seaver on 2/15/22.
//

import UIKit

class DetailVCViewController: UIViewController {

    var selected = ""
    @IBOutlet weak var textViewOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textViewOutlet.text = selected

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
