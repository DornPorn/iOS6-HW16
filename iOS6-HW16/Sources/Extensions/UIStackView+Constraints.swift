//
//  UIStackView+Constraints.swift
//  iOS6-HW16
//
//  Created by Stanislav Rassolenko on 6/23/22.
//

import UIKit

extension UIStackView {
    func addArrangedSubviewsForAutoLayout(_ views: [UIView]) {
        for view in views {
            view.translatesAutoresizingMaskIntoConstraints = false
            addArrangedSubview(view)
        }
    }
}
