//
//  MainViewController.swift
//  ios_multiple_storyboards_example
//
//  Created by codexpedia on 1/28/19.
//  Copyright © 2019 codexpedia. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func shoppingTapped(_ sender: UIButton) {
        let shoppingController = AppStoryboards.Shopping.viewController(viewControllerClass: ShoppingViewController.self)
        self.navigationController?.pushViewController(shoppingController, animated: true)
    }
    
    @IBAction func checkoutTapped(_ sender: UIButton) {
        let checkoutController = AppStoryboards.Checkout.viewController(viewControllerClass: CheckoutViewController.self)
        self.navigationController?.pushViewController(checkoutController, animated: true)
    }
    
//    @IBAction func profileTapped(_ sender: UIButton) {
//        let profileController = AppStoryboards.Profile.viewController(viewControllerClass: ProfileViewController.self)
//        self.navigationController?.pushViewController(profileController, animated: true)
//    }

}
