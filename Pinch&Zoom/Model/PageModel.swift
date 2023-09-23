//
//  PageModel.swift
//  Pinch&Zoom
//
//  Created by Willian Bogarin Jr on 2023. 09. 23..
//

import Foundation


struct Page: Identifiable {
    let id: Int
    let imageName: String
    
}

extension Page {
    var thumbnailName : String {
        return "thumb-" + imageName
    }
}
