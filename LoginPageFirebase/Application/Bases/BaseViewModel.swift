//
//  BaseViewModel.swift
//  LoginPageFirebase
//
//  Created by Giangdm on 19/04/2023.
//

import Foundation


protocol BaseViewModelProtocol{
    associatedtype U
}


class BaseViewModel: BaseViewModelProtocol{
    typealias U = UseCase
}
