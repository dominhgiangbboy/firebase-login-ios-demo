//
//  UseCase.swift
//  LoginPageFirebase
//
//  Created by Giangdm on 18/04/2023.
//

import Foundation

protocol UseCase {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request?) -> Response
}

