//
//  DetailViewController.swift
//  eCommerceDummy
//
//  Created by Sayyid Maulana Khakul Yakin on 23/05/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    lazy var imgMain: UIImageView = {
       let img = UIImageView()
       img.clipsToBounds = true
       img.layer.cornerRadius = 50
       return img
   }()
    
    let firstLabel: UILabel = {
       let label = UILabel()
       label.text = ""
       label.font = UIFont.boldSystemFont(ofSize: 13)
       return label
   }()
    let secondLabel: UILabel = {
       let label = UILabel()
       label.text = ""
       label.font = UIFont.systemFont(ofSize: 13)
       label.numberOfLines = 12
       return label
   }()
    
    var data: MainData?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
        setupData()
    }
    
    private func setupData() {
        if let result = data {
            imgMain.image = UIImage(named: result.img)
            firstLabel.text = result.name
            secondLabel.text = result.desc
        }
    }
    
    private func setupView() {
        view.addSubview(imgMain)
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        imgMain.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leadingAnchor, bottom: nil, right: view.trailingAnchor, paddingTop: 75, paddingLeft: 50, paddingBottom: 0, paddingRight: 50, width: 0, height: 200)
        firstLabel.setAnchor(top: imgMain.bottomAnchor, left: view.leadingAnchor, bottom: nil, right: view.trailingAnchor, paddingTop: 20, paddingLeft: 20, paddingBottom: 0, paddingRight: 20, width: 0, height: 0)
        secondLabel.setAnchor(top: firstLabel.bottomAnchor, left: view.leadingAnchor, bottom: nil, right: view.trailingAnchor, paddingTop: 20, paddingLeft: 20, paddingBottom: 0, paddingRight: 20, width: 0, height: 0)
    }

}
