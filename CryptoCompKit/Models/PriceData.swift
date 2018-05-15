//
//  PriceData.swift
//  Vault
//
//  Created by Steve on 5/9/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public class PriceData:Codable {
    var type = ""
    var market = ""
    var fromSymbol = ""
    var toSymbol = ""
    var flags = ""
    var price = 0.0
    var lastUpdate = 0
    var lastVolume = 0.0
    var lastVolumeTo = 0.0
    var lastTradeID = ""
    var volumeDay = 0.0
    var volumeDayTo = 0.0
    var volume24Hour = 0.0
    var volume24HourTo = 0.0
    var openDay = 0.0
    var highDay = 0.0
    var lowDay = 0.0
    var open24Hour = 0.0
    var high24Hour = 0.0
    var low24Hour = 0.0
    var lastMarket = ""
    var change24Hour = 0.0
    var changePercent24Hour = 0.0
    var changeDay = 0.0
    var changePercentDay = 0.0
    var supply = 0.0
    var marketCap = 0.0
    var totalVolume24Hour = 0.0
    var totalVolume24HourTo = 0.0
    
    enum CodingKeys: String, CodingKey {
        case type = "TYPE"
        case market = "MARKET"
        case fromSymbol = "FROMSYMBOL"
        case toSymbol = "TOSYMBOL"
        case flags = "FLAGS"
        case price = "PRICE"
        case lastUpdate = "LASTUPDATE"
        case lastVolume = "LASTVOLUME"
        case lastVolumeTo = "LASTVOLUMETO"
        case lastTradeID = "LASTTRADEID"
        case volumeDay = "VOLUMEDAY"
        case volumeDayTo = "VOLUMEDAYTO"
        case volume24Hour = "VOLUME24HOUR"
        case volume24HourTo = "VOLUME24HOURTO"
        case openDay = "OPENDAY"
        case highDay = "HIGHDAY"
        case lowDay = "LOWDAY"
        case open24Hour = "OPEN24HOUR"
        case high24Hour = "HIGH24HOUR"
        case low24Hour = "LOW24HOUR"
        case lastMarket = "LASTMARKET"
        case change24Hour = "CHANGE24HOUR"
        case changePercent24Hour = "CHANGEPCT24HOUR"
        case changeDay = "CHANGEDAY"
        case changePercentDay = "CHANGEPCTDAY"
        case supply = "SUPPLY"
        case marketCap = "MKTCAP"
        case totalVolume24Hour = "TOTALVOLUME24H"
        case totalVolume24HourTo = "TOTALVOLUME24HTO"
    }
}
