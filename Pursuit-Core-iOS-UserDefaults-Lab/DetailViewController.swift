//
//  DetailViewController.swift
//  Pursuit-Core-iOS-UserDefaults-Lab
//
//  Created by Maitree Bain on 1/13/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailText: UITextView!
    
    @IBOutlet weak var moodLabel: UILabel!
    
    @IBOutlet weak var intensity: UILabel!
    
    var zodiac: ZodiacData?
    
    var chosenSign = Zodiac.gemini.rawValue {
        didSet{
            getZodiacSign()
            UserPreference.shared.updateZodiac(for: chosenSign)
        }
    }
    
    var currentName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    func updateUI() {
        
        if let sign = UserPreference.shared.getZodiac() {
            chosenSign = sign
        }
        
    }
    
    func getZodiacSign() {
        
        ZodiacAPIClient.getSign(for: chosenSign.lowercased()) { [weak self] (result) in
            
            switch result {
            case .failure(let appError):
                print(appError)
            case .success(let zodiacData):
                self?.zodiac = zodiacData
                DispatchQueue.main.async {
                    self?.detailText.text = self?.zodiac?.horoscope
                    self?.moodLabel.text = self?.zodiac?.meta.mood
                    self?.intensity.text = self?.zodiac?.meta.intensity
                }
            }
        }
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue){
        guard let zodiacVC = segue.source as? ZodiacViewController else {
            fatalError("not segueing back")
        }
        chosenSign = zodiacVC.selectedSign
        currentName = zodiacVC.currentName
        
    }
}
