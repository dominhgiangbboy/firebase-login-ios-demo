//
//  BaseViewController.swift
//  LoginPageFirebase
//
//  Created by Giangdm on 19/04/2023.
//

import Foundation
import UIKit

class BaseViewController<T: BaseViewModel>: UIViewController{
    var viewModel: T?
}
