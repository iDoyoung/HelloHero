//
//  DetailViewController.swift
//  HelloHero
//
//  Created by Doyoung on 2021/10/18.
//

import UIKit
import SnapKit
import Hero

class DetailViewController: UIViewController {

    lazy var detail: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true
        self.view.addSubview(detail)
        detail.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeArea.top)
            make.bottom.equalTo(self.view.safeArea.bottom)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        detail.hero.id = "sample"
    }
    
}
