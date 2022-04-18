
import Scenes
import Igis

/*
 This class is responsible for rendering the background.
 */


class Background : RenderableEntity {
    var questions = ["What is 1+1?", "What is the first planet?", "Who is the first president?"]
    var answers = ["3, 11, 2, 4, Mercury, Earth, Venus, Uranus Gallo, Washington, Adams, Jeferson"];
    var correctAnswer = ["2, Mercury, Washingtion"]
    var score: Int = 0;
    
    init() {

        // Using a meaningful name can be helpful for debugging
        super.init(name:"Background")

    }


    override func setup(canvasSize:Size, canvas:Canvas) {
        if answers == correctAnswer {
            score += 1;
        } else {
            score -= 1;
        }
    

        
        //Text

        //Background
        //Text2
        let  text = Text(location:Point(x:500, y:50), text:"Welcome to KQUIZ!")
        text.font = "50pt Arial "
          canvas.render(text)

        let backgroundColorRect = Rect(topLeft:Point(x:0, y:0), size:Size(width:4000, height:2000))
        let backgroundColorrectangle = Rectangle(rect:backgroundColorRect)
        let backgroundColorFillStyle = FillStyle(color:Color(.antiquewhite))
        let backgroundColorFillStyle2 = FillStyle(color:Color(.black))
        let backgroundColorStrokeStyle = FillStyle(color:Color(.black))          
        canvas.render(backgroundColorFillStyle,  backgroundColorrectangle)
        canvas.render(backgroundColorFillStyle2, backgroundColorStrokeStyle, text)


       //  canvas.render(text)

    }
}
