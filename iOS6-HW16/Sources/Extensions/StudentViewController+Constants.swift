//
//  StudentViewController+Constants.swift
//  iOS6-HW16
//
//  Created by Stanislav Rassolenko on 6/23/22.
//
import UIKit

extension StudentViewController {
    enum Metric {
        static let photoTopIndent: CGFloat = 12
        static let photoSize: CGFloat = 180
        static let photoRadius: CGFloat = 12
        static let labelIndent: CGFloat = 6
        static let firstTextFieldTopIndent: CGFloat = 24
        static let indentLR: CGFloat = 40
        static let textFieldHeight: CGFloat = 44
        static let indentTop: CGFloat = 20
        static let buttonHeight: CGFloat = 41
        static let buttonWidth: CGFloat = 161
        static let buttonRadius: CGFloat = 8
        static let podiumImageViewTopIndent: CGFloat = 10
        static let closeButtonSize: CGFloat = 30
        static let closeButtonIndent: CGFloat = 20
        static let closeButtonRadius: CGFloat = 10
        static let stackViewTopIndent: CGFloat = 20
        static let stackViewHeightMultiplier: CGFloat = 0.7
        static let imageBorderWidth: CGFloat = 4
        static let studentInfoStackSpacing: CGFloat = 5
        static let primaryFontSize: CGFloat = 19
        static let secondaryFontSize: CGFloat = 17
    }
    
    enum Strings {
        static let defaultAvatar: String = "default_avatar"
        static let podiumImageName: String = "default_podium"
        static let firstNamePlaceholder: String = "Имя"
        static let firstNameLabelText: String = "Имя студента:"
        static let surnameTextFieldPlaceholder: String = "Фамилия"
        static let surnameLabelText: String = "Фамилия студента:"
        static let studentScoreTextFieldPlaceholder: String = "Баллы"
        static let studentScoreLabelText: String = "Сумма баллов:"
        static let nextRandomStudentButtonTitle: String = "Дальше"
        static let startRandomStudentButtonTitle: String = "Старт"
        static let navigationTitle: String = "MobDevFactory iOS-6"
    }
}
