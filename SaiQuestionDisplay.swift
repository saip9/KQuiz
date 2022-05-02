import Igis
import Scenes

class QuestionDisplay: RenderableEntity {

    let questionIndex: Int

    init(questionIndex: Int) {
        self.questionIndex = questionIndex
        super.init(name:"QuestionDisplay")
    }


    override func setup(canvasSize:Size, canvas:Canvas) {

        let questionOnScreen = Text(location:Point(x:400, y:200), text: quizQuestions[questionIndex].question)
        let questionFillStyle = FillStyle(color:Color(.red))
        let questionStrokeStyle = StrokeStyle(color:Color(.red))

        for lineSpace in 0 ..< 4 {
        let answerOnScreen = Text(location:Point(x:400, y:300+lineSpace*100), text: quizQuestions[questionIndex].answers[lineSpace])
        
        canvas.render(questionFillStyle,questionStrokeStyle,questionOnScreen, answerOnScreen)

        }        
    }
}
