//
//  SecondViewController.swift
//  StreetFighters
//
//  Created by Gilmar Amaro on 10/03/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myLabelTwo: UILabel!
    
    var myScreenTwo: Game = Game(name: "", country: "", fightStyle: "", nameDescription: "", imageCharacter: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreen2()
    }
    
    func setupScreen2() {
        myImage.image = UIImage(named: myScreenTwo.imageCharacter)
        myLabel.text = "Pais: \(myScreenTwo.country) Estilo: \(myScreenTwo.fightStyle)"
        myLabelTwo.text = myScreenTwo.nameDescription
    }
}
