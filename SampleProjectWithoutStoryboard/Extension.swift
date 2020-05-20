//
//  Utils.swift
//  SampleProjectWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 20/05/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

extension UITextField {
    func addBottomBorder(height: CGFloat, color: UIColor) {
        
        let bottomBorderLineView: UIView = {
            let view = UIView()
            view.backgroundColor = color
            return view
        }()
        
        self.addSubview(bottomBorderLineView)
        
        bottomBorderLineView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalTo(self)
            make.height.equalTo(height)
        }
    }
}
