//
//  UserPreferences.swift
//  Pursuit-Core-iOS-UserDefaults-Lab
//
//  Created by Maitree Bain on 1/13/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import Foundation

enum Zodiac: String {
    case aries = "Aries"
    case taurus = "Taurus"
    case gemini = "Gemini"
    case cancer = "Cancer"
    case leo = "Leo"
    case virgo = "Virgo"
    case libra = "Libra"
    case scorpio = "Scorpio"
    case sagittarius = "Sagittarius"
    case capricorn = "Capricorn"
    case aquarius = "Aquarius"
    case pisces = "Pisces"
}

class UserPreference {
    
    private init() {
        
    }
    
    static let shared = UserPreference()
    
    func updateZodiacMonth(for month: ZodiacMonths, for day: Int) -> Zodiac {
    
    }
}

