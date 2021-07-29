//
//  ViewController.swift
//  UIKit_handmade_views
//
//  Created by Matteo on 29/07/2021.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = UIColor.yellow
        label1.text = "Label ONE"
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = UIColor.orange
        label2.text = "Label TWO"
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = UIColor.green
        label3.text = "Label THREE"
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = UIColor.blue
        label4.text = "Label FOUR"
        label4.sizeToFit()
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        
        let viewsDict = ["label1": label1, "label2": label2, "label3": label3, "label4": label4]
        let metrics = ["labelsHeight": 150]
        
        for label in viewsDict.keys {
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDict))
        }
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelsHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-(>=10)-|", options: [], metrics: metrics, views: viewsDict))
    }


}

