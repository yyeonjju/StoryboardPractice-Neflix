//
//  NetflixSearchViewController.swift
//  SesacAssignment0514
//
//  Created by 하연주 on 5/16/24.
//

import UIKit

extension UITextField {
func setIcon(_ image: UIImage) {
   let iconView = UIImageView(frame:
                  CGRect(x: 10, y: 5, width: 20, height: 20))
   iconView.image = image
   let iconContainerView: UIView = UIView(frame:
                  CGRect(x: 20, y: 0, width: 30, height: 30))
   iconContainerView.addSubview(iconView)
   leftView = iconContainerView
   leftViewMode = .always
}
}


class NetflixSearchViewController: UIViewController {
    @IBOutlet var searchBarTextField: UITextField!
    
    @IBOutlet var toBeReleasedButton: UIButton!
    @IBOutlet var popularContentsButton: UIButton!
    @IBOutlet var top10ContentButton: UIButton!
    
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var subLabel: UILabel!
    
    @IBOutlet var searchResultImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "NEW & HOT 검색"
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]

        view.backgroundColor = .black
        

        searchBarTextField.attributedPlaceholder = NSAttributedString(string:  "게임, 시리즈, 영화를 검색하세요", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        searchBarTextField.setIcon(UIImage(systemName: "magnifyingglass")!)
        searchBarTextField.tintColor = .lightGray // 돋보기 아이콘의 컬러
        searchBarTextField.textColor = .white //실제 입력했을 때의 컬러
        
        
        toBeReleasedButton.setTitle("공개 예정", for: .normal)
        toBeReleasedButton.tintColor = .black
        toBeReleasedButton.setImage(UIImage(named:"blue"), for: .normal)
        toBeReleasedButton.backgroundColor = .white
        toBeReleasedButton.layer.masksToBounds = true
        toBeReleasedButton.layer.cornerRadius = 15
        
        popularContentsButton.setTitle("인기 콘텐츠", for: .normal)
        popularContentsButton.tintColor = .black
        popularContentsButton.setImage(UIImage(named:"turquoise"), for: .normal)
        popularContentsButton.backgroundColor = .lightGray
        popularContentsButton.layer.masksToBounds = true
        popularContentsButton.layer.cornerRadius = 15
        
        top10ContentButton.setTitle("Top 10 시리즈", for: .normal)
        top10ContentButton.tintColor = .black
        top10ContentButton.setImage(UIImage(named:"pink"), for: .normal)
        top10ContentButton.backgroundColor = .lightGray
        top10ContentButton.layer.masksToBounds = true
        top10ContentButton.layer.cornerRadius = 15
        
        
        mainLabel.textColor = .white
        mainLabel.text = "이런! 찾으시는 작품이 없습니다."
        mainLabel.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        mainLabel.textAlignment = .center
        
        subLabel.textColor = .white
        subLabel.text = "다른 영화, 시리즈, 감독 또는 장르를 찾아보세요"
        subLabel.textAlignment = .center
        
    }

    

    @IBAction func searchTextFieldReturnTapped(_ sender: UITextField) {
        
        if let searchImage = UIImage(named: sender.text ?? ""){
            searchResultImage.layer.opacity = 1
            searchResultImage.image = searchImage
            
            mainLabel.layer.opacity = 0
            subLabel.layer.opacity = 0
        }else {
            searchResultImage.layer.opacity = 0
            
            mainLabel.layer.opacity = 1
            subLabel.layer.opacity = 1
        }
    }
    
    
    @IBAction func toBeReleasedButtonTapped(_ sender: UIButton) {
        toBeReleasedButton.backgroundColor = .white
        popularContentsButton.backgroundColor = .lightGray
        top10ContentButton.backgroundColor = .lightGray
        
        
        mainLabel.text = "공개 예정 버튼 눌림!"
        mainLabel.layer.opacity = 1
        subLabel.layer.opacity = 0
        searchResultImage.image = nil
    }
    
    @IBAction func popularContentsButtonTapped(_ sender: UIButton) {
        toBeReleasedButton.backgroundColor = .lightGray
        popularContentsButton.backgroundColor = .white
        top10ContentButton.backgroundColor = .lightGray
        
        mainLabel.text = "인기 콘텐츠 버튼 눌림!"
        mainLabel.layer.opacity = 1
        subLabel.layer.opacity = 0
        searchResultImage.image = nil
    }
    
    @IBAction func top10ContentButtonTapped(_ sender: UIButton) {
        toBeReleasedButton.backgroundColor = .lightGray
        popularContentsButton.backgroundColor = .lightGray
        top10ContentButton.backgroundColor = .white
        
        mainLabel.text = "Top10 시리즈 버튼 눌림!"
        mainLabel.layer.opacity = 1
        subLabel.layer.opacity = 0
        searchResultImage.image = nil
    }
    
    
}
