//
//  ViewController.swift
//  ADGDay3
//
//  Created by Ayush Agarwal on 20/08/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var MainView: UIView!
    @IBOutlet weak var RandomImage1: UIImageView!
    
    @IBOutlet weak var RandomImage2: UIImageView!
    
    @IBOutlet weak var bannerImage: UIImageView!
    
    var images : [String] = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getPicture()
        view.backgroundColor = .cyan
    
        bannerImage.image = UIImage(named: "diceeLogo")
    }

    
    @IBAction func changePressed(_ sender: UIButton) {
        getPicture()
    }
    
    func getPicture(){
        RandomImage1.image = UIImage(named: images.randomElement()!)
        RandomImage2.image = UIImage(named: images.randomElement()!)

    }
}

