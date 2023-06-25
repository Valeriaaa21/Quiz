//
//  Question.swift
//  quiz
//
//  Created by Валерия  on 25.06.2023.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
