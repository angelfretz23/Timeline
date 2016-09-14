//
//  Post.swift
//  TimeLine
//
//  Created by Angel Contreras on 9/13/16.
//  Copyright © 2016 Angel Contreras. All rights reserved.
//

import Foundation
import UIKit

class Post: Equatable {
    
    let photoData: Data?
    let timeStamp: Date
    var comments: [Comment]
    
    var photo: UIImage? {
        guard let photoData = photoData else { return nil }
        return UIImage(data: photoData)
    }
    
    init(photoData: Data, timeStamp: Date = Date(), comments: [Comment] = []){
        self.photoData = photoData
        self.timeStamp = timeStamp
        self.comments = comments
    }
}

func ==(lhs: Post, rhs: Post) -> Bool{
    return lhs.photoData == rhs.photoData && lhs.comments == rhs.comments
}
