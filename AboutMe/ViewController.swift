//
//  ViewController.swift
//  AboutMe
//
//  Created by Jared Diehl on 6/22/20.
//  Copyright © 2020 umsl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profilePicture: UIImageView!
    private var gradient: CAGradientLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradient = CAGradientLayer()
        gradient.frame = profilePicture.bounds
        gradient.colors = [
            UIColor.clear.cgColor,
            UIColor.black.cgColor,
            UIColor.black.cgColor,
            UIColor.clear.cgColor
        ]
        gradient.locations = [0.1, 0.2, 0.6, 0.9]
        profilePicture.layer.mask = gradient
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        gradient.frame = profilePicture.bounds
    }

}
