//
//  FeedViewController.swift
//  Navigation
//
//  Created by Aysa Minkova on 2021/08/05.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
        button.backgroundColor = .lightGray
        button.setTitle("Go to post", for: .normal)
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        view.addSubview(button)
        
    }
    
    @objc func tap() {
        let vc = PostViewController(postTitle: post.title)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private let post = Post(title: "Read me")
}
