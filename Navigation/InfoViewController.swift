//
//  InfoViewController.swift
//  Navigation
//
//  Created by Aysa Minkova on 2021/08/06.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemGreen
        
        let button = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
        button.backgroundColor = .lightGray
        button.setTitle("Alert", for: .normal)
        button.addTarget(self, action: #selector(openAlert), for: .touchUpInside)
        self.view.addSubview(button)

        // Do any additional setup after loading the view.
    }
    
    @objc func openAlert() {
        let vc = UIAlertController(title: "Oops", message: "Something went wrong", preferredStyle: .alert)
        vc.addAction(UIAlertAction(title: "Agree", style: .default, handler: nil))
        vc.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        print("Alert worked")
        self.present(vc, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
