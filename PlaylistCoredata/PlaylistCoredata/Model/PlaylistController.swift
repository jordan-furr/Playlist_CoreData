//
//  PlaylistController.swift
//  PlaylistCoredata
//
//  Created by Jordan Furr on 3/4/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import Foundation
import CoreData

class PlaylistController {
    
    //MARK: Singleton
    static let shared = PlaylistController()
    
    
    //MARK: Source of Truth
    var playlists: [Playlist] {
        let fetchRequest: NSFetchRequest<Playlist> = Playlist.fetchRequest()
        return (try? CoreDataStack.context.fetch(fetchRequest)) ?? []
    }
    
    //MARK: CRUD
    func createPlaylist(name: String){
        Playlist(name: name)
        saveToPersistenceStore()
    }
    
    func deletePlaylist(playlist: Playlist){
        CoreDataStack.context.delete(playlist)
        saveToPersistenceStore()
    }
    
    func saveToPersistenceStore(){
        do {
            try CoreDataStack.context.save()
        } catch {
            print("There was an error saving the data!!!!! \(#function) \(error.localizedDescription)")
        }
    }
}//End of class
