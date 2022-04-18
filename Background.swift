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


//Text

    //Background
    //Text2
    let  text = Text(location:Point(x:500, y:50), text:"Hello, World!")
           text.font = "50pt Arial "
 //   canvas.render(text)

    let backgroundColorRect = Rect(topLeft:Point(x:0, y:0), size:Size(width:4000, height:2000))
           let backgroundColorrectangle = Rectangle(rect:backgroundColorRect)
           let backgroundColorFillStyle = FillStyle(color:Color(.antiquewhite))
         //  canvas.render(backgroundColorFillStyle,  backgroundColorrectangle)

          
canvas.render(text)




}
}


