//
//  SongController.swift
//  PlaylistCoredata
//
//  Created by Jordan Furr on 3/4/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import Foundation
import CoreData

class SongController {
    
    //MARK: CRUD
    func createSong(with title: String, with artist: String, addTo playlist: Playlist){
        Song(title: title, artist: artist, playlist:playlist)
        PlaylistController.shared.saveToPersistenceStore()
    }
    
    func deleteSong(song: Song){
        CoreDataStack.context.delete(song)
        PlaylistController.shared.saveToPersistenceStore()
    }
}//End of class
