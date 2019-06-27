//
//  ViewController.swift
//  TravelMate
//
//  Created by Olivia Dugger on 6/26/19.
//  Copyright © 2019 Olivia Dugger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
   
    @IBOutlet weak var gifView: UIImageView!
    

    
    
    /*
    var location = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var plane: UIImageView!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch : UITouch! = touches.first! as UITouch
        location = touch.location(in: self.view)
        plane.center = location }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch : UITouch! = touches.first! as UITouch
        location = touch.location(in: self.view)
        plane.center = location }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gifView.loadGif(name: "backgroundgif")
        
        // Do any additional setup after loading the view.
        
    }

    @IBAction func chooseTapped(_ sender: UIButton) {
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.5, execute: {
            self.performSegue(withIdentifier: "homeToCities", sender: self)
        })
    }
    
    @IBAction func destTapped(_ sender: UIButton) {
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.5, execute: {
            self.performSegue(withIdentifier: "homeToCities", sender: self)
        })
    }
 
    
    
    
    
    
}

