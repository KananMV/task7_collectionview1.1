//
//  HomeScreenController.swift
//  task7_collectionview1.1
//
//  Created by Kenan Memmedov on 26.08.24.
//

import UIKit

class HomeScreenController: UIViewController{
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var collectionView: UICollectionView!{
        didSet{
            let flowLayout = UICollectionViewFlowLayout()
            collectionView.collectionViewLayout = flowLayout
            flowLayout.scrollDirection = .vertical
            flowLayout.minimumLineSpacing = 16
            flowLayout.itemSize = CGSize(width: 168, height: 254)
            collectionView.delegate = self
            collectionView.dataSource = self
            let nib = UINib(nibName: "CustomCollectionViewCell", bundle: nil )
            collectionView.register(nib, forCellWithReuseIdentifier: "CollectionViewCell")
        }
    }
    override func viewDidLoad() {
        setup()
    }
    
    func setup(){
        topView.layer.cornerRadius = 20
        topView.layer.borderWidth = 1
        let placeholderText = "Search for anything"
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.lightGray
        ]
        searchTextField.attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: attributes)
        topView.layer.borderColor = UIColor.lightGray.cgColor
        collectionView.backgroundColor = .clear
        if let navigationBar = self.navigationController?.navigationBar {
            navigationBar.isHidden = true
        }
        
    }
}
extension HomeScreenController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        
        let text = "Iphone 13 pro max \nDescriptionDescription"
        let text2 = "US $540.00 \nUS $600.00"
        cell.setupCellWith(title: text)
        cell.setupCellWith2(title2: text2)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Tabbar", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "NextViewController")
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
}
