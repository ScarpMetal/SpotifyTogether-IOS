//
//  QueueTableViewController.swift
//  SpotifyTogetherIOS
//
//  Created by Red iDTech on 8/16/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import Foundation
import UIKit

class QueueTableViewController : UITableViewController{
    
    var showDetailSong : Song!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "QueueCell", for: indexPath) as! QueueCell
        
        cell.songLabel.text = songs[indexPath.row].songName
        cell.artistLabel.text = songs[indexPath.row].artist
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return songs.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showDetailSong = songs[indexPath.row]
        
        performSegue(withIdentifier: "queueShowDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "queueShowDetail"{
            
            let vc = segue.destination as! QueueDetailsViewController
            
            vc.albumArtFileName = showDetailSong.albumArtFileName
            vc.songName = showDetailSong.songName
            vc.artist = showDetailSong.artist
        }
    }
}
