//
//  CollectionViewCell.swift
//  task7_collectionview1.1
//
//  Created by Kenan Memmedov on 26.08.24.
//

import UIKit
class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productView: UIView!
    @IBOutlet weak var devicePhoto: UIImageView!
    
    @IBOutlet weak var discountView: UIView!
    
    @IBOutlet weak var deviceNameLabel: UILabel!
    
    @IBOutlet weak var discountLabel: UILabel!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
        
    }
    
    func setupCellWith(title: String){
        let attributedString = NSMutableAttributedString(string: title)
        if let range = title.range(of: "Iphone 13 pro max") {
            let nsRange = NSRange(range, in: title)
            attributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 16, weight: .semibold), range: nsRange)
        }
        if let range = title.range(of: "DescriptionDescription"){
            let nsRange = NSRange(range,in: title)
            attributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 14, weight: .regular), range: nsRange)
        }
        deviceNameLabel.attributedText = attributedString
    }
    func setupCellWith2(title2: String){
        let attributedString = NSMutableAttributedString(string: title2)
        if let range = title2.range(of: "US $540.00") {
            let nsRange = NSRange(range, in: title2)
            attributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 14, weight: .bold), range: nsRange)
        }
        if let range = title2.range(of: "US $600.00"){
            let nsRange = NSRange(range,in: title2)
            attributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 14, weight: .regular), range: nsRange)
            attributedString.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: nsRange)
            attributedString.addAttribute(.foregroundColor, value: UIColor.lightGray, range: nsRange)
        }
        discountLabel.attributedText = attributedString
    }
    func setupView(){
        discountView.layer.cornerRadius = 10
    }
}
