//
//  OneViewCell.swift
//  eCommerceDummy
//
//  Created by Sayyid Maulana Khakul Yakin on 22/05/21.
//

import UIKit

class OneViewCell: UITableViewCell {
    
    var page: MainData? {
        didSet {
            guard let unwrappedPageLogin = page else { return }
            img.image = UIImage(named: unwrappedPageLogin.img)
            let attrText = NSMutableAttributedString(string: unwrappedPageLogin.name, attributes: [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 18)])
            attrText.append(NSAttributedString(string: "\n\n\n\(unwrappedPageLogin.desc)", attributes: [NSAttributedString.Key.font : UIFont.italicSystemFont(ofSize: 12), NSAttributedString.Key.foregroundColor: UIColor.gray]))
            
            label.attributedText = attrText
            label.textAlignment = .center
            label.isScrollEnabled = false
            label.isEditable = false
        }
    }
    
    lazy var img: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 20
        img.clipsToBounds = true
        return img
    }()
    
    let label: UITextView = {
        let text = UITextView()
        text.backgroundColor = .clear
        return text
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell() {
        backgroundColor = .white
        addSubview(img)
        addSubview(label)
        
        img.setAnchor(top: topAnchor, left: leadingAnchor, bottom: bottomAnchor, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 10, paddingRight: 0, width: 100, height: 100)
        label.setAnchor(top: topAnchor, left: img.trailingAnchor, bottom: bottomAnchor, right: trailingAnchor, paddingTop: 10, paddingLeft: 20, paddingBottom: 10, paddingRight: 20, width: 0, height: 0)

    }

}
