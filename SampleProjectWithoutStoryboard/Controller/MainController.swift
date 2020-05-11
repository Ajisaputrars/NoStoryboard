//
//  ViewController.swift
//  SampleProjectWithoutStoryboard
//
//  Created by Aji Saputra Raka Siwi on 09/05/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    private var mainView: MainView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainView = MainView(frame: self.view.frame)
        self.view = self.mainView

        setupNavigationBar()
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
}

