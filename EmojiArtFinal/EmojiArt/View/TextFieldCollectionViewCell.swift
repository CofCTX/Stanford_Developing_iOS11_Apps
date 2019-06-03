//
//  TextFieldCollectionViewCell.swift
//  EmojiArt
//
//  Created by Rahimi, Meena Nichole (Student) on 5/28/19.
//  Copyright © 2019 Rahimi, Meena Nichole (Student). All rights reserved.
//

import UIKit

class TextFieldCollectionViewCell: UICollectionViewCell, UITextFieldDelegate {
	
	// MARK: Storyboard
	
	@IBOutlet weak var textField: UITextField! { didSet { textField.delegate = self } }
	
	// MARK: Properties (closure)
	var resignationHandler: (() -> Void)?
	
	// MARK: UITextFieldDelegate
	
	func textFieldDidEndEditing(_ textField: UITextField) {
		resignationHandler?() // execute closure
	}
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
}
