//
//  ViewController.swift
//  Segues&Navs
//
//  Created by Kevin Lagat on 06/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var dataPass: String?
    
    
    @IBOutlet weak var passDataTextField: UITextField!
    
    @IBOutlet weak var dataPassedLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Dashboard"
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        
        // Do any additional setup after loading the view.
    }

    @IBAction func goToNext(_ sender: Any) {
        
        guard let data = passDataTextField.text else { return }
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        secondVC.receivedData = data
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
}

extension ViewController: PassDataBack {
    func passData(_ text: String) {
        print("this is my data", text)
        
        self.dataPassedLabel.text = text
        
    }
    
    
}

