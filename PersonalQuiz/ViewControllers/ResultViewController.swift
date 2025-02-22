//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 10.02.2025.
//

import UIKit

final class ResultViewController: UIViewController {
    
    
    @IBOutlet private weak var answerView: UITextView!
    
    var transferAnswers: [Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        var animals: [Animal] = []
        for answer in transferAnswers {
            
            animals.append(answer.animal)
//            print("\(answer.animal.description) \(answer.animal)")
            
            answerView.text?.append("\(answer.animal.description) << любит >> [\(answer.title)]\n")
        }
        let mostFrequent = animals.reduce(into: [:]) { counts, number in
            counts[number, default: 0] += 1
        }.max { $0.value < $1.value }?.key
        print(mostFrequent)
        
    }
    
    @IBAction func doneButtonTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}


//Определить наиболее часто встречающийся тип животного
//Отобразить результаты в соотвствии с этим животным

//PersonalQuiz.Answer(title: "Стейк", animal: PersonalQuiz.Animal.dog),

