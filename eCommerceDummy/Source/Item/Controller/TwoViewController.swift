//
//  TwoViewController.swift
//  eCommerceDummy
//
//  Created by Sayyid Maulana Khakul Yakin on 22/05/21.
//

import UIKit

class TwoViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let reuseIdentifier = "cell"
    
    var dataObject: [Data] = [
        Data(image: UIImage(named: "Abyssinan")!),
        Data(image: UIImage(named: "Burmese")!),
        Data(image: UIImage(named: "Muezza")!),
        Data(image: UIImage(named: "MaineCoon")!),
        Data(image: UIImage(named: "Persian")!),
        Data(image: UIImage(named: "Ragdoll")!),
        Data(image: UIImage(named: "Siam")!),
        Data(image: UIImage(named: "Sphynx")!)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Cat Catalouge"
        setupView()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataObject.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! TwoViewCell
        cell.img.image = dataObject[indexPath.item].image
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width / 3.5, height: 90)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 10, bottom: 25, right: 10)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 25
    }
    
    private func setupView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(TwoViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.backgroundColor = .white
    }

}

#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct HomePreview: PreviewProvider {

    static var previews: some View {
        // view controller using programmatic UI
        TwoViewController().toPreview()
    }
}
#endif

