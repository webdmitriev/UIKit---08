//
//  UIView.ext.swift
//  UIKit - 08
//
//  Created by Олег Дмитриев on 08.08.2024.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView ...) {
        views.forEach {
            self.addSubview($0)
        }
    }
}
