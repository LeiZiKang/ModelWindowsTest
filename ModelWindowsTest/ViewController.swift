//
//  ViewController.swift
//  ModelWindowsTest
//
//  Created by Lei Levi on 19/1/2025.
//

import UIKit
import SnapKit

class ViewController: BaseViewController {
    
    private let navButton: UIButton = {
        let button = UIButton()
        button.setTitle("nav", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.label.text = "ViewController 1"
        
        view.addSubview(navButton)
        navButton.snp.makeConstraints { make in
            make.centerX.equalTo(label)
            make.top.equalTo(label.snp.bottom).offset(100)
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        navButton.addTarget(self, action: #selector(navButtonClick), for: .touchUpInside)
        
        addNotiObservable()
    }
    
    private func addNotiObservable() {
        NotificationCenter.default.addObserver(forName: showModelViewController, object: nil, queue: .main) { [weak self] noti in
            guard let self  = self else { return }
            let modelViewController = ModelViewController()
            self.present(modelViewController, animated: true)
        }
        NotificationCenter.default.addObserver(forName: showAlert, object: nil, queue: .main) { [weak self] noti in
            guard let self  = self else { return }
            let alert = UIAlertController(title: "提示", message: "hello world", preferredStyle: .alert)
            alert.addAction(.init(title: "sure", style: .default))
            alert.addAction(.init(title: "cancle", style: .cancel))
            self.present(alert, animated: true)
        }
    }
    
    @objc private func navButtonClick() {
        let vc = ViewControllerSecond.init()
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


