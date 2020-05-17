//
//  URLSession+extension.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//

import Foundation
extension URLSession {
    func retrieveData<DecodableType: Decodable>(with url: URL,
                                                completionHandler: @escaping (DecodableType?, Error?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let unwrappedData = data else {
                completionHandler(nil, error)
                return
            }
            do {
                let decodedData = try JSONDecoder().decode(DecodableType.self,
                                                           from: unwrappedData)
                completionHandler(decodedData, nil)
            } catch {
                completionHandler(nil, error)
            }
        }.resume()
    }
}
