//
//  StudentModel.swift
//  iOS6-HW16
//
//  Created by Stanislav Rassolenko on 6/23/22.
//

// MARK: - StudentModel

class StudentModel {
    func createStudent(callBack: (Student?) -> Void) {
        let students = [
            Student(firstName: "Elena", lastName: "Noack", points: 58060),
            Student(firstName: "Magomed", lastName: "Nurov", points: 56260),
            Student(firstName: "Dmitry", lastName: "Dorodniy", points: 53010),
            Student(firstName: "Daniil", lastName: "Smirnov", points: 48810),
            Student(firstName: "Stanislav", lastName: "Rassolenko", points: 48310),
            Student(firstName: "Roman", lastName: "Korobskoy", points: 47360),
            Student(firstName: "Roman", lastName: "Nazarov", points: 44360),
            Student(firstName: "Georgiy", lastName: "Polukhin", points: 43060),
            Student(firstName: "Maksim", lastName: "Malofeev", points: 42360),
            Student(firstName: "Alexey", lastName: "Zablotskiy", points: 42260),
            Student(firstName: "Boris", lastName: "Kiselev", points: 41910),
            Student(firstName: "Dmitriy", lastName: "Baskakov", points: 41160),
            Student(firstName: "Viktor", lastName: "Pinyagin", points: 40860),
            Student(firstName: "Danil", lastName: "Litvinov", points: 40460),
            Student(firstName: "Andrei", lastName: "Matveev", points: 40060),
            Student(firstName: "Vadim", lastName: "Kim", points: 39710),
            Student(firstName: "Aleksei", lastName: "Kudinov", points: 39610),
            Student(firstName: "Mariia", lastName: "Volvakova", points: 39510),
            Student(firstName: "Alexander", lastName: "Panasenko", points: 39460),
            Student(firstName: "Andrey", lastName: "Oala", points: 39060),
            Student(firstName: "Makulov", lastName: "Evgeniy", points: 37892),
            Student(firstName: "Alexander", lastName: "Strelkov", points: 37660),
            Student(firstName: "Andrei", lastName: "Maskal", points: 37660),
            Student(firstName: "Sergey", lastName: "Kykhov", points: 36560),
            Student(firstName: "Mark", lastName: "Wilgelm", points: 37310),
            Student(firstName: "Petr", lastName: "Semenov", points: 36010),
            Student(firstName: "Petr", lastName: "Semenov", points: 36010),
            Student(firstName: "Mariya", lastName: "Solodova", points: 34910),
            Student(firstName: "Denis", lastName: "Solovkin", points: 34560),
            Student(firstName: "Pavel", lastName: "Kungurtsev", points: 34410),
            Student(firstName: "Sveta", lastName: "Zhukova", points: 34210),
            Student(firstName: "Fedor", lastName: "Donskov", points: 33710),
            Student(firstName: "Alexander", lastName: "Golovko", points: 33710),
            Student(firstName: "Anatoliy", lastName: "Pogorelov", points: 33360),
            Student(firstName: "Viktor", lastName: "Kovalevsky", points: 31260),
            Student(firstName: "Askhat", lastName: "Dzhumamuratov", points: 30560),
            Student(firstName: "Vitaly", lastName: "Taran", points: 30560),
            Student(firstName: "Alexander", lastName: "Alyoshin", points: 29810),
            Student(firstName: "Igor", lastName: "Aristov", points: 28910),
            Student(firstName: "Artem", lastName: "Lazutkin", points: 28360),
            Student(firstName: "Pavel", lastName: "Bublikov", points: 26960),
            Student(firstName: "Ayrat", lastName: "Khuziakhmetov", points: 26760),
            Student(firstName: "Aleksandr", lastName: "Belousov", points: 26560),
            Student(firstName: "Kunduz", lastName: "Narynbekova", points: 25660),
            Student(firstName: "Evgeny", lastName: "Morozov", points: 25510),
            Student(firstName: "Nikolai", lastName: "Kamenshchikov", points: 24060),
            Student(firstName: "Danil", lastName: "Goncharov", points: 23060),
            Student(firstName: "Dmitriy", lastName: "Karushev", points: 22910),
            Student(firstName: "Sergei", lastName: "Savinov", points: 21410),
            Student(firstName: "Katerina", lastName: "Yaskova", points: 18260),
            Student(firstName: "Sergei", lastName: "Morkovkin", points: 17760),
            Student(firstName: "Igor", lastName: "Zayats", points: 14810),
            Student(firstName: "Muslim", lastName: "Biybulatov", points: 14360),
        ]

        if let randomStudent = students.randomElement() {
            callBack(randomStudent)
        } else {
            callBack(nil)
        }
        
        return
    }
}
