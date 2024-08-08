//
//  PostData.swift
//  UIKit - 08
//
//  Created by Олег Дмитриев on 08.08.2024.
//

import Foundation

struct PostData {
    var image: String
    var label: String
    var subLabel: String
    
    static func mockData() -> [PostData] {
        [
            PostData(image: "cat", label: "Label 1", subLabel: "Created by Олег Дмитриев"),
            PostData(image: "cat", label: "Label 2", subLabel: "Created by Олег Дмитриев"),
            PostData(image: "cat", label: "Label 3", subLabel: "Created by Олег Дмитриев"),
            PostData(image: "cat", label: "Label 4", subLabel: "Created by Олег Дмитриев"),
            PostData(image: "cat", label: "Label 5", subLabel: "Created by Олег Дмитриев"),
        ]
    }
}
