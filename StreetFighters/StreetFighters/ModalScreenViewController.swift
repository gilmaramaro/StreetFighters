//
//  ModalScreenViewController.swift
//  StreetFighters
//
//  Created by Gilmar Amaro on 10/03/23.
//

import UIKit

class ModalScreenViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImage.image = UIImage(named: "street2")
    }
    
    @IBAction func myButton(_ sender: Any) {
        if let modal = storyboard?.instantiateViewController(withIdentifier: "Navigation") {
            self.present(modal, animated: true)
        }
    }
}
