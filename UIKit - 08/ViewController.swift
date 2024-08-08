//
//  ViewController.swift
//  UIKit - 08
//
//  Created by Олег Дмитриев on 08.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let posts = PostData.mockData()

    lazy var tableView: UITableView = {
        $0.dataSource = self
        $0.separatorStyle = .none
        $0.register(PostCell.self, forCellReuseIdentifier: PostCell.reuseID)
        return $0
    }(UITableView(frame: view.frame, style: .plain))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBrown
        view.addSubview(tableView)
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostCell.reuseID, for: indexPath) as! PostCell
        
        cell.selectionStyle = .none
        
        let post = posts[indexPath.row]
        cell.setupCell(post: post)
        
        return cell
    }
    
    
}
