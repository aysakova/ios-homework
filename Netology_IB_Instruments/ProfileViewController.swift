//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Aysa Minkova on 2021/08/05.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let profileView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? ProfileView {
            view.addSubview(profileView)
        }
    }
}
