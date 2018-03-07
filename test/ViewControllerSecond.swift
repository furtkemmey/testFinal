//
//  ViewControllerSecond.swift
//  test
//
//  Created by KaiChieh on 07/03/2018.
//  Copyright © 2018 KaiChieh. All rights reserved.
//

import UIKit

class ViewControllerSecond: UIViewController {
    weak var mybackgroungColor: UIColor?

    @IBAction func returnBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(String(describing: mybackgroungColor?.getRed)), \(String(describing: mybackgroungColor?.getGreen)), \(String(describing: mybackgroungColor?.getBlue))")
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: false, block: { (timer) in
            UIView.animate(withDuration: 3.5) {
                self.view.backgroundColor = self.mybackgroungColor
            }
        })
    }
}
extension UIColor {
//    var getRed: CGFloat? {
//        return (self.cgColor.components?[0])! * 255
//    }
//    var getGreen: CGFloat? {
//        return (self.cgColor.components?[1])! * 255
//    }
//    var getBlue: CGFloat? {
//        return (self.cgColor.components?[2])! * 255
//    }

    var getRed: String? {
        return String(format: "%02x", ((self.cgColor.components?[0])! * 255))
    }
    var getGreen: CGFloat? {
        return (self.cgColor.components?[1])! * 255
    }
    var getBlue: CGFloat? {
        return (self.cgColor.components?[2])! * 255
    }
}
