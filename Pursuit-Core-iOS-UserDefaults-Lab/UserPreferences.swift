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
                return Zodiac.pisces
            } else if day <= 31 {
                return Zodiac.aries
            }
        case .april(4):
            if day <= 20 && day > 0 {
                return Zodiac.aries
            } else if day <= 30 {
                return Zodiac.taurus
            }
        case .may(5):
            if day <= 21 && day > 0 {
                return Zodiac.taurus
            } else if day <= 31 {
                return Zodiac.gemini
            }
        case .june(6):
            if day <= 21 && day > 0 {
                return Zodiac.gemini
            } else if day <= 30 {
                return Zodiac.cancer
            }
        case .july(7):
            if day <= 22 && day > 0{
                return Zodiac.cancer
            } else if day <= 30{
                return Zodiac.leo
            }
        case .august(8):
            if day <= 22 && day > 0 {
                return Zodiac.leo
            } else if day < 31 {
                return Zodiac.virgo
            }
        case .september(9):
            if day <= 22 && day > 0 {
                return Zodiac.virgo
            } else if day <= 30 {
                return Zodiac.libra
            }
        case .october(10):
            if day <= 22 && day > 0 {
                return Zodiac.libra
            } else if day <= 31 {
                return Zodiac.scorpio
            }
        case .november(11):
            if day <= 21 && day > 0 {
                return Zodiac.scorpio
            } else if day <= 30 {
                return Zodiac.sagittarius
            }
        case .december(12):
            if day <= 22 && day > 0 {
                return Zodiac.sagittarius
            } else if day <= 31 {
                return Zodiac.capricorn
            }
        @unknown default:
            print("default")
        }
        return Zodiac.gemini
    }
    
}

