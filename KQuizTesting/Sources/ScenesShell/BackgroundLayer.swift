import Scenes

/*
 This class is responsible for the background Layer.
 Internally, it maintains the RenderableEntities for this layer.
 */


class BackgroundLayer : Layer {
    let background = Background()

    init() {
        // Using a meaningful name can be helpful for debugging
        super.init(name:"Background")

        // We insert our RenderableEntities in the constructor

        // Picks a random number
        let randomQuestion = Int.random(in: 1...48)
        insert(entity:background, at:.back)

        // Rendering the first question on the screen
        // Displays a random question from the quizQuestions array in the QuestionLibrary.swift
        insert(entity:QuestionDisplay(questionIndex: randomQuestion), at: .front)

    }
}
 
