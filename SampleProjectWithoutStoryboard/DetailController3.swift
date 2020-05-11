//
//  DetailController3.swift
//  SampleProjectWithoutStoryboard
//
//  Created by Aldowan Apta Premala on 09/05/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class DetailController3: UIViewController {
    
    let illustrationImageView2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sampleimage2")
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .green
        self.title = "Detail Screen 3"
        
        self.view.addSubview(illustrationImageView2)
        
        self.illustrationImageView2.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 16).isActive = true
        self.illustrationImageView2.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -16).isActive = true
        self.illustrationImageView2.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 16).isActive = true
        self.illustrationImageView2.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -16).isActive = true

        


        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
