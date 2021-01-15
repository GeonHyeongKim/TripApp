//
//  LoginMainViewController.swift
//  Trip
//
//  Created by gunhyeong on 2021/01/09.
//

import UIKit

class LoginMainViewController: UIViewController {

    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setting()
    }
    
    func setting() {
        btnLogin.layer.cornerRadius = 14
        btnSignUp.layer.cornerRadius = 14

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
        
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
