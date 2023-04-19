//
//  API.swift
//  LoginPageFirebaseTests
//
//  Created by Giangdm on 19/04/2023.
//

import XCTest
@testable import Alamofire
@testable import LoginPageFirebase


final class APITest: XCTestCase {

    func testAPIInitialization(){
        let apiTest: API =  API(
            path: "path"
            , method: HTTPMethod.get
            , headerParameters : ["headerParameters": "headerParameters"]
            , queryParameters : ["queryParameters": "queryParameters"], bodyParameters : ["bodyParameters": "bodyParameters"]
            , bodyEncoding: URLEncoding.default
            
        )
        XCTAssertEqual(apiTest.path, "path")
        XCTAssertEqual(apiTest.method, HTTPMethod.get)
        XCTAssertEqual(apiTest.headerParameters, ["headerParameters": "headerParameters"])
        
//        XCTAssertEqual(apiTest.bodyParameters, ["bodyParameters": "bodyParameters"])
//        XCTAssertEqual(apiTest.queryParameters, ["queryParameters": "queryParameters"])
//        XCTAssertEqual(apiTest.bodyEncoding, URLEncoding.default)
    }
}
