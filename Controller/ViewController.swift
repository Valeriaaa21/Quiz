//
//  ViewController.swift
//  quiz
//
//  Created by Валерия  on 25.06.2023.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
       
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
       
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)

        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getOuestionText()
        progressBar.progress = quizBrain.getProgress()
        score.text = "Score: \(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
    
}


