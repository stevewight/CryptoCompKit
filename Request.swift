//
//  Request.swift
//  Vault
//
//  Created by Steve on 5/9/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

enum RequestError: Error {
    case statusCode
    case response
}

class Request {
    let session = URLSession.shared
    var dataTask: URLSessionDataTask?

    public func run(router:Router, factory:Factory, complete:@escaping (_ result:Result<Any>)->Void) {
        
        dataTask = session.dataTask(with: router.request()) { data, response, error in
            let response = response as? HTTPURLResponse
            let result:Result<Any>!
            
            print("***********************")
            if let d = data {
                if let str = String(data:d, encoding: .utf8) {
                    print("str: \(str)")
                }
            }
            print("***********************")
            
            if response?.statusCode == 200 {
                let item = factory.build(data!)
                result = Result.success(item)
            } else {
                print("Incorrect status code")
                result = Result.failure(RequestError.statusCode)
            }
            complete(result)
        }
        dataTask?.resume()
        
    }
    
}
