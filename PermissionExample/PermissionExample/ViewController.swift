//
//  ViewController.swift
//  PermissionExample
//
//  Created by imac04 on 2021/04/20.
//  Copyright © 2021 SourceInventory. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    private let locationManager:CLLocationManager = CLLocationManager()

    @IBOutlet var resultStatusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func touchUpReqPermissionButton(_ sender: Any) {
            // iOS 14 이상
    //        let status = locationManager.authorizationStatus
            let status = CLLocationManager.authorizationStatus()
            
            switch status {
            case .authorizedWhenInUse, .authorizedAlways:
                print("허용")
                resultStatusLabel.text = "허용"
            case .denied:
                print("권한 거절")
                resultStatusLabel.text = "권한 거절"
            case .notDetermined:
                print("알 수 없음/권한 미선택")
                locationManager.requestWhenInUseAuthorization()
                resultStatusLabel.text = "알 수 없음/권한 미선택"
            default:
                print("권한 차단")
                resultStatusLabel.text = "권한 차단"
            }
        }
}

