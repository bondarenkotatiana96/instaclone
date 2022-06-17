//
//  PhotoController.swift
//  LabProtocolDelegate
//

import UIKit

class PhotoController {
  static var photos = [
    Photo(photo: UIImage(named: "anakin"), caption: "Jedi"),
    Photo(photo: UIImage(named: "yoda"), caption: "Jedi"),
    Photo(photo: UIImage(named: "yoda"), caption: "Jedi"),
    Photo(photo: UIImage(named: "anakin"), caption: "Jedi"),
    Photo(photo: UIImage(named: "anakin"), caption: "Jedi"),
  ]
    
    static func createNewPhoto(caption: String) {
        let newPhoto = Photo(photo: UIImage(named: "yoda"), caption: caption)
        PhotoController.photos.append(newPhoto)
    }
}
