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
    
    @IBOutlet weak var signPicker: UIPickerView!
    
    var signs = [Zodiac.aries.rawValue, Zodiac.taurus.rawValue, Zodiac.gemini.rawValue, Zodiac.cancer.rawValue, Zodiac.leo.rawValue, Zodiac.virgo.rawValue, Zodiac.libra.rawValue, Zodiac.scorpio.rawValue, Zodiac.sagittarius.rawValue, Zodiac.capricorn.rawValue, Zodiac.aquarius.rawValue, Zodiac.pisces.rawValue]
    
    var selectedSign = Zodiac.gemini.rawValue
    
    var currentName = "" {
        didSet{
            nameText.text = currentName
            UserPreference.shared.updateName(for: currentName)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameText.delegate = self
        signPicker.delegate = self
        signPicker.dataSource = self
    }

}

extension ZodiacViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        currentName = textField.text ?? ""
        print(currentName)
        textField.resignFirstResponder()
        return true
    }
    
    
    
}

extension ZodiacViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return signs.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return signs[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let singleSign = signs[row]
        selectedSign = singleSign
        UserPreference.shared.updateZodiac(for: singleSign)
    }
    
}
