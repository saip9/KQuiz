import Foundation
import Scenes
import Igis

  /*
     This class is responsible for rendering the background.
   */


class Background : RenderableEntity {
    let backgroundSound: Audio
    //  let backgroundImage : Image
//     let fillStyle = FillStyle(color:Color(.gray))
     //    let rectangle : Rectangle

//    init(sourceURL:URL, shouldLoop:Bool = false) {
         init() {

        guard let backgroundURL = URL(string:"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3")
        else {
              fatalError("Failed to create URL for backgroundAudio")
              }

        backgroundSound =  Audio(sourceURL:backgroundURL, shouldLoop:true)

            super.init(name:"Background")  
     
    }


    


          
          
        //  backgroundImage = Image(sourceURL:backgroundImageURL)
//                                rectangle = Rectangle(rect:Rect(), fillMode:.fill)
           // Using a meaningful name can be helpful for debugging
       
      


      override func setup(canvasSize:Size, canvas:Canvas) {
      canvas.setup(backgroundSound)
       //           rectangle.rect.size = canvasSize
      
          let  text = Text(location:Point(x:400, y:50), text:"Welcome to the KQUIZ Game")
//          let question = Text(location:Point(x:500, y:500), text: questions[0])
            //        let answerDisplay = Text(location:Point(x: 500, y: 700), text: (answers[0].joined(separator: "\n ")))
       //   let questionStrokeStyle = StrokeStyle(color:Color(.red))
   //       let linewidthQuestion = LineWidth(width:5)
//        canvas.render(question)
           text.font = "50pt times-new-roman"
 
           let backgroundColorRect = Rect(size: canvasSize)
           let backgroundColorrectangle = Rectangle(rect:backgroundColorRect)
           let backgroundColorFillStyle = FillStyle(color:Color(.antiquewhite))
           let backgroundColorFillStyle2 = FillStyle(color:Color(.black))
           let backgroundColorStrokeStyle = StrokeStyle(color:Color(.red))

     canvas.render(backgroundColorFillStyle,  backgroundColorrectangle)
     
           let gameRect =  Rect(topLeft:Point(x:350, y:100), size:Size(width:1000, height:600))
           let gameRectangle = Rectangle(rect:gameRect)
           let gameRectangleFillStyle = FillStyle(color:Color(.white))
           let gameRectangleStrokeStyle = StrokeStyle(color:Color(.red))
           let lineWidth = LineWidth(width:5)
           canvas.render(gameRectangleFillStyle, gameRectangleStrokeStyle, lineWidth,gameRectangle)
           

           //Text

           canvas.render(backgroundColorFillStyle2,backgroundColorStrokeStyle,text)
      }
//           canvas.render(questionStrokeStyle, linewidthQuestion,question)
//           canvas.render(questionStrokeStyle, linewidthQuestion,answerDisplay)
           //      canvas.setup(whitehouse)
           
//canvas.render(text)
   



      
/*      override func render(canvas:Canvas) {
           if backgroundImage.isReady {
               backgroundImage.renderMode = .destinationRect(Rect(topLeft:Point(x:0, y:0), size:Size(width:2000, height:1000)))
               
      //         canvas.render(backgroundImage)
               
           }
      
         //          rectangle.rect.size = canvasSize
      }
  */   
       




      // ------------------ Audio ---------------------------//

      override func render(canvas:Canvas) {       
            if backgroundSound.isReady {
              canvas.render(backgroundSound)
              //isBackgroundPlaying = true
          }
      }

      
 
      }
      




