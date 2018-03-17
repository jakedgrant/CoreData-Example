//
//  AuthorTableViewController.swift
//  Project38
//
//  Created by Jake Grant on 3/13/18.
//  Copyright © 2018 Jake Grant. All rights reserved.
//

import UIKit
import CoreData

class AuthorTableViewController: UITableViewController, NSFetchedResultsControllerDelegate {
    var gitAuthor: GitAuthor?
    var commits: NSOrderedSet = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let gitAuthor = self.gitAuthor {
            title = gitAuthor.name
            commits = gitAuthor.commits
        }
        
        self.isEditing = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return commits.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "Cell")
        cell.selectionStyle = .none

        if let commit = commits.object(at: indexPath.row) as? Commit {
            cell.textLabel?.text = commit.message
            cell.textLabel?.numberOfLines = 0
            cell.detailTextLabel?.text = commit.date.description
        }
        
        return cell
    }
    
}
