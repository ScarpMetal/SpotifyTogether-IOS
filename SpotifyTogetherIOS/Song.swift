//
//  Song.swift
//  SpotifyTogetherIOS
//
//  Created by Red iDTech on 8/16/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import Foundation
import UIKit

class Song{
    
    var songName : String
    var artist : String
    var albumArtFileName : String
    
    init(_ songName : String, _ artist : String, _ albumArtFileName : String){
        
        self.songName = songName
        self.artist = artist
        self.albumArtFileName = albumArtFileName
    }
}

var songs = [
    Song("Sunday Candy", "Chance The Rapper", "srf"),
    Song("Sorry Not Sorry", "Demi Lovato", "sns"),
    Song("Honeybody", "Sonderlust", "hon")
]
