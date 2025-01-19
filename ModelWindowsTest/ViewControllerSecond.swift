//
//  ViewController2.swift
//  ModelWindowsTest
//
//  Created by Lei Levi on 19/1/2025.
//

import UIKit


class ViewControllerSecond: BaseViewController {
    
    private  let showModelVCButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show Model ViewController", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    private let showAlertButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show Alert", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.isHidden = true
        
        view.addSubview(showModelVCButton)
        showModelVCButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(40)
        }
        
        showModelVCButton.addTarget(self, action: #selector(showModelVCButtonClick), for: .touchUpInside)
        
        view.addSubview(showAlertButton)
        showAlertButton.snp.makeConstraints { make in
            make.centerX.equalTo(showModelVCButton)
            make.top.equalTo(showModelVCButton.snp.bottom).offset(10)
            make.width.equalTo(100)
            make.height.equalTo(40)
        }
        showAlertButton.addTarget(self, action: #selector(showAlertButtonClick), for: .touchUpInside)
    }
    
    @objc private func showModelVCButtonClick() {
        NotificationCenter.default.post(name: showModelViewController, object: true)
    }
    
    @objc private func showAlertButtonClick() {
        NotificationCenter.default.post(name: showAlert, object: true)
    }
}
