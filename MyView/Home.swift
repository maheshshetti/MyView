//
//  Home.swift
//  MyView
//
//  Created by Mahesh Sammatashetti on 19/03/19.
//  Copyright © 2019 Cybage. All rights reserved.
//

import UIKit

class Home: UIViewController
{
    //MARK: - Declaration
    //MARK: -
    
    //MARK: - View Events
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let colouredView = ColouredView(frame: self.view.bounds)
        self.view.addSubview(colouredView)
    }
    //MARK: -
    
    //MARK: - View Methods
    //MARK: -
}
