//
//  TwoViewCell.swift
//  eCommerceDummy
//
//  Created by Sayyid Maulana Khakul Yakin on 23/05/21.
//

import UIKit

class TwoViewCell: UICollectionViewCell {
    
    var item: Data? {
        didSet {
            guard let unwrappedItem = item else {
                return
            }
            img.image = unwrappedItem.image
        }
    }
    
    lazy var img: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.layer.cornerRadius = 10
        return img
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        cellShadow()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(img)
        img.setAnchor(top: topAnchor, left: leadingAnchor, bottom: bottomAnchor, right: trailingAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    private func cellShadow() {
        self.backgroundColor = .white
        self.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 3.0
        self.layer.cornerRadius = 10
    }
    
}
