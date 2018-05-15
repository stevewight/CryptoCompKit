//
//  PriceData.swift
//  Vault
//
//  Created by Steve on 5/9/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public class PriceData:Codable {
    public var type = ""
    public var market = ""
    public var fromSymbol = ""
    public var toSymbol = ""
    public var flags = ""
    public var price = 0.0
    public var lastUpdate = 0
    public var lastVolume = 0.0
    public var lastVolumeTo = 0.0
    public var lastTradeID = ""
    public var volumeDay = 0.0
    public var volumeDayTo = 0.0
    public var volume24Hour = 0.0
    public var volume24HourTo = 0.0
    public var openDay = 0.0
    public var highDay = 0.0
    public var lowDay = 0.0
    public var open24Hour = 0.0
    public var high24Hour = 0.0
    public var low24Hour = 0.0
    public var lastMarket = ""
    public var change24Hour = 0.0
    public var changePercent24Hour = 0.0
    public var changeDay = 0.0
    public var changePercentDay = 0.0
    public var supply = 0.0
    public var marketCap = 0.0
    public var totalVolume24Hour = 0.0
    public var totalVolume24HourTo = 0.0
    
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
