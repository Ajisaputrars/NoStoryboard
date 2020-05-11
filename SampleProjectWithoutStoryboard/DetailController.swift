//
//  DetailController.swift
//  SampleProjectWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 09/05/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    
    let AnotherLabel2: UILabel = {
        let label = UILabel()
        label.text = "This is just a test."
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let doneButton3: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Change", for: .normal)
        button.backgroundColor = UIColor(red: 147/255, green: 16/255, blue: 216/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        self.title = "Detail Screen"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

        
        self.view.addSubview(AnotherLabel2)
        self.view.addSubview(doneButton3)

        
        self.AnotherLabel2.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 16).isActive = true
        self.AnotherLabel2.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 100).isActive = true
        self.AnotherLabel2.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -100).isActive = true
        
        self.doneButton3.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 64).isActive = true
        self.doneButton3.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -64).isActive = true
        self.doneButton3.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -16).isActive = true
        self.doneButton3.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        self.doneButton3.addTarget(self, action: #selector(doneButtonPressed3), for: .touchUpInside)

        
    }
    
    @objc private func doneButtonPressed3(){
        self.navigationController?.pushViewController(DetailController3(), animated: true)
    }
    
}
