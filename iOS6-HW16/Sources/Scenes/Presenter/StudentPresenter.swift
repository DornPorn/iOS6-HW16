//
//  StudentPresenter.swift
//  iOS6-HW16
//
//  Created by Stanislav Rassolenko on 6/23/22.
//

// MARK: - StudentViewDelegate

protocol StudentViewDelegate: AnyObject {
    func displayStudent(student: Student)
    func displayDefault(student: (description: String?,
                                  avatar: String,
                                  place: String))
}

// MARK: - StudentPresenter

class StudentPresenter {
    
    private let studentModel: StudentModel
    weak private var studentViewDelegate: StudentViewDelegate?
    
    init(studentModel: StudentModel) {
        self.studentModel = studentModel
    }
    
    func setViewDelegate(studentViewDelegate: StudentViewDelegate?){
        self.studentViewDelegate = studentViewDelegate
    }
    
    func createPlace(points: UInt) -> String {
        switch points {
        case 0...30000:
            return Strings.bronzePodium
        case 30001...39700:
            return Strings.silverPodium
        case 39701...:
            return Strings.goldPodium
        default:
            return Strings.defaultPodium
        }
    }
    
    // MARK: - Button actions
    
    func randomStudentSelected() {
        studentModel.createStudent { [weak self] student in
            if let student = student {
                let avatar = student.firstName + student.lastName
                let place = createPlace(points: student.points)
                self?.studentViewDelegate?.displayStudent(student: Student(
                    firstName: student.firstName,
                    lastName: student.lastName,
                    points: student.points,
                    avatar: avatar,
                    place: place))
            }
        }
    }
    
    func clearDisplay() {
        self.studentViewDelegate?.displayDefault(student: (
            description: nil,
            avatar: Strings.defaultAvatar,
            place: Strings.defaultPodium))
    }
}


                                                 

