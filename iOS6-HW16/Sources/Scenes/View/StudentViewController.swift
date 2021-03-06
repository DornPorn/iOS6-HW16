//
//  ViewController.swift
//  iOS6-HW16
//
//  Created by Stanislav Rassolenko on 6/23/22.
//

import UIKit

class StudentViewController: UIViewController {
    
    // MARK: - Views
    
    private lazy var photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: Strings.defaultAvatar)
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = Metric.photoRadius
        imageView.layer.borderWidth = Metric.imageBorderWidth
        imageView.layer.borderColor = #colorLiteral(red: 0.2593759298, green: 0.5698557496, blue: 1, alpha: 1)
        return imageView
    }()
    
    private lazy var studentInfoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    private lazy var studentNameStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = Metric.studentInfoStackSpacing
        return stackView
    }()
    
    private lazy var studentSurnameStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = Metric.studentInfoStackSpacing
        return stackView
    }()
    
    private lazy var studentScoreStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = Metric.studentInfoStackSpacing
        return stackView
    }()
    
    private lazy var firstNameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = Strings.firstNamePlaceholder
        textField.font = UIFont.systemFont(ofSize: Metric.primaryFontSize)
        textField.textColor = .darkGray
        textField.borderStyle = .roundedRect
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    private lazy var firstNameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: Metric.secondaryFontSize, weight: .medium)
        label.textColor = .gray
        label.text = Strings.firstNameLabelText
        return label
    }()
    
    private lazy var lastNameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = Strings.surnameTextFieldPlaceholder
        textField.font = UIFont.systemFont(ofSize: Metric.primaryFontSize)
        textField.textColor = .darkGray
        textField.borderStyle = .roundedRect
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    private lazy var lastNameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: Metric.secondaryFontSize, weight: .medium)
        label.textColor = .gray
        label.text = Strings.surnameLabelText
        return label
    }()
    
    private lazy var pointTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = Strings.studentScoreTextFieldPlaceholder
        textField.font = UIFont.systemFont(ofSize: Metric.primaryFontSize)
        textField.textColor = .darkGray
        textField.borderStyle = .roundedRect
        textField.isUserInteractionEnabled = false
        return textField
    }()
    
    private lazy var pointLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: Metric.secondaryFontSize, weight: .medium)
        label.textColor = .gray
        label.text = Strings.studentScoreLabelText
        return label
    }()
    
    private lazy var randomStudentButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.baseBackgroundColor = #colorLiteral(red: 0.2593759298, green: 0.5698557496, blue: 1, alpha: 1)
        configuration.baseForegroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        configuration.background.cornerRadius = Metric.buttonRadius
        let button = UIButton(configuration: configuration, primaryAction: nil)
        button.configuration?.title = Strings.startRandomStudentButtonTitle
        button.titleLabel?.font = UIFont.systemFont(ofSize: Metric.secondaryFontSize)
        return button
    }()
    
    private lazy var closeButton: UIButton = {
        let button = UIButton(type: .close)
        button.tintColor = .white
        button.layer.cornerRadius = Metric.closeButtonRadius
        return button
    }()
    
    private lazy var podiumImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: Strings.podiumImageName)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHieararchy()
        setupLayout()
    }
    
    //MARK: - Settings
    
    private func setupView() {
        view.backgroundColor = .systemBackground
        title = Strings.navigationTitle
    }
    
    private func setupHieararchy() {
        view.addSubviewsForAutoLayout([
            photoImageView,
            studentInfoStackView,
            randomStudentButton,
            closeButton,
            podiumImageView,
        ])
        
        studentInfoStackView.addArrangedSubviewsForAutoLayout([
            studentNameStack,
            studentSurnameStack,
            studentScoreStack
        ])
        
        studentNameStack.addArrangedSubviewsForAutoLayout([
            firstNameLabel,
            firstNameTextField
        ])
        
        studentSurnameStack.addArrangedSubviewsForAutoLayout([
            lastNameLabel,
            lastNameTextField
        ])
        
        studentScoreStack.addArrangedSubviewsForAutoLayout([
            pointLabel,
            pointTextField
        ])
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            photoImageView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: Metric.photoTopIndent),
            photoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            photoImageView.widthAnchor.constraint(equalToConstant: Metric.photoSize),
            photoImageView.heightAnchor.constraint(equalTo: photoImageView.widthAnchor),
            photoImageView.bottomAnchor.constraint(equalTo: firstNameLabel.topAnchor,constant: -Metric.firstTextFieldTopIndent),
            
            studentInfoStackView.topAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: Metric.stackViewTopIndent),
            studentInfoStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Metric.indentLR),
            studentInfoStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Metric.indentLR),
            studentInfoStackView.heightAnchor.constraint(equalTo: studentInfoStackView.widthAnchor, multiplier: Metric.stackViewHeightMultiplier),

            randomStudentButton.topAnchor.constraint(equalTo: studentInfoStackView.bottomAnchor, constant: Metric.indentTop),
            randomStudentButton.heightAnchor.constraint(lessThanOrEqualToConstant: Metric.buttonHeight),
            randomStudentButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            randomStudentButton.widthAnchor.constraint(equalToConstant: Metric.buttonWidth),

            podiumImageView.topAnchor.constraint(equalTo: randomStudentButton.bottomAnchor, constant: Metric.podiumImageViewTopIndent),
            podiumImageView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            podiumImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            podiumImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            closeButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            closeButton.trailingAnchor.constraint(equalTo:  view.layoutMarginsGuide.trailingAnchor, constant: -Metric.closeButtonIndent),
            closeButton.widthAnchor.constraint(equalToConstant: Metric.closeButtonSize),
            closeButton.heightAnchor.constraint(equalToConstant: Metric.closeButtonSize),
        ])
    }
}

