//
//  EmojiDetailViewController.swift
//  EmojiTableView
//
//  Created by Richard Thomson on 03/03/2017.
//  Copyright © 2017 Richard Thomson. All rights reserved.
//

import UIKit

class EmojiDetailViewController: UIViewController {
    
    @IBOutlet var emojiLabel: UILabel!
    var emoji = "No Emoji"


    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
