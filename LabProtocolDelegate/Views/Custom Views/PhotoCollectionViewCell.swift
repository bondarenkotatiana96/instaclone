//
//  PhotoCollectionViewCell.swift
//  LabProtocolDelegate
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoCaptionLabel: UILabel!
    
    func displayPost(for photo: Photo) {
        photoImageView.image = photo.photo
        photoImageView.contentMode = .scaleAspectFill
        photoImageView.clipsToBounds = true
        photoCaptionLabel.text = photo.caption
    }
}
