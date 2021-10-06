//
//  SecondViewController.swift
//  Segues&Navs
//
//  Created by Kevin Lagat on 06/10/2021.
//

import UIKit

protocol PassDataBack {
    func passData(_ text: String)
}

class SecondViewController: UIViewController {
    

    var receivedData: String?
    
    var delegate: PassDataBack?

    
    
    @IBOutlet weak var passDataBack: UIButton!
    @IBOutlet weak var receivedInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        receivedInfo.text = receivedData
        passDataBack.addTarget(self, action: #selector(passDataBack(_ :)), for: .touchUpInside)
        

    
        // Do any additional setup after loading the view.
    }
    
    @objc func passDataBack(_ sender: UIButton) {

        guard let data = receivedData else { return }
        delegate?.passData(data)
        
        self.navigationController?.popViewController(animated: true)
    }
        

    

}


struct A {}
