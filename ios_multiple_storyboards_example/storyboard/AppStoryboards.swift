//
//  AppStoryboards.swift
//  ios_multiple_storyboards_example
//
//  Created by codexpedia on 1/28/19.
//  Copyright © 2019 codexpedia. All rights reserved.
//

import UIKit

// https://medium.com/@gurdeep060289/clean-code-for-multiple-storyboards-c64eb679dbf6
enum AppStoryboards : String {
    // These enum name has to match with the storyboard file name
    case Main, Shopping, Checkout, Profile
    
    var instance : UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
    // Sample usage:
    // let shoppingController = AppStoryboards.Shopping.viewController(viewControllerClass: ShoppingViewController.self)
    func viewController<T: UIViewController>(viewControllerClass: T.Type) -> T {
        let storyboardID = (viewControllerClass as UIViewController.Type).storyboardID
        return instance.instantiateViewController(withIdentifier: storyboardID) as! T
    }
}

extension UIViewController {
    // The Storyboard ID for the initial View Controller has to be defined with the same name as the view controller name
    class var storyboardID : String {
        return "\(self)"
    }
}
