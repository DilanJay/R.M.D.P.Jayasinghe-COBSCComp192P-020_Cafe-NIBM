//
//  LocationViewController.swift
//  Cafe-Nibm
//
//  Created by Dilan Pramodya on 2021-03-07.
//

import UIKit
import SPPermissions

class LocationViewController: UIViewController, SPPermissionsDelegate //, SPPermissionsDataSource
{
    
//    func configure(_ cell: SPPermissionTableViewCell, for permission: SPPermission) -> SPPermissionTableViewCell {
//        <#code#>
//    }
//
    
    @IBOutlet weak var locationPermissionButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func locationButton(_ sender: UIButton) {
        let controller = SPPermissions.list([.locationAlwaysAndWhenInUse])
        controller.titleText = "Location Permission"
        controller.headerText = "Please allow to get started"
        controller.footerText = "This is Required!!"
        
        controller.delegate = self
        //controller.dataSource = self
         
        controller.present(on: self)
    }
    
}

