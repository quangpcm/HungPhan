//
//  PeopleCell.swift
//  BasicSwift
//
//  Created by Phanhug.93 on 2/23/19.
//  Copyright © 2019 Quang Phu C M. All rights reserved.
//

import UIKit

class PeopleCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let gestureRight = UISwipeGestureRecognizer.init(target: self, action: #selector(swipe(gesture:)))
        gestureRight.direction = .right
        self.addGestureRecognizer(gestureRight)
        
        let gestureLeft = UISwipeGestureRecognizer.init(target: self, action: #selector(swipe(gesture:)))
        gestureLeft.direction = .left
        self.addGestureRecognizer(gestureLeft)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @objc func swipe(gesture: UISwipeGestureRecognizer) {
        print("DEBUGLOG \(gesture.direction)")
        switch gesture.direction {
        case .left:
            updateLayoutWhenSwipeLeft()
        case .right:
            updateLayoutWhenSwipeRight()
        default: print("DEBUGLOG Do nothing")
        }
    }
    
    private func updateLayoutWhenSwipeLeft() {
        print("DEBUGLOG: swipe left")
        UIView.animate(withDuration: 0.2) {
            self.containerView.frame.origin.x -= 200
        }
        
    }
    
    private func updateLayoutWhenSwipeRight() {
        print("DEBUGLOG: swipe right")
        UIView.animate(withDuration: 0.2) {
            self.containerView.frame.origin.x = 0
        }
    }
}
