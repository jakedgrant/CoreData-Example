//
//  DetailViewController.swift
//  Project38
//
//  Created by Jake Grant on 3/8/18.
//  Copyright © 2018 Jake Grant. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var detailItem: Commit?

    @IBOutlet var detailLabel: UILabel!
    @IBOutlet var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let detail = self.detailItem {
            detailLabel.text = detail.message
            
            if let url = URL(string: detail.url) {
                webView.load(URLRequest(url: url))
                webView.allowsBackForwardNavigationGestures = true
            }
            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Commit 1/\(detail.author.commits.count)", style: .plain, target: self, action: #selector(showAuthorCommits))
        }
    }

    @objc func showAuthorCommits() {
        if let detail = self.detailItem {
            let author = detail.author

            let vc = AuthorTableViewController.init(style: .plain) 
            vc.gitAuthor = author
            navigationController?.pushViewController(vc, animated: true)
            
            
        }
    }

}
