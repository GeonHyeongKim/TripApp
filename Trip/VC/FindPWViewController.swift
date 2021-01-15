//
//  FindPWViewController.swift
//  Trip
//
//  Created by gunhyeong on 2021/01/13.
//

import UIKit

class FindPWViewController: UIViewController {
    
    @IBOutlet weak var btnFindPW: UIButton!
    @IBOutlet weak var lblIncorrectUserID: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setting()
    }
    
    func setting() {
        btnFindPW.layer.cornerRadius = 14
        lblIncorrectUserID.isHidden = true
    }

    @IBAction func findPW(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
