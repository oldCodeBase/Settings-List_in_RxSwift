//
//  ViewController.swift
//  Settings-List in RxSwift
//
//  Created by Ibragim Akaev on 15/03/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    let settings = [
        Settings(name: "General", icon: UIImage(systemName: "gear")!),
        Settings(name: "Control Center", icon: UIImage(systemName: "switch.2")!),
        Settings(name: "Display & Brightness", icon: UIImage(systemName: "textformat.size")!),
        Settings(name: "Home Screen", icon: UIImage(systemName: "gear")!),
        Settings(name: "Accessibility", icon: UIImage(systemName: "gear")!),
        Settings(name: "Wallpaper", icon: UIImage(systemName: "gear")!),
        Settings(name: "Siri & Search", icon: UIImage(systemName: "gear")!),
        Settings(name: "Touch ID & Passcode", icon: UIImage(systemName: "gear")!),
        Settings(name: "Emergency SOS", icon: UIImage(systemName: "gear")!),
        Settings(name: "Exposure Notifications", icon: UIImage(systemName: "gear")!),
        Settings(name: "Battery", icon: UIImage(systemName: "gear")!),
        Settings(name: "Privacy", icon: UIImage(systemName: "gear")!)
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

