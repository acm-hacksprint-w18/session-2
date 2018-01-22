//
//  ViewController.swift
//  PrettyPost
//
//  Created by Kevin Tan on 1/21/18.
//  Copyright © 2018 ACM Hack. All rights reserved.
//

import UIKit

class CreatePostViewController: UIViewController {

    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var postTextView: UITextView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if let destination = segue.destination as? ReadPostViewController {
            destination.postTitle = titleTextField.text
            destination.postContents = postTextView.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        postTextView.layer.borderWidth = 1.0
        postTextView.layer.borderColor = UIColor.lightGray.cgColor
        postTextView.layer.cornerRadius = 5.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

