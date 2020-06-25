//
//  MenuViewController.swift
//  iOSTest
//

import UIKit

class MenuViewController: UIViewController {
    
    /**
     * =========================================================================================
     * INSTRUCTIONS
     * =========================================================================================
     *
     * 1) UI must work on iOS phones of multiple sizes. Do not worry about iPads.
     *
     * 2) Use Autolayout to make sure all UI works for each resolution
     *
     * 3) Use this starter project as a base and build upon it. It is ok to remove some of the
     *    provided code if necessary. It is ok to add any classes. This is your project now!
     *
     * =========================================================================================
     */
    
    // MARK: - Outlets
    
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var animationButton: UIButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        
        super.viewDidLoad()
        navigationItemStyle()
        buttonStyle()
    }
    
    // MARK: - Actions

    @IBAction func chat(_ sender: UIButton) {
        let chatViewController = ChatViewController()
        navigationController?.pushViewController(chatViewController, animated: true)
    }
    
    @IBAction func login(_ sender: UIButton) {
        let loginViewController = LoginViewController()
        navigationController?.pushViewController(loginViewController, animated: true)
    }
    
    @IBAction func animation(_ sender: UIButton) {
        let animationViewController = AnimationViewController()
        navigationController?.pushViewController(animationViewController, animated: true)
    }
    
    func buttonStyle() {
        chatButton.layer.cornerRadius = 8
        loginButton.layer.cornerRadius = 8
        animationButton.layer.cornerRadius = 8
    }
    
    func navigationItemStyle() {
        navigationItem.title = "Coding Tasks"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}
