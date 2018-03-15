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
    var container: NSPersistentContainer!
    var commits = [Commit]()
    var commitPredicate: NSPredicate?
    var fetchedResultsController: NSFetchedResultsController<GitAuthor>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let gitAuthor = self.gitAuthor {
            title = gitAuthor.name
        }
        
        container = NSPersistentContainer(name: "Project38")
        container.loadPersistentStores { storeDescription, error in
            self.container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
            
            if let error = error {
                print("Unresolved \(error)")
            }
        }
        
        self.isEditing = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return gitAuthor?.commits.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        if let commit = gitAuthor?.commits.object(at: indexPath.row) as? Commit {
            cell.textLabel?.text = commit.message
        }
        
        return cell
    }
}
