//
//  CoinData.swift
//  Vault
//
//  Created by Steve on 5/9/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public class CoinData:Codable {
    var id = ""
    var url = ""
    var imageURL:String?
    var name = ""
    var symbol = ""
    var coinName = ""
    var fullName = ""
    var algorithm = ""
    var proofType = ""
    var sortOrder = ""
    
    
    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case url = "Url"
        case imageURL = "ImageUrl"
        case name = "Name"
        case symbol = "Symbol"
        case coinName = "CoinName"
        case fullName = "FullName"
        case algorithm = "Algorithm"
        case proofType = "ProofType"
        case sortOrder = "SortOrder"
    }
    
}
