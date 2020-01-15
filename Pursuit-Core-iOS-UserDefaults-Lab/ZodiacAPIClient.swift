//
//  ZodiacAPIClient.swift
//  Pursuit-Core-iOS-UserDefaults-Lab
//
//  Created by Maitree Bain on 1/13/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import Foundation
import NetworkHelper

struct ZodiacAPIClient {
    static func getSign(for sign: String, completion: @escaping (Result<ZodiacData,AppError>) -> ()) {
        
        let endpointURL = "http://sandipbgt.com/theastrologer/api/horoscope/\(sign)/today"
        
        guard let url = URL(string: endpointURL) else {
            completion(.failure(.badURL(endpointURL)))
            return
        }
        
        let request = URLRequest(url: url)

        NetworkHelper.shared.performDataTask(with: request) { (result) in
            
            switch result {
            case .failure(let appError):
                completion(.failure(.networkClientError(appError)))
            case .success(let data):
                do {
                    let horoscopeData = try JSONDecoder().decode(ZodiacData.self, from: data)
                    
                    completion(.success(horoscopeData))
                }
                catch {
                    completion(.failure(.decodingError(error)))
                }
            }
        }
    }
}
