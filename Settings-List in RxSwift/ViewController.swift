//
//  ViewController.swift
//  Settings-List in RxSwift
//
//  Created by Ibragim Akaev on 15/03/2021.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    private let bag = DisposeBag()
    private let settings = Observable.just([
        Settings(name: "General", icon: Images.general),
        Settings(name: "Control Center", icon: Images.controlCenter),
        Settings(name: "Display & Brightness", icon: Images.displayBrightness),
        Settings(name: "Accessibility", icon: Images.accessibility),
        Settings(name: "Wallpaper", icon: Images.wallpaper),
        Settings(name: "Touch ID & Passcode", icon: Images.touchID),
        Settings(name: "Battery", icon: Images.battery),
        Settings(name: "Privacy", icon: Images.privacy)
    ])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        configureTableView()
    }
    
    func configureTableView() {
        tableView.tableFooterView = UIView(frame: .zero)
        settings.bind(to: tableView.rx.items(cellIdentifier: "cell")) { index, settings, cell in
            cell.textLabel?.text = settings.name
            cell.imageView?.image = settings.icon
        }.disposed(by: bag)
    }
}

