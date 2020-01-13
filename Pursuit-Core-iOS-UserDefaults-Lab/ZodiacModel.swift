//
//  ZodiacModel.swift
//  Pursuit-Core-iOS-UserDefaults-Lab
//
//  Created by Maitree Bain on 1/13/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

struct ZodiacData: Decodable {
    let sunsign: String
    let horoscope: String
    let meta: Meta
}

struct Meta: Decodable {
    let mood: String
    let intensity: String
}
