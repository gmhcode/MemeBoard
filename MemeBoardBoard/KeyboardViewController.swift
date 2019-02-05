//
//  KeyboardViewController.swift
//  MemeBoardBoard
//
//  Created by Greg Hughes on 2/4/19.
//  Copyright © 2019 Greg Hughes. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    var memeBoardView: MemeBoardView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 2
        let nib = UINib(nibName: "MemeBoardView", bundle: nil)
        let objects = nib.instantiate(withOwner: nil, options: nil)
        memeBoardView = objects.first as! MemeBoardView
        guard let inputView = inputView else { return }
        inputView.addSubview(memeBoardView)
        
        // 3
        memeBoardView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            memeBoardView.leftAnchor.constraint(equalTo: inputView.leftAnchor),
            memeBoardView.topAnchor.constraint(equalTo: inputView.topAnchor),
            memeBoardView.rightAnchor.constraint(equalTo: inputView.rightAnchor),
            memeBoardView.bottomAnchor.constraint(equalTo: inputView.bottomAnchor)
            ])
    }
        
//        // Perform custom UI setup here
//        self.nextKeyboardButton = UIButton(type: .system)
//
//        self.nextKeyboardButton.setTitle(NSLocalizedString("Next Keyboard", comment: "Title for 'Next Keyboard' button"), for: [])
//        self.nextKeyboardButton.sizeToFit()
//        self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = false
//
//        self.nextKeyboardButton.addTarget(self, action: #selector(handleInputModeList(from:with:)), for: .allTouchEvents)
//
//        self.view.addSubview(self.nextKeyboardButton)
//
//        self.nextKeyboardButton.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
//        self.nextKeyboardButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
//    }
//
//    override func textWillChange(_ textInput: UITextInput?) {
//        // The app is about to change the document's contents. Perform any preparation here.
//    }
//
//    override func textDidChange(_ textInput: UITextInput?) {
//        // The app has just changed the document's contents, the document context has been updated.
//
//        var textColor: UIColor
//        let proxy = self.textDocumentProxy
//        if proxy.keyboardAppearance == UIKeyboardAppearance.dark {
//            textColor = UIColor.white
//        } else {
//            textColor = UIColor.black
//        }
//        self.nextKeyboardButton.setTitleColor(textColor, for: [])
//    }

}
extension KeyboardViewController: MemeBoardViewDelegate{
    func imageTapped(cell: String) {
        
        let pasteBoard = UIPasteboard.self
        pasteBoard.general.image = MemeBoardView.shared.imageOfCell.currentImage
            
//            UIImage(named: "Screen Shot 2019-01-31 at 4.57.23 PM")
     
        
    }
    
   
}
