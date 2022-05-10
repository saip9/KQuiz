import Foundation
import Scenes
import Igis
import ScenesControls
/*
 This class is responsible for rendering the background.
 */

class Background : RenderableEntity {
    let backgroundSound: Audio

    init() {
        // Background audio for the game
        // Audio is open source and free to use without any permissions
        
        guard let backgroundURL = URL(string:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3")
        else {                              // Checking if the link is working or not
            fatalError("Failed to create URL for backgroundAudio")
        }

        backgroundSound =  Audio(sourceURL:backgroundURL, shouldLoop:true) // Audio is looped 
      
        super.init(name:"Background")


    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        canvas.setup(backgroundSound)
        let  text = Text(location:Point(x:400, y:50), text:"Welcome to the KQUIZ Game")
        text.font = "25pt times-new-roman"

        //Created rectangle for the background of the game
        let backgroundColorRect = Rect(size: canvasSize)
        let backgroundColorrectangle = Rectangle(rect:backgroundColorRect)
        let backgroundColorFillStyle = FillStyle(color:Color(.antiquewhite))
        let backgroundColorFillStyle2 = FillStyle(color:Color(.black))
        let backgroundColorStrokeStyle = StrokeStyle(color:Color(.red))

        canvas.render(backgroundColorFillStyle,  backgroundColorrectangle)


        // This is the rectangle that the questions and answer choices are displayed on
        let gameRect =  Rect(topLeft:Point(x:100, y:100), size:Size(width:1300, height:600))
        let gameRectangle = Rectangle(rect:gameRect)
        let gameRectangleFillStyle = FillStyle(color:Color(.white))
        let gameRectangleStrokeStyle = StrokeStyle(color:Color(.red))
        let lineWidth = LineWidth(width:5)
        canvas.render(gameRectangleFillStyle, gameRectangleStrokeStyle, lineWidth,gameRectangle)


        //Rendering Title/Heading for the game

        canvas.render(backgroundColorFillStyle2,backgroundColorStrokeStyle,text)
    }


    // ------------------ Rendering  Audio ---------------------------//

    override func render(canvas:Canvas) {
    //    clearCanvas(canvas:canvas)
        if backgroundSound.isReady {
            canvas.render(backgroundSound)
            //isBackgroundPlaying = true
        }
    }



}





