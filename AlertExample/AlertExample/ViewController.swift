//
//  ViewController.swift
//  AlertExample
//
//  Created by imac04 on 2021/04/20.
//  Copyright © 2021 SourceInventory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpAlertButton(_ sender: Any) {
        let alertController = UIAlertController(title: "삭제", message: "삭제하시겠습니까?", preferredStyle: .alert)
        let deleteAction:UIAlertAction = UIAlertAction(title: "삭제", style: .destructive) { (action:UIAlertAction) in
            print("삭제")
        }
        let cancelAction:UIAlertAction = UIAlertAction(title: "취소", style: .cancel) { (action:UIAlertAction) in
            print("취소")
        }
        
        alertController.addAction(deleteAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func touchUpActionSheetButton(_ sender: Any) {
        let alertController = UIAlertController(title: "삭제", message: "삭제하시겠습니까?", preferredStyle: .actionSheet)
        let deleteAction:UIAlertAction = UIAlertAction(title: "삭제", style: .destructive) { (action:UIAlertAction) in
            print("삭제")
        }
        let cancelAction:UIAlertAction = UIAlertAction(title: "취소", style: .cancel) { (action:UIAlertAction) in
            print("취소")
        }
        
        alertController.addAction(deleteAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
}

