//
//  Song+Convenience.swift
//  PlaylistCoredata
//
//  Created by Jordan Furr on 3/4/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import Foundation
import CoreData

extension Song {
    convenience init(title: String, artist: String, moc: NSManagedObjectContext = CoreDataStack.context){
        self.init(context: moc)
        self.title = title
        self.artist = artist
        self.playlist = playlist
        
    }
}
