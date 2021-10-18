//
//  ViewController.swift
//  HelloHero
//
//  Created by Doyoung on 2021/10/18.
//

import UIKit
import SnapKit
import Hero

class ViewController: UIViewController {

    lazy var sampleView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemYellow
        self.view.addSubview(sampleView)
        sampleView.snp.makeConstraints { make in
            //make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(60)
            make.trailing.equalToSuperview().offset(-60)
            make.bottom.equalToSuperview().offset(-80)
            make.top.equalToSuperview().offset(80)
        }
        let tapSampleView = UITapGestureRecognizer(target: self, action: #selector(showDetailView))
        sampleView.isUserInteractionEnabled = true
        sampleView.addGestureRecognizer(tapSampleView)
    }

    @objc func showDetailView() {
        print("Hellp Deatil View")
    }
    
}

