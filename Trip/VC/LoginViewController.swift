//
//  LoginViewController.swift
//  Trip
//
//  Created by gunhyeong on 2021/01/13.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var btnOk: UIButton!
    @IBOutlet weak var txtFieldUserID: UITextField!
    @IBOutlet weak var txtFieldUserPW: UITextField!
    @IBOutlet weak var lblIncorrectUserID: UILabel!
    @IBOutlet weak var lblIncorrectUserPW: UILabel!
    
    var parsedResponse: String = ""
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    func setup() {
        btnOk.layer.cornerRadius = 14
        txtFieldUserID.autocorrectionType = .no // 알 수 없는 단어를 추천하고 교정
        txtFieldUserPW.autocorrectionType = .no
        
        self.txtFieldUserID.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: .editingChanged)
        self.txtFieldUserPW.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: .editingChanged)
        setupCorrect()
    }
    
    func setupCorrect() {
        self.txtFieldUserID.textColor = .white
        self.txtFieldUserPW.textColor = .white
        self.lblIncorrectUserID.isHidden = true
        self.lblIncorrectUserPW.isHidden = true
        self.txtFieldUserID.attributedPlaceholder = NSAttributedString(string: "UserID", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        self.txtFieldUserPW.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
    }
    
    func setupIncorrect() {
        self.txtFieldUserID.textColor = .red
        self.txtFieldUserPW.textColor = .red
        self.lblIncorrectUserID.isHidden = false
        self.lblIncorrectUserPW.isHidden = false
        self.txtFieldUserID.attributedPlaceholder = NSAttributedString(string: "UserID", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        self.txtFieldUserPW.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
    }
    
    func post(_ userId: String, _ userPassword: String) {
        // 1. 전송할 값 준비
        let apiURL = "api url string"
        let serverURL = "zanghscoding"
        let requestURL = "\(serverURL).iptime.org:8000/user/login"
        
    }

    @IBAction func checkUserInfo(_ sender: Any) {
        let userId = self.txtFieldUserID.text
        let userPassword = self.txtFieldUserPW.text

        if userId?.isEmpty == true || userPassword?.isEmpty == true {
            setupIncorrect()
        } else {
            post(userId!, userPassword!)
        }
    }
    
    //MARK: TextField Event
    @objc func textFieldDidChange(textField: UITextField) {
        setupCorrect()
    }
}
