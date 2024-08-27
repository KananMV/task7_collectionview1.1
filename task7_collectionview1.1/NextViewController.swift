//
//  NextViewController.swift
//  task7_collectionview1.1
//
//  Created by Kenan Memmedov on 27.08.24.
//

import UIKit

class NextViewController: UIViewController{

    @IBOutlet weak var viewDiscount: UIView!
    @IBOutlet weak var collectionView: UICollectionView!{
        didSet{
            let flowLayout = UICollectionViewFlowLayout()
            collectionView.collectionViewLayout = flowLayout
            flowLayout.scrollDirection = .horizontal
            let screenWidth = UIScreen.main.bounds.width
            flowLayout.minimumLineSpacing = 0
            flowLayout.itemSize = CGSize(width: screenWidth, height: 327)
            collectionView.delegate = self
            collectionView.dataSource = self
            let nib = UINib(nibName: "CollectionViewCell2", bundle: nil )
            collectionView.register(nib, forCellWithReuseIdentifier: "CollectionViewCell")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let backButton = UIBarButtonItem()
        backButton.title = ""
        navigationItem.leftBarButtonItem = backButton
        viewDiscount.layer.cornerRadius = 8
        
    }
    @IBAction func backTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
extension NextViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        return cell
    }
    
    
}
