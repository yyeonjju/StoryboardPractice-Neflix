//
//  NetflixSignupViewController.swift
//  SesacAssignment0514
//
//  Created by 하연주 on 5/16/24.
//

import UIKit

class NetflixSignupViewController: UIViewController {

    
    @IBOutlet var netflixLabel: UILabel!
    
    
    @IBOutlet var idTextField: UITextField!
    @IBOutlet var pwTextField: UITextField!
    @IBOutlet var nicknameTextField: UITextField!
    @IBOutlet var location: UITextField!
    @IBOutlet var codeTextField: UITextField!
    
    @IBOutlet var signupButton: UIButton!
    
    @IBOutlet var additionalInfoButton: UIButton!
    @IBOutlet var switchButton: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
    
        netflixLabel.textColor = .red
        netflixLabel.text = "NETFLIX"
        netflixLabel.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        netflixLabel.textAlignment = .center
        
        
        [idTextField, pwTextField, nicknameTextField, location,codeTextField]
            .forEach{
                $0.backgroundColor = .gray
                $0.textColor = .white //실제 입력했을 때의 컬러
                $0.textAlignment = .center
            }
        
        idTextField.attributedPlaceholder = NSAttributedString(string:  "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        pwTextField.attributedPlaceholder = NSAttributedString(string:  "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        nicknameTextField.attributedPlaceholder = NSAttributedString(string:  "닉네임", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        location.attributedPlaceholder = NSAttributedString(string:  "위치", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        codeTextField.attributedPlaceholder = NSAttributedString(string:  "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        codeTextField.keyboardType = .numberPad
        
        
        signupButton.setTitle("회원가입", for: .normal)
        signupButton.tintColor = .black
        signupButton.backgroundColor = .white
        signupButton.layer.masksToBounds = true
        signupButton.layer.cornerRadius = 10
        
        
        additionalInfoButton.setTitle("추가 정보 입력", for: .normal)
        additionalInfoButton.tintColor = .white
        
        switchButton.onTintColor = .red
    }
    
    
    @IBAction func signupButtonTapped(_ sender: UIButton) {
        self.view.endEditing(true)
    }

}
