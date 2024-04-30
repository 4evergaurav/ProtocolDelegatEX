//
//  FirstControllerViewController.swift
//  ProtocolDelegatEX
//
//  Created by STUDENT on 4/25/24.
//

import UIKit

class FirstControllerViewController: UIViewController, SecondControllerViewControllerDelegate {
    func popValue(value: String) {
        secondtField.text = value
    }
    

    @IBOutlet weak var firstField: UITextField!
    @IBOutlet weak var secondtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func firstButtonPressed(_ sender: Any) {
        let coontroller = self.storyboard?.instantiateViewController(withIdentifier: "secondControllerViewController") as! SecondControllerViewController
        coontroller.firstFieldString = self.firstField.text!
        coontroller.delegate = self
        self.navigationController?.pushViewController(coontroller, animated: true)
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
