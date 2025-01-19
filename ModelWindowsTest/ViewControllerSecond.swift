//
//  ViewController2.swift
//  ModelWindowsTest
//
//  Created by Lei Levi on 19/1/2025.
//

import UIKit


class ViewControllerSecond: BaseViewController {

    let showModelVCButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show Model ViewController", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.isHidden = true
        
        view.addSubview(showModelVCButton)
        showModelVCButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        
        showModelVCButton.addTarget(self, action: #selector(showModelVCButtonClick), for: .touchUpInside)
        
    }
    
    @objc private func showModelVCButtonClick() {
        NotificationCenter.default.post(name: showModelViewController, object: true)
    }
}
