import Scenes
import Igis

/*
 This class is responsible for rendering the background.
 */


class Background : RenderableEntity {
   
    
    init() {
        super.init(name:"Background")
           }


    override func setup(canvasSize:Size, canvas:Canvas) {
        let text = Text(location:Point(x:750, y:75), text:"Hello, World!")
        text.font = "50pt Arial"
        canvas.render(text)       
        let backgroundColorRect = Rect(topLeft:Point(x:0, y:0), size:Size(width:4000, height:2000))
        let backgroundColorRectangle = Rectangle(rect:backgroundColorRect)
        let backgroundColorStrokeStyle = FillStyle(color:Color(.black))
        let backgroundColorFillStyle = FillStyle(color:Color(.antiquewhite))
        let backgroundColorFillStyle2 = FillStyle(color:Color(.black))
        canvas.render(backgroundColorFillStyle, backgroundColorRectangle)

        canvas.render( backgroundColorFillStyle2, backgroundColorStrokeStyle, text)


      




    }
}


   
