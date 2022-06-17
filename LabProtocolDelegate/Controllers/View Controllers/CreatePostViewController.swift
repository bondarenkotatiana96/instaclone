//
//  CreatePostViewController.swift
//  LabProtocolDelegate
//

import UIKit

protocol CreatePostDelegate: AnyObject {
    func createPost(caption: String)
}

class CreatePostViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var myPhotoView: UIImageView!
    @IBOutlet weak var photoCaptionTextField: UITextField!
    
    weak var delegate: CreatePostDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func uploadPhotoButtonTapped(_ sender: Any) {
//        var myPickerController = UIImagePickerController()
//        myPickerController.delegate = self
//        myPickerController.sourceType = UIImagePickerController.SourceType.photoLibrary
//        self.present(myPickerController, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        myPhotoView.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        
//        uploadImage()
    }
    
//    func uploadImage() {
//        let imageData = UIImage.jpegData(myPhotoView.image!)
//        let uploadScriptUrl = NSURL(string:"https://www.swiftdeveloperblog.com/http-post-example-script/")
//        var request = NSMutableURLRequest(URL: uploadScriptUrl! as URL)
//        request.HTTPMethod = "POST"
//        request.setValue("Keep-Alive", forHTTPHeaderField: "Connection")
//        var configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
//        var session = NSURLSession(configuration: configuration, delegate: self, delegateQueue: NSOperationQueue.mainQueue())
//        var task = session.uploadTaskWithRequest(request, fromData: imageData)
//        task.resume()
//    }
    
    @IBAction func createPostButtonTapped(_ sender: Any) {
        delegate?.createPost(caption: photoCaptionTextField.text ?? " ")
        navigationController?.popViewController(animated: true)
    }
}
