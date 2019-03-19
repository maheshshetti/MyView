//
//  ColouredView.swift
//  MyView
//
//  Created by Mahesh Sammatashetti on 19/03/19.
//  Copyright © 2019 Cybage. All rights reserved.
//

import UIKit

class ColouredView : UIView
{
    //MARK: - Declaration
    fileprivate let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    fileprivate var colorCounter = 0
    //MARK: -
    
    //MARK: - View Events
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        // The Main Stuff
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) {
            (timer) in
            
            UIView.animate(withDuration: 0.50) {
                self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                self.colorCounter += 1
            }
        }
        
        scheduledColorChanged.fire()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        
        // You don't need to implement this
    }
    //MARK: -
}
