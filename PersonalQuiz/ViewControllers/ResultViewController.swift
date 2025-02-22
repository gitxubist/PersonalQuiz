//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 10.02.2025.
//

import UIKit

final class ResultViewController: UIViewController {
    
    
    @IBOutlet private weak var answerView: UITextView!
    @IBOutlet weak var resultImageLabel: UILabel!
    @IBOutlet weak var resultTextLabel: UILabel!
    
    var transferAnswers: [Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        var animals: [Animal] = []
        
        for answer in transferAnswers {
            animals.append(answer.animal)

            answerView.text?.append("\(answer.animal.description) << любит >> [\(answer.title)]\n")
        }
        
        let mostFrequent = animals.reduce(into: [:]) { counts, number in
            counts[number, default: 0] += 1
        }.max { $0.value < $1.value }?.key
        
        if let mostFrequent = mostFrequent {
            resultImageLabel.text = "Вы - \(String(describing: mostFrequent.description))"
        }

        if let mostFrequent = mostFrequent {
            resultTextLabel.text = "Вы \(String(mostFrequent.name))"
        }
    }
    
    @IBAction func doneButtonTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}
