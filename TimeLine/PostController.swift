//
//  PostController.swift
//  TimeLine
//
//  Created by Angel Contreras on 9/13/16.
//  Copyright © 2016 Angel Contreras. All rights reserved.
//

import Foundation
import UIKit

class PostController{
    
    static let sharedController = PostController()
    
    var posts: [Post] = []
    
    func createPost (image: UIImage, caption: String){
        guard let imageData = UIImageJPEGRepresentation(image, 0.5) else { return }
        
        let post = Post(photoData: imageData)
        addCommentToPost(comment: caption, post: post)
        
    }
    
    func addCommentToPost(comment: String, post: Post){
        let comment = Comment(text: comment, post: post)
        post.comments.append(comment)
    }
}
