//
//  viewCell.swift
//  TwoControllers
//
//  Created by Larry Mcdowell on 8/7/19.
//  Copyright © 2019 Larry Mcdowell. All rights reserved.
//

import UIKit

class viewCell: UICollectionViewCell {
    
    var text:String? {
        didSet{
            if let temp = text {
            textLabel.text = temp
            } else {return}
            print("set cell text")
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        contentView.addSubview(textLabel)
        textLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
        textLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
        textLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
        print("cell made")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    var textLabel:UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont(name: "GillSans", size: 20)
        lbl.textColor = .white
        lbl.backgroundColor = .gray
        lbl.layer.borderColor = UIColor.black.cgColor
        lbl.layer.cornerRadius = 5
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
}
