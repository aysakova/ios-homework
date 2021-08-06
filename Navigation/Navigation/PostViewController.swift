//
//  PostViewController.swift
//  Navigation
//
//  Created by Aysa Minkova on 2021/08/05.
//

import UIKit

class PostViewController: UIViewController {
    
    private let postTitle: String?
    
    init(postTitle: String) {
        self.postTitle = postTitle
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = postTitle
        self.view.backgroundColor = .cyan
        openInfo()

    }
    
    private func openInfo() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .done, target: self, action: #selector(tap))
    }
    
    @objc func tap() {
        let vc = InfoViewController()
        vc.modalPresentationStyle = .formSheet
        self.present(vc, animated: true, completion: nil)
    }

}
