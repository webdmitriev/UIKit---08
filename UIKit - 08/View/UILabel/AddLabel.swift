//
//  AddLabel.swift
//  UIKit - 08
//
//  Created by Олег Дмитриев on 08.08.2024.
//

import UIKit

class AddLabel: UILabel {
    let labelText: String
    let labelFontS: CGFloat
    let labelFontW: UIFont.Weight
    let labelColor: UIColor
    let labelLines: Int
    
    init(labelText: String, labelFontS: CGFloat,
         labelFontW: UIFont.Weight = .regular, labelLines: Int = 0, labelColor: UIColor = .black) {
        self.labelText = labelText
        self.labelFontS = labelFontS
        self.labelFontW = labelFontW
        self.labelLines = labelLines
        self.labelColor = labelColor
        
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = false
        text = labelText
        font = .systemFont(ofSize: labelFontS, weight: labelFontW)
        numberOfLines = labelLines
        textColor = labelColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
