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
    
    // constants
    let server = GCDWebServer()
    
    init () {
        server.addDefaultHandlerForMethod("GET", requestClass: GCDWebServerRequest.self, processBlock: { request in
            return GCDWebServerDataResponse(HTML:"<html><body><p>Hello World</p></body></html>")
        })
        
        server.addHandlerForMethod("GET", path: "/id", requestClass: GCDWebServerRequest.self, processBlock: { request in
            var dic = Dictionary<String, String>()
            dic["name"] = "name"
            dic["ip"] = "ip"
            return GCDWebServerDataResponse(JSONObject: dic)
        })
    }
    
    func start() {
        server.startWithPort(12580, bonjourName: nil)
    }
    
    class var sharedInstance : HttpServer {
        return _HttpServerInstance
    }
    
}