//
//  PostListTableViewController.swift
//  TimeLine
//
//  Created by Angel Contreras on 9/13/16.
//  Copyright © 2016 Angel Contreras. All rights reserved.
//

import UIKit

class PostListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PostController.sharedController.posts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as? PostTableViewCell

        let post = PostController.sharedController.posts[indexPath.row]
        cell?.updateWithPost(post: post)

        return cell ?? PostTableViewCell()
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            let post = PostController.sharedController.posts[indexPath.row]
            PostController.sharedController.removePost(post: post)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }


    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail", let indexPath = tableView.indexPathForSelectedRow {
            let post = PostController.sharedController.posts[indexPath.row]
            let postDetailTVC = segue.destination as? PostDetailTableViewController
            postDetailTVC?.selectedPost = post
        }
        
    }
}
