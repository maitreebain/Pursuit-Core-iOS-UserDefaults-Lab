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

enum ZodiacMonths{
    case january(Int)
    case february(Int)
    case march(Int)
    case april(Int)
    case may(Int)
    case june(Int)
    case july(Int)
    case august(Int)
    case september(Int)
    case october(Int)
    case november(Int)
    case december(Int)
}


class UserPreference {
    
    private init() {
        
    }
    
    static let shared = UserPreference()
    
    func updateZodiacMonth(for month: ZodiacMonths, for day: Int) -> Zodiac {
        
        switch month {
        case .january(1):
            if day <= 20 && day > 0 {
                return Zodiac.capricorn
            } else if day <= 31 {
                return Zodiac.aquarius
            }
        case .february(2):
            if day <= 19 && day > 0 {
                return Zodiac.aquarius
            } else if day <= 29 {
                return Zodiac.pisces
            }
        case .march(3):
            if day <= 20 && day > 0 {
                
            }
        }
        
    }
    
}

