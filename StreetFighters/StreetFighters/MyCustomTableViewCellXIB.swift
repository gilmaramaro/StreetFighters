//
//  MyCustomTableViewCellXIB.swift
//  StreetFighters
//
//  Created by Gilmar Amaro on 09/03/23.
//

import UIKit

class MyCustomTableViewCellXIB: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupGame(game: Game) {
        myImage.image = UIImage(named: game.imageCharacter)
        myLabel.text = game.name
    }
}
