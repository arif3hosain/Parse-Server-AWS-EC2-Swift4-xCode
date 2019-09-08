//
//  ViewController.swift
//  Instagram
//
//  Created by Arif Hosain on 8/9/19.
//  Copyright © 2019 mas. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        //save object one to [GameScore table] the parse server using AWS
        
    /*    let gameScore = PFObject(className:"GameScore")
        gameScore["score"] = 1337
        gameScore["playerName"] = "Sean Plott"
        gameScore["cheatMode"] = false
        gameScore.saveInBackground { (succeeded, error)  in
            if (succeeded) {
                    print("saved!")
            } else {
                print("Not saved")
            }
        } */
        
        //save object one to [comment table] the parse server using AWS
 /*
        let comment = PFObject(className: "comment")
        comment ["text"] = "This is my comment"

        comment.saveInBackground{(success, error) in

            if (success) {
                print("comment saved")
            }else {
                print("comment saving faulure")
        }
    }
*/
        
   //execute the text of a specific comment object
        
        let query = PFQuery(className: "comment")
        query.getObjectInBackground(withId: "AVVb8KBypP") { (object, error) in
            
            if let data = object {
                print(data["text"] as! String)
            
        }
        
      
    }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

