//
//  Comment.swift
//  TimeLine
//
//  Created by Angel Contreras on 9/13/16.
//  Copyright © 2016 Angel Contreras. All rights reserved.
//

import Foundation
import UIKit

class Comment {
    let text: String
    let timeStamp: Date
    let post: Post
    
    init(text: String, post: Post, timeStamp: Date = Date()){
        self.text = text
        self.post = post
        self.timeStamp = timeStamp
    }
}
