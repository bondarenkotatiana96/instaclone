//
//  Photo.swift
//  LabProtocolDelegate
//

import UIKit

class Photo {
    let photo: UIImage?
    let caption: String
    
    init(photo: UIImage?, caption: String) {
        self.photo = photo
        self.caption = caption
    }
}
