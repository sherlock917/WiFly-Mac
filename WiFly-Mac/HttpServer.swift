//
//  HttpServer.swift
//  WiFly-Mac
//
//  Created by Sherlock Zhong on 4/18/15.
//  Copyright (c) 2015 SherlockZhong. All rights reserved.
//

import Foundation

let _HttpServerInstance = HttpServer()

class HttpServer {
    
    class var sharedInstance : HttpServer {
        return _HttpServerInstance
    }
    
}