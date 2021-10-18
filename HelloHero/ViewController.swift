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
            make.bottom.equalTo(self.view.safeArea.bottom).offset(-80)
            make.top.equalTo(self.view.safeArea.top).offset(80)
        }
        let tapSampleView = UITapGestureRecognizer(target: self, action: #selector(showDetailView))
        sampleView.isUserInteractionEnabled = true
        sampleView.addGestureRecognizer(tapSampleView)
        sampleView.hero.id = "sample"
    }

    @objc func showDetailView() {
        let destinationVC = DetailViewController()
        destinationVC.modalPresentationStyle = .fullScreen
        present(destinationVC, animated: true, completion: nil)
    }
    
}

extension UIView {
    /**
     Apply safe Area
     
     When use SnapKit, apply safeArea
     ```
     import Snapkit
     
     view.snp.makeConstraints { make in
        make.top.equal(self.view.safeArea.top)
     }
     ```
     */
    var safeArea: ConstraintLayoutGuideDSL {
        return safeAreaLayoutGuide.snp
    }
}
