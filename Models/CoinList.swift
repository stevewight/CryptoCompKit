//
//  CoinList.swift
//  Vault
//
//  Created by Steve on 5/10/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public class CoinList:Codable, Response {
    var coins = [String:CoinData]()
    var baseImageURL = ""
    var baseLinkURL = ""
    
    enum CodingKeys: String, CodingKey {
        case coins = "Data"
        case baseImageURL = "BaseImageUrl"
        case baseLinkURL = "BaseLinkUrl"
    }
}
