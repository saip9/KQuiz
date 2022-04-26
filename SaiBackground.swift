
import Scenes
import Igis

  /*
     This class is responsible for rendering the background.
   */


class Background : RenderableEntity {

      init() {

           // Using a meaningful name can be helpful for debugging
          super.init(name:"Background")

      }


      override func setup(canvasSize:Size, canvas:Canvas) {
          var questions = ["What is 500+690?", "What is the first planet?", "Who is the first president?"]
          var answers = [["1190","1095", "987", "1290"],["Mercury"," Earth", "Venus", "Uranus"],["Gallo", "Washington", "Adams", "Jefferson"]]
          //let answersVertical = answers.joined().joined(separator: "\n")
          //3 2 1 100
          //Mercury Earth Venus Uranus
          //Gallo Was
          var correctAnswer = ["2","Mercury"," Washingtion"]
          var score: Int = 0;





          let  text = Text(location:Point(x:500, y:50), text:"Welcome to the KQUIZ Game")
          let question = Text(location:Point(x:500, y:500), text: questions[0])
          let answerDisplay = Text(location:Point(x: 500, y: 700), text: (answers[0].joined(separator: "\n ")))
          let questionStrokeStyle = StrokeStyle(color:Color(.red))
          let linewidthQuestion = LineWidth(width:5)
//        canvas.render(question)
           text.font = "50pt times-new-roman"
 
    let backgroundColorRect = Rect(topLeft:Point(x:0, y:0), size:Size(width:4000, height:2000))
           let backgroundColorrectangle = Rectangle(rect:backgroundColorRect)
           let backgroundColorFillStyle = FillStyle(color:Color(.antiquewhite))
           let backgroundColorFillStyle2 = FillStyle(color:Color(.black))
           let backgroundColorStrokeStyle = StrokeStyle(color:Color(.red))

           canvas.render(backgroundColorFillStyle,  backgroundColorrectangle)
     
           


           
           let gameRect =  Rect(topLeft:Point(x:450, y:200), size:Size(width:1000, height:600))
           let gameRectangle = Rectangle(rect:gameRect)
           let gameRectangleFillStyle = FillStyle(color:Color(.white))
           let gameRectangleStrokeStyle = StrokeStyle(color:Color(.red))
           let lineWidth = LineWidth(width:5)
           canvas.render(gameRectangleFillStyle, gameRectangleStrokeStyle, lineWidth,gameRectangle)
           

           //Text

                 canvas.render(backgroundColorFillStyle2,backgroundColorStrokeStyle,text)
           canvas.render(questionStrokeStyle, linewidthQuestion,question)
           canvas.render(questionStrokeStyle, linewidthQuestion,answerDisplay)

           
//canvas.render(text)




}
}


