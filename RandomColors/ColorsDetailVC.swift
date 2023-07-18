//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by udit on 17/11/22.
//

import UIKit

class ColorsDetailVC: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? UIColor.systemBackground

        // Do any additional setup after loading the view.
    }
}
