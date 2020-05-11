//
//  MainView.swift
//  SampleProjectWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 11/05/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    let placeAndDateLabel: UILabel = {
        let label = UILabel()
        label.text = "Batam, 20 Februari 2020"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let illustrationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sampleimage")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let doneButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Done", for: .normal)
        button.backgroundColor = UIColor(red: 147/255, green: 16/255, blue: 216/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        //Add object to ViewController's view
        self.addSubview(placeAndDateLabel)
        self.addSubview(illustrationImageView)
        self.addSubview(doneButton)
        
        //Set constraint for placeAndDateLabel
        self.placeAndDateLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 16).isActive = true
        self.placeAndDateLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        
        //Set constraint for illustrationImageView
        self.illustrationImageView.topAnchor.constraint(equalTo: self.placeAndDateLabel.bottomAnchor, constant: 64).isActive = true
        self.illustrationImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        self.illustrationImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true
        
        //Set constraint for doneButton
        self.doneButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 64).isActive = true
        self.doneButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -64).isActive = true
        self.doneButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16).isActive = true
        self.doneButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
