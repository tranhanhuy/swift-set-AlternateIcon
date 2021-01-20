//
//  ViewController.swift
//  dynamicIcon
//
//  Created by AkiraTran on 20/01/2021.
//

import UIKit

class ViewController: UIViewController {

    var test1Icon: UIButton = UIButton()
    var test2Icon: UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        self.view.addSubview(self.test1Icon)
        self.test1Icon.backgroundColor = UIColor.red
        self.test1Icon.translatesAutoresizingMaskIntoConstraints = false
        self.test1Icon.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        self.test1Icon.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        self.test1Icon.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.test1Icon.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        self.test1Icon.setTitle("Change Test 1 Icon", for: .normal)
        self.test1Icon.addTarget(self, action: #selector(test1ButtonTouched(sender:)), for: .touchUpInside)
        
        self.view.addSubview(self.test2Icon)
        self.test2Icon.backgroundColor = UIColor.red
        self.test2Icon.translatesAutoresizingMaskIntoConstraints = false
        self.test2Icon.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        self.test2Icon.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        self.test2Icon.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.test2Icon.topAnchor.constraint(equalTo: self.test1Icon.bottomAnchor, constant: 30).isActive = true
        self.test2Icon.setTitle("Change Test 2 Icon", for: .normal)
        self.test2Icon.addTarget(self, action: #selector(test2ButtonTouched(sender:)), for: .touchUpInside)
    }
    
    @objc func test1ButtonTouched(sender: UIButton) {
        UIApplication.shared.setAlternateIconName("Test1", completionHandler: { (error) in
            if error != nil {
                print("\(String(describing: error?.localizedDescription))")
            }
        })
    }

    @objc func test2ButtonTouched(sender: UIButton) {
        UIApplication.shared.setAlternateIconName("Test2", completionHandler: { (error) in
            if error != nil {
                print("\(String(describing: error?.localizedDescription))")
            }
        })
    }

    

}

