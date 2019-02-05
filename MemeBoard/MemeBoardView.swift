//
//  MemeBoardView.swift
//  MemeBoard
//
//  Created by Greg Hughes on 2/4/19.
//  Copyright © 2019 Greg Hughes. All rights reserved.
//

import UIKit

protocol MemeBoardViewDelegate: class {
    func imageTapped(cell: String)
    //TODO: make the input a UITableView cell
}


class MemeBoardView: UIView {

    weak var delegate: MemeBoardViewDelegate?
    
    static var shared = MemeBoardView()
    
    
    
    @IBOutlet weak var nextKeyboardButton: UIButton!
    
    @IBOutlet weak var imageOfCell: UIButton!
    
    /*
     
     
     
     
     
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    @IBAction func imageButtonTapped(_ sender: Any) {
        
        delegate?.imageTapped(cell: "name of cell")
        
        
    }
    
}
