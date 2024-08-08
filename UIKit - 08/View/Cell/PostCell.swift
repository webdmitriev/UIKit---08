//
//  PostCell.swift
//  UIKit - 08
//
//  Created by Олег Дмитриев on 08.08.2024.
//

import UIKit

class PostCell: UITableViewCell {
    
    static let reuseID = "PostCell"
    
    lazy var cellView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .lightGray
        return $0
    }(UIView())
    
    let titleLabel: UILabel = AddLabel(labelText: "Title", labelFontS: 22, labelFontW: .bold)

    let descrLabel: UILabel = AddLabel(labelText: "Descr", labelFontS: 16, labelColor: .gray)
    
    lazy var postImageOne: UIImageView = addImage()

    lazy var postImageTwo: UIImageView = addImage()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(cellView)
        
        cellView.addSubviews(titleLabel, postImageOne, postImageTwo, descrLabel)
        
        setupConstraints()
    }
    
    override func prepareForReuse() {
        self.titleLabel.text = nil
        self.postImageOne.image = nil
        self.postImageTwo.image = nil
        self.descrLabel.text = nil
    }
    
    func setupCell(post: PostData) {
        self.titleLabel.text = post.label
        self.postImageOne.image = UIImage(named: post.image)
        self.postImageTwo.image = UIImage(named: post.image)
        self.descrLabel.text = post.subLabel
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            cellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            cellView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            cellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            titleLabel.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 15),
            titleLabel.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -20),
            
            postImageOne.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            postImageOne.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 20),
            postImageOne.widthAnchor.constraint(equalTo: cellView.widthAnchor, multiplier: 0.5, constant: -26),
            
            postImageTwo.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            postImageTwo.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -20),
            postImageTwo.widthAnchor.constraint(equalTo: cellView.widthAnchor, multiplier: 0.5, constant: -26),
            
            descrLabel.topAnchor.constraint(equalTo: postImageOne.bottomAnchor, constant: 20),
            descrLabel.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 20),
            descrLabel.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -20),
            descrLabel.bottomAnchor.constraint(equalTo: cellView.bottomAnchor, constant: -20),
        ])
    }
    
    private func addImage() -> UIImageView {
        
        {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.heightAnchor.constraint(equalToConstant: 100).isActive = true
            $0.backgroundColor = .black
            $0.contentMode = .scaleAspectFit
            $0.clipsToBounds = true
            return $0
        }(UIImageView())
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
