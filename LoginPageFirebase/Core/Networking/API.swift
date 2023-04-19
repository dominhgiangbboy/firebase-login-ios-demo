//
//  API.swift
//  LoginPageFirebase
//
//  Created by Giangdm on 19/04/2023.
//

import Foundation
import Alamofire
public class API{
    public let path: String
    public let method: HTTPMethod
    public let headerParameters: [String: String]
    public let queryParameters: [String: Any]
    public let bodyParameters: [String: Any]
    public let bodyEncoding: ParameterEncoding
    
    
    init(path: String, method: HTTPMethod, headerParameters: [String : String] = [:], queryParameters: [String : Any], bodyParameters: [String : Any], bodyEncoding: ParameterEncoding = URLEncoding.default) {
        self.path = path
        self.method = method
        self.headerParameters = headerParameters
        self.queryParameters = queryParameters
        self.bodyParameters = bodyParameters
        self.bodyEncoding = bodyEncoding
    }
}
