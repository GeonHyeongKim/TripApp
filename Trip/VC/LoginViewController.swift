//
//  LoginViewController.swift
//  Trip
//
//  Created by gunhyeong on 2021/01/13.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {

    
    @IBOutlet weak var btnOk: UIButton!
    @IBOutlet weak var txtFieldUserID: UITextField!
    @IBOutlet weak var txtFieldUserPW: UITextField!
    @IBOutlet weak var lblIncorrectUserID: UILabel!
    @IBOutlet weak var lblIncorrectUserPW: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    func setup() {
        btnOk.layer.cornerRadius = 14
        lblIncorrectUserID.isHidden = true
        lblIncorrectUserPW.isHidden = true
        txtFieldUserID.autocorrectionType = .no // 알 수 없는 단어를 추천하고 교정
        txtFieldUserPW.autocorrectionType = .no
        
        self.txtFieldUserID.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: .editingChanged)
        self.txtFieldUserPW.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: .editingChanged)

    }
    
    func setupCorrect() {
        self.txtFieldUserID.textColor = .red
        self.txtFieldUserPW.textColor = .red
        self.lblIncorrectUserID.isHidden = false
        self.lblIncorrectUserPW.isHidden = false
        self.txtFieldUserID.attributedPlaceholder = NSAttributedString(string: "UserID", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        self.txtFieldUserPW.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
    }
    
    func setupIncorrect() {
        self.txtFieldUserID.textColor = .red
        self.txtFieldUserPW.textColor = .red
        self.lblIncorrectUserID.isHidden = false
        self.lblIncorrectUserPW.isHidden = false
        self.txtFieldUserID.attributedPlaceholder = NSAttributedString(string: "UserID", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        self.txtFieldUserPW.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
    }

    @IBAction func checkUserInfo(_ sender: Any) {
        let userId = self.txtFieldUserID.text
        let userPassword = self.txtFieldUserPW.text

        if userId?.isEmpty == true || userPassword?.isEmpty == true {
            setupIncorrect()
        } else {

        }
    }
    
    //MARK: TextField Event
    @objc func textFieldDidChange(textField: UITextField) {
        setupCorrect()
    }
}
