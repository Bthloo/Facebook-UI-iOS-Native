//
//  PostViewCell.swift
//  Facebook UI
//
//  Created by Bthloo on 26/09/2024.
//

import UIKit

class PostViewCell: UITableViewCell {
    
   
    
    weak var delegate: PostCellDelegate?
       var indexPath: IndexPath!

    @IBOutlet weak var profilePic: UIView!
    
    @IBOutlet weak var profileName: UILabel!
    
    @IBOutlet weak var postData: UILabel!
    
   
    
    @IBOutlet weak var postText: UILabel!
    
    

    @IBOutlet weak var likeBTNLBL: UIButton!
    
    
    
    
    @IBOutlet weak var numberOfLikes: UILabel!
    
    @IBOutlet weak var numberOfComment: UILabel!
    
    
    @IBAction func xAction(_ sender: UIButton) {
    }
    
    @IBAction func showMoreAction(_ sender: UIButton) {
    }
    
    
    //var likeButtonAction: (() -> Void)?
    
    @IBAction func likeAction(_ sender: UIButton) {
        
        self.delegate?.likePost(indexPath: indexPath)
        
       // likeButtonAction?()
    }
    
    
    
    @IBAction func commentAction(_ sender: UIButton) {
        print("open comment")
        self.delegate?.showComments(indexPath: indexPath)
    }
    
    
    @IBAction func shareAction(_ sender: UIButton) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        postText.numberOfLines = 0 
        postText.textAlignment = .left
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}

protocol PostCellDelegate : AnyObject{
    func showComments(indexPath : IndexPath)
    func likePost(indexPath : IndexPath)
}
