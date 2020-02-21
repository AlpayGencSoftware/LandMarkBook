//
//  ImageViewController.swift
//  LandMarkBook
//
//  Created by Alpay Genc on 10.07.2018.
//  Copyright © 2018 Liberty App Team. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var ImageLandMarkUI: UIImageView!
    @IBOutlet weak var LandMarkDetails: UILabel!
    
    var LandMarkName = ""
    var LandMarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageLandMarkUI.image = LandMarkImage
        LandMarkDetails.text = LandMarkName
    }

    
}
