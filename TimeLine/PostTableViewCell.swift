//
//  PostTableViewCell.swift
//  TimeLine
//
//  Created by Angel Contreras on 9/13/16.
//  Copyright © 2016 Angel Contreras. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var imageFromPost: UIImageView!
    
    func updateWithPost(post: Post){
        guard let imageFromData = post.photoData else { return }
        imageFromPost.image = UIImage(data: imageFromData)
    }

}
