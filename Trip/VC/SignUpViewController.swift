//
//  SignUpViewController.swift
//  Trip
//
//  Created by gunhyeong on 2021/01/13.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var lblIncorrectUserID: UILabel!
    @IBOutlet weak var lblIncorrectUserPW: UILabel!
    @IBOutlet weak var lblReIncorrectUserPW: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setting()
    }
    
    func setting() {
        lblIncorrectUserID.isHidden = true
        lblIncorrectUserPW.isHidden = true
        lblReIncorrectUserPW.isHidden = true
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
