// This file contains all the variable declarations that would be used later in a different file called Questionlibrary.swift

struct QuizQuestion {

    // Defiend all the variables that would be used in the QuestionLibrary.swift
    
    let question: String
    let answers: [String]
    let correctAnswerIndex: Int


    init(question: String, answers: [String], correctAnswerIndex: Int) {
        precondition(answers.count >= 2, "At least two answers are required.") // Wrote preconditions to check and make sure that we did
                                                                               // not miss any answer choices when writing the questions
        precondition((0 ..< answers.count).contains(correctAnswerIndex),
                     "correctAnswerIndex (\(correctAnswerIndex)) is outside the bounds of the answers array.")

        self.question = question
        self.answers = answers
        self.correctAnswerIndex = correctAnswerIndex
    }
}
