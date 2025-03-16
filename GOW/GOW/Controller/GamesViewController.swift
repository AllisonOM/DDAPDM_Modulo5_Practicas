//
//  GamesViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class GamesViewController: UIViewController {
    
    @IBOutlet weak var gameImage: UIImageView!
    
    @IBOutlet weak var imagePageControl: UIPageControl!
    
    @IBAction func rigthSwipeDone(_ sender: Any) {
//        print("Rigth swipe done!")
        if imagePageControl.currentPage == 0 {
            imagePageControl.currentPage = 7
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        }
        else {
            imagePageControl.currentPage -= 1
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        }
        updateImage()
    }
    
    @IBAction func leftSwipeDone(_ sender: Any) {
//        print("Left swipe done!")
        if imagePageControl.currentPage == 7 {
            imagePageControl.currentPage = 0
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        } else {
            imagePageControl.currentPage += 1
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        }
        updateImage()
    }
    
    //datasource :P
    let gamePosters = Array(0...7)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imagePageControl.numberOfPages = gamePosters.count
        gameImage.image = UIImage(named: gamePosters.first?.description ?? "0")
        
        updatePageControl()
    }
    
    func updateImage() {
        gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        updatePageControl()
    }
    
    func updatePageControl() {
        let activeImage = UIImage(named: "gow_logo")?.withRenderingMode(.alwaysTemplate)

        for index in 0..<gamePosters.count {
            if index == imagePageControl.currentPage {
                imagePageControl.setIndicatorImage(nil, forPage: index)
            } else {
                imagePageControl.setIndicatorImage(nil, forPage: index)
            }
        }

        imagePageControl.setIndicatorImage(activeImage, forPage: imagePageControl.currentPage)
        imagePageControl.currentPageIndicatorTintColor = .red
    }
}
