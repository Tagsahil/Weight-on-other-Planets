//
//  InfoViewController.swift
//  Weight on other planets
//
//  Created by Sahil Tagunde on 21/07/20.
//  Copyright © 2020 sahiltagunde. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    var info:String = ""
    var name:String = ""
    var nick:String = ""
    var image = UIImage()
    
    @IBOutlet weak var lowerContainer: UIView!
    @IBOutlet weak var pImage: UIImageView!
    @IBOutlet weak var pInfo: UITextView!
    @IBOutlet weak var imageViewContainer: UIView!
    @IBOutlet weak var pNameLabel: UILabel!
    @IBOutlet weak var nickName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        load()
    }
    func load(){
        
        imageViewContainer.layer.cornerRadius = 20
        imageViewContainer.layer.shadowOffset = CGSize(width: 5, height: 5)
        imageViewContainer.layer.shadowRadius = 2
        imageViewContainer.layer.shadowOpacity = 0.5
        imageViewContainer.layer.borderWidth = 0.5
        imageViewContainer.layer.borderColor = UIColor.gray.cgColor
        
        lowerContainer.clipsToBounds = true
        lowerContainer.layer.cornerRadius = 40
        lowerContainer.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        pInfo.insertText(info)
        pNameLabel.text = name
        pImage.image = image
        nickName.text = nick
    }

    @IBAction func backButton(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
}
