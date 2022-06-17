//
//  PhotoCollectionViewController.swift
//  LabProtocolDelegate
//

import UIKit

private let reuseIdentifier = "photoCell"

class PhotoCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        self.title = "Instagram Clone"
        collectionView.reloadData()
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCreatePostView" {
            let destination = segue.destination as? CreatePostViewController
            // Step 4 - Assign the delegate
            destination?.delegate = self
        }
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return PhotoController.photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? PhotoCollectionViewCell else { return UICollectionViewCell()}
        let photo = PhotoController.photos[indexPath.row]
        cell.displayPost(for: photo)
        return cell
    }
}

extension PhotoCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width / 2
        return CGSize(width: width - 15, height: width + 40)
    }
}

extension PhotoCollectionViewController: CreatePostDelegate {
    func createPost(caption: String) {
        PhotoController.createNewPhoto(caption: caption)
        collectionView.reloadData()
    }
}
