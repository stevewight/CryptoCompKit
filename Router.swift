//
//  Router.swift
//  Vault
//
//  Created by Steve on 5/9/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

protocol URLRequestProtocol {
    func url()->URL
}

enum Router:URLRequestProtocol {
    static let baseURL = "https://min-api.cryptocompare.com/data/"
    
    case coinList()
    case priceList(fSyms:[String],tSyms:[String])
    case histoMinute(fSym:String,tSym:String)
    
    public func request()->URLRequest {
        var request = URLRequest(url:url())
        request.httpMethod = "GET"
        return request
    }
    
    internal func url()->URL {
        var components = urlComponents()
        let items = paramItems()
        if !items.isEmpty {
            components.queryItems = items
        }
        return components.url!
    }
    
    private func urlComponents()->URLComponents {
        let url = Router.baseURL + path()
        return URLComponents(string: url)!
    }
    
    private func path()->String {
        switch self {
        case .coinList:
            return "all/coinlist"
        case .priceList(_,_):
            return "pricemultifull"
        case .histoMinute(_,_):
            return "histominute"
        }
    }
    
    private func paramItems()->[URLQueryItem] {
        switch self {
        case .coinList:
            return []
        case let .priceList(fSyms,tSyms):
            return buildParams([
                "fsyms": fSyms.joined(separator: ","),
                "tsyms": tSyms.joined(separator: ",")
            ])
        case let .histoMinute(fSym,tSym):
            return buildParams([
                "fsym": fSym,
                "tsym": tSym
            ])
        }
    }
    
    private func buildParams(_ params:[String:String])->[URLQueryItem] {
        var items = [URLQueryItem]()
        for (key,value) in params {
            items.append(URLQueryItem(name: key, value: value))
        }
        return items.filter{!$0.name.isEmpty}
    }
    
}
