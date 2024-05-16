//
//  NetflixMainViewController.swift
//  SesacAssignment0514
//
//  Created by 하연주 on 5/16/24.
//

import UIKit

class NetflixMainViewController: UIViewController {

    private let contentNameList = ["노량", "더퍼스트슬램덩크", "밀수", "범죄도시3", "서울의봄", "스즈메의문단속", "신과함께죄와벌", "아바타", "아바타물의길", "어벤져스엔드게임", "오펜하이머", "육사오", "콘크리트유토피아"]
    private let booleanArray = [true, false]
    
    @IBOutlet var mainImageView: UIImageView!
    
    @IBOutlet var playButton: UIButton!
    @IBOutlet var selectedContentButton: UIButton!
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var firstImageView: UIImageView!
    @IBOutlet var secondImageView: UIImageView!
    @IBOutlet var thirdImageView: UIImageView!
    
    
    @IBOutlet var firstImageTop10ImageView: UIImageView!
    @IBOutlet var secondImageTop10ImageView: UIImageView!
    @IBOutlet var thirdImageTop10ImageView: UIImageView!
    
    @IBOutlet var firstImageWatchNowLabel: UILabel!
    @IBOutlet var secondImageWatchNowLabel: UILabel!
    @IBOutlet var thirdImageWatchNowLabel: UILabel!
    
    @IBOutlet var firstImageNewEpisodeLabel: UILabel!
    @IBOutlet var secondImageNewEpisodeLabel: UILabel!
    @IBOutlet var thirdImageNewEpisodeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "고래밥님"
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]

        view.backgroundColor = .black

        mainImageView.backgroundColor = .white
        mainImageView.image = UIImage(named: "노량")
        mainImageView.contentMode = .scaleAspectFill
        mainImageView.layer.masksToBounds = true
        mainImageView.layer.cornerRadius = 10
        
        
        
        playButton.setImage(UIImage(named: "play_normal"), for: .normal)
        playButton.setTitle("", for: .normal)
        
        
        selectedContentButton.backgroundColor = .darkGray
        selectedContentButton.setTitleColor(.white, for: .normal)
        selectedContentButton.setTitle("+ 내가 찜한 리스트", for: .normal)
        selectedContentButton.layer.masksToBounds = true
        selectedContentButton.layer.cornerRadius = 10
        
        label.text = "지금 뜨는 콘텐츠"
        label.textColor = .white
        
        
        firstImageView.image = UIImage(named: "서울의봄")
        firstImageView.contentMode = .scaleAspectFill
        firstImageView.layer.masksToBounds = true
        firstImageView.layer.cornerRadius = 5
        
        
        secondImageView.image = UIImage(named: "밀수")
        secondImageView.contentMode = .scaleAspectFill
        secondImageView.layer.masksToBounds = true
        secondImageView.layer.cornerRadius = 5
        
        
        thirdImageView.image = UIImage(named: "범죄도시3")
        thirdImageView.contentMode = .scaleAspectFill
        thirdImageView.layer.masksToBounds = true
        thirdImageView.layer.cornerRadius = 5
        
        [firstImageTop10ImageView, secondImageTop10ImageView, thirdImageTop10ImageView]
            .forEach{
                $0.image = UIImage(named: "top10badge")
            }
        
        [firstImageWatchNowLabel, secondImageWatchNowLabel, thirdImageWatchNowLabel]
            .forEach{
                $0.text = "지금 시청하기"
                $0.textAlignment = .center
                $0.font = UIFont.systemFont(ofSize: 12, weight: .heavy)
                $0.backgroundColor = .white
                $0.textColor = .black
            }
        
        [firstImageNewEpisodeLabel, secondImageNewEpisodeLabel, thirdImageNewEpisodeLabel]
            .forEach{
                $0.text = "새로운 시리즈"
                $0.textAlignment = .center
                $0.font = UIFont.systemFont(ofSize: 12, weight: .heavy)
                $0.backgroundColor = .red
                $0.textColor = .white
            }
        
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        mainImageView.image = UIImage(named: contentNameList.randomElement()!)
        firstImageView.image = UIImage(named: contentNameList.randomElement()!)
        secondImageView.image = UIImage(named: contentNameList.randomElement()!)
        thirdImageView.image = UIImage(named: contentNameList.randomElement()!)
        
        
        [firstImageTop10ImageView, secondImageTop10ImageView, thirdImageTop10ImageView]
            .forEach{
                $0.layer.opacity = booleanArray.randomElement()! ? 1 : 0
            }
        
        [firstImageWatchNowLabel, secondImageWatchNowLabel, thirdImageWatchNowLabel]
            .forEach{
                $0.layer.opacity = booleanArray.randomElement()! ? 1 : 0
            }
        
        [firstImageNewEpisodeLabel, secondImageNewEpisodeLabel, thirdImageNewEpisodeLabel]
            .forEach{
                $0.layer.opacity = booleanArray.randomElement()! ? 1 : 0
            }
    }
}
