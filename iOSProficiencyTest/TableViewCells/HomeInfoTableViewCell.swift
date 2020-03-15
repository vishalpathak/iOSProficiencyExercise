//
//  HomeInfoTableViewCell.swift
//  iOSProficiencyTest
//
//  Created by VishalP on 15/03/20.
//  Copyright © 2020 Vishal. All rights reserved.
//

import UIKit

class HomeInfoTableViewCell: UITableViewCell {

    fileprivate let titleLable: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .black
        title.numberOfLines = 0
        return title
    }()
    
    fileprivate let descriptionLabel: UILabel = {
       let description = UILabel()
        description.translatesAutoresizingMaskIntoConstraints = false
        description.textColor = .black
        description.numberOfLines = 0
        return description
    }()
    
    fileprivate var infoImage: UIImageView? = {
       let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(titleLable)
        addSubview(descriptionLabel)
        addSubview(infoImage!)
        setUpAutoLayOut()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpAutoLayOut() {

           let constraints = [titleLable.topAnchor.constraint(equalTo: topAnchor, constant: 16),
                              titleLable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
                              titleLable.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
                              
                              descriptionLabel.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 16),
                              descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
                              descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
                              
                              infoImage!.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
                              infoImage!.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
                              infoImage!.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
                              infoImage!.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
           ]
           NSLayoutConstraint.activate(constraints)
    }
    
}
