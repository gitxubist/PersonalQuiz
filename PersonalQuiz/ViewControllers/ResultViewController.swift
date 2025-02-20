//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 10.02.2025.
//

import UIKit

final class ResultViewController: UIViewController {
    
    var transferAnswers: [Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        print(transferAnswers)
    }
    
    @IBAction func doneButtonTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}
