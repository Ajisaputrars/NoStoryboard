//
//  ViewController.swift
//  SampleProjectWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 09/05/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
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
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationBar()
        setupView()
        
        self.doneButton.addTarget(self, action: #selector(doneButtonPressed), for: .touchUpInside)
    }
    
    @objc
    private func doneButtonPressed(){
        self.navigationController?.pushViewController(DetailController(), animated: true)
    }
    
    private func setupNavigationBar(){
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 147/255, green: 16/255, blue: 216/255, alpha: 1)
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.barStyle = .black
        self.navigationController?.navigationBar.isTranslucent =  false
        self.navigationController?.navigationBar.tintColor = .white

        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        self.title = "Main Screen"
    }
    
    private func setupView(){
        //Add object to ViewController's view
        self.view.addSubview(placeAndDateLabel)
        self.view.addSubview(illustrationImageView)
        self.view.addSubview(doneButton)
        
        //Set constraint for placeAndDateLabel
        self.placeAndDateLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 16).isActive = true
        self.placeAndDateLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 16).isActive = true
        
        //Set constraint for illustrationImageView
        self.illustrationImageView.topAnchor.constraint(equalTo: self.placeAndDateLabel.bottomAnchor, constant: 64).isActive = true
        self.illustrationImageView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 16).isActive = true
        self.illustrationImageView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -16).isActive = true
//        self.illustrationImageView.topAnchor.constraint(equalTo: self.placeAndDateLabel.bottomAnchor, constant: 16).isActive = true
//        self.illustrationImageView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 16).isActive = true
//        self.illustrationImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
//        self.illustrationImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        //Set constraint for doneButton
        self.doneButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 64).isActive = true
        self.doneButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -64).isActive = true
        self.doneButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -16).isActive = true
        self.doneButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}

