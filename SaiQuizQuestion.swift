struct QuizQuestion {
    let question: String
    let answers: [String]
    let correctAnswerIndex: Int


    init(question: String, answers: [String], correctAnswerIndex: Int) {
        precondition(answers.count >= 2, "At least two answers are required.")
        precondition((0 ..< answers.count).contains(correctAnswerIndex),
                     "correctAnswerIndex (\(correctAnswerIndex)) is outside the bounds of the answers array.")

        self.question = question
        self.answers = answers
        self.correctAnswerIndex = correctAnswerIndex
    }
}
