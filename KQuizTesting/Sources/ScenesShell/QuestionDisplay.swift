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
            //Testing Code


            let userAnswer = quizQuestions[questionIndex].answers[1]
            print("UserAnswer is \(userAnswer)")
            let correctAnswerIntIndex = quizQuestions[questionIndex].correctAnswerIndex
   //         print(correctAnswerIntIndex)
            let correctAnswer = quizQuestions[questionIndex].answers[correctAnswerIntIndex]
            print("Correct answer is \(correctAnswer)")


            if userAnswer == correctAnswer {
                print("Great, you answered it correctly.")
            }

                
            
            
        }
        }
