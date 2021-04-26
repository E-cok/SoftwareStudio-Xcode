//
//  ViewController.swift
//  AlertExample
//
//  Created by User on 2021/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func touchUpAlertButton(_ sender: Any) {
        let alertController = UIAlertController(title: "삭제", message: "정말 삭제하시겠습니까?", preferredStyle: .alert)
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive) { (action:UIAlertAction) in
            print("삭제")
        }
        let cancelAction = UIAlertAction(title: "취소", style: .cancel) { (action:UIAlertAction) in
            print("취소")
        }
        alertController.addAction(deleteAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func touchUpActionSheetButton(_ sender: Any) {
        let alertController = UIAlertController(title: "삭제", message: "정말 삭제하시겠습니까?", preferredStyle: .actionSheet)
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive) { (action:UIAlertAction) in
            print("삭제")
        }
        let cancelAction = UIAlertAction(title: "취소", style: .cancel) { (action:UIAlertAction) in
            print("취소")
        }
        alertController.addAction(deleteAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
}

