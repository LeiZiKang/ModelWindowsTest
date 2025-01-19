//
//  BaseViewController.swift
//  ModelWindowsTest
//
//  Created by Lei Levi on 19/1/2025.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .systemBackground
        setUpView()
        setUpLayout()

    }

    private func setUpView () {
        view.addSubview(label)
    }

    private func setUpLayout() {
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
