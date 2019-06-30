//
//  MarketPrice.swift
//  net
//
//  Created by Glauco Dantas Beserra on 30/06/19.
//  Copyright © 2019 Glauco Dantas Beserra. All rights reserved.
//

import Foundation

struct MarketPrice: Codable {
    let description: String
    let values: [Value]
}

struct Value: Codable {
    let date: Int64
    let usd: Float64
    
    private enum CodingKeys: String, CodingKey {
        case date = "x"
        case usd = "y"
    }
}