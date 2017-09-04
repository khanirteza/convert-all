//
//  ContainerViewController.swift
//  ConvertAll
//
//  Created by Mohammad Irteza Khan on 9/2/17.
//  Copyright © 2017 Mohammad Irteza Khan. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift


class ContainerViewController: SlideMenuController{
    
    override func awakeFromNib() {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "ConverterView") {
            self.mainViewController = controller
        }
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "MeasurementSelectionView") {
            self.leftViewController = controller
        }
        super.awakeFromNib()
        
    }
    
}
