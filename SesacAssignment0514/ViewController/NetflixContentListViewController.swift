//
//  NetflixContentListViewController.swift
//  SesacAssignment0514
//
//  Created by 하연주 on 5/16/24.
//

import UIKit

class NetflixContentListViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var subLabel: UILabel!
    
    @IBOutlet var firstImageView: UIImageView!
    @IBOutlet var secondImageView: UIImageView!
    @IBOutlet var thirdImageView: UIImageView!
    
    @IBOutlet var settingsButton: UIButton!
    @IBOutlet var showContentButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "저장한 콘텐츠 목록"
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]

        view.backgroundColor = .black
        
        
        
        mainLabel.textColor = .white
        mainLabel.text = "\("나만의 자동 저장") 기능"
        mainLabel.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        mainLabel.textAlignment = .center
        
        subLabel.textColor = .white
        subLabel.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다. \n 디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 없어요."
        subLabel.numberOfLines = 0
        subLabel.textAlignment = .center
        subLabel.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        
        
        firstImageView.image = UIImage(named: "스즈메의문단속")
        firstImageView.transform = CGAffineTransform(rotationAngle: -40/180)
        
        secondImageView.image = UIImage(named: "신과함께죄와벌")
        
        
        thirdImageView.image = UIImage(named: "아바타")
        thirdImageView.transform = CGAffineTransform(rotationAngle: 40/180)
        
        
        settingsButton.setTitle("설정하기", for: .normal)
        settingsButton.backgroundColor = .blue
        settingsButton.setTitleColor(.white, for: .normal)
        settingsButton.layer.masksToBounds = true
        settingsButton.layer.cornerRadius = 10
        
        showContentButton.setTitle("저장가능한 콘텐츠 살펴보기", for: .normal)
        showContentButton.backgroundColor = .white
        showContentButton.setTitleColor(.black, for: .normal)
        showContentButton.layer.masksToBounds = true
        showContentButton.layer.cornerRadius = 10
        
        
    }
}
