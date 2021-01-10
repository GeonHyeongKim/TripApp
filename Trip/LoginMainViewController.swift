//
//  LoginMainViewController.swift
//  Trip
//
//  Created by gunhyeong on 2021/01/09.
//

import UIKit

class LoginMainViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
        
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}

