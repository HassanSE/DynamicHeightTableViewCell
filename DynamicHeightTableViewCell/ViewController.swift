//
//  ViewController.swift
//  DynamicHeightTableViewCell
//
//  Created by Muhammad Hassan on 09/03/2017.
//  Copyright © 2017 Muhammad Hassan. All rights reserved.
//

import UIKit

typealias Message = (sender: String, message: String, date: Date)

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var chatTableView: UITableView!
    
    var messages: [Message] = [("Andrew", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", Date()),
                               
                               ("Andrew", "A quick brown fox jumps over the lazy dog.", Date()),
                               
                               ("Andrew", "A short message", Date())]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chatTableView.estimatedRowHeight = 110.0
        chatTableView.rowHeight = UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chatCell = tableView.dequeueReusableCell(withIdentifier: "ChatCell", for: indexPath) as! ChatTableViewCell
        
        let currentMessage = messages[indexPath.row]
        chatCell.messageLabel.text = currentMessage.message
        chatCell.userDisplayNameLabel.text = currentMessage.sender
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        chatCell.dateLabel.text = dateFormatter.string(from: messages[indexPath.row].date)
        
        return chatCell
    }
}

