//
//  ReadPostViewController.swift
//  PrettyPost
//
//  Created by Kevin Tan on 1/21/18.
//  Copyright © 2018 ACM Hack. All rights reserved.
//

import UIKit

class ReadPostViewController: UIViewController {

    var postTitle: String!
    var postContents: String!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var contentsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = postTitle
        contentsTextView.text = postContents
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
