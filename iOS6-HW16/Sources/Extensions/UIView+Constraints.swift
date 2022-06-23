//
//  UIView+Constraints.swift
//  iOS6-HW16
//
//  Created by Stanislav Rassolenko on 6/23/22.
//

import UIKit

extension UIView {
    func addSubviewsForAutoLayout(_ views: [UIView]) {
        for view in views {
            view.translatesAutoresizingMaskIntoConstraints = false
            addSubview(view)
        }
    }
}
