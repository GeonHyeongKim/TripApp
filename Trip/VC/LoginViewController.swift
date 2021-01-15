//
//  LoginViewController.swift
//  Trip
//
//  Created by gunhyeong on 2021/01/13.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var btnOk: UIButton!
    @IBOutlet weak var txtFieldUserID: UITextField!
    @IBOutlet weak var txtFieldUserPW: UITextField!
    @IBOutlet weak var lblIncorrectUserID: UILabel!
    @IBOutlet weak var lblIncorrectUserPW: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setting()
    }
    
    func setting() {
        btnOk.layer.cornerRadius = 14
        lblIncorrectUserID.isHidden = true
        lblIncorrectUserPW.isHidden = true
    }

    @IBAction func checkUserInfo(_ sender: Any) {
        txtFieldUserID.tintColor = UIColor.red
        txtFieldUserPW.tintColor = UIColor.red
        lblIncorrectUserID.isHidden = false
        lblIncorrectUserPW.isHidden = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
