//
//  QueueDetailsViewController.swift
//  SpotifyTogetherIOS
//
//  Created by Red iDTech on 8/16/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import Foundation
import UIKit

class QueueDetailsViewController : UIViewController{
    
    @IBOutlet weak var songImageView: UIImageView!
    @IBOutlet weak var songLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    
    var albumArtFileName = ""
    var songName = ""
    var artist = ""
    
    override func viewDidLoad() {
        songImageView.image = UIImage(named: albumArtFileName)
        songLabel.text = songName
        artistLabel.text = artist
    }
    
}
