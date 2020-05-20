//
//  MainView.swift
//  SampleProjectWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 11/05/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit
import SnapKit

class MainView: UIView {
    
    let placeAndDateLabel: UILabel = {
        let label = UILabel()
        label.text = "Batam, 20 Februari 2020"
        return label
    }()
    
    let illustrationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sampleimage")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let doneButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Done", for: .normal)
        button.backgroundColor = UIColor(red: 147/255, green: 16/255, blue: 216/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    let sampleTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Sample Textfield"
        textField.addBottomBorder(height: 1, color: UIColor(red: 206/255, green: 206/255, blue: 208/255, alpha: 1))
        return textField
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
        self.addSubview(sampleTextField)
        
        
        //Set constraint for placeAndDateLabel using SnapKit
        self.placeAndDateLabel.snp.makeConstraints { (make) in
            make.top.left.equalTo(self).offset(16)
            //            make.center.equalTo(self)
            //            make.centerX.equalTo(self)
        }
        
        //Set constraint for illustrationImageView using SnapKit
        self.illustrationImageView.snp.makeConstraints { (make) in
            make.top.equalTo(self.placeAndDateLabel.snp.bottom).offset(64)
            make.left.equalTo(self).offset(16)
            make.right.equalTo(self).offset(-16)
        }
        
        //Set constraint for doneButton using SnapKit
        self.doneButton.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(64)
            make.right.equalTo(self).offset(-64)
            make.bottom.equalTo(self).offset(-16)
            make.height.equalTo(50)
        }
        
        self.sampleTextField.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(64)
            make.right.equalTo(self).offset(-64)
            make.bottom.equalTo(doneButton.snp.top).offset(-16)
            make.height.equalTo(40)
        }
    }
}
