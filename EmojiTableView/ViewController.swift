//
//  ViewController.swift
//  EmojiTableView
//
//  Created by Richard Thomson on 03/03/2017.
//  Copyright © 2017 Richard Thomson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var emojiTableView: UITableView!

    var emojis = ["🤠","🤑","😂","😡","👀"]
    
    override func viewDidLoad() {
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "showEmoji", sender: Emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emVC = segue.destination as! EmojiDetailViewController
        emVC.emoji = sender as! String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

