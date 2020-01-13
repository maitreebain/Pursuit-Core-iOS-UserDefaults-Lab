//
//  ViewController.swift
//  Pursuit-Core-iOS-UserDefaults-Lab
//
//  Created by Maitree Bain on 1/13/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class ZodiacViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var birthdayText: UITextField!
    
    var zodiac = [ZodiacData]()
    
    var currentName = "" {
        didSet{
            nameText.text = currentName
        }
    }
    
    
    
    
    var currentBday = "" {
        didSet{
            birthdayText.text = currentBday
            
            switch ZodiacMonths{
            case .january:
                print("djnh")
            default:
                break
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameText.delegate = self
        birthdayText.delegate = self
    }

    
    
    

}

extension ZodiacViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        currentName = textField.text ?? ""
        print(currentName)
        currentBday = textField.text ?? ""
        print(currentBday)
        textField.resignFirstResponder()
        return true
    }
    
    
    
}
