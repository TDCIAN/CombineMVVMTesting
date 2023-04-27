//
//  UIResponder+Extension.swift
//  KelvinFokTipCalculator
//
//  Created by JeongminKim on 2023/04/27.
//

import UIKit

extension UIResponder {
    var parentViewController: UIViewController? {
        return next as? UIViewController ?? next?.parentViewController
    }
}
