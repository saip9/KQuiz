import Igis
import Scenes
import ScenesControls

  /*
     This class is responsible for the interaction Layer.
     Internally, it maintains the RenderableEntities for this layer.
   */


class InteractionLayer : Layer {
    let background = Background()
  //  let background2 = Background()
  //  let background3 = Background()
//    let questionIndex : Int
    init() {
        // Using a meaningful name can be helpful for debugging
   //     self.questionIndex = questionIndex
        super.init(name:"Interaction")

        //   super.init(name:"QuestionDisplay")

        // Create a standalone button, insert into LAYER, and assign handler
        let independentButton = Button(name:"Alone", labelString:"Next", topLeft:Point(x:1150, y:550))
        insert(entity:independentButton, at:.front)
        let button0 = Button(name:"Alone", labelString:"Click Here", topLeft:Point(x:800, y:275))
        insert(entity:button0, at:.front)
        let button1 = Button(name:"Alone", labelString:"Click Here", topLeft:Point(x:800, y:375))
        insert(entity:button1, at:.front)
        let button2 = Button(name:"Alone", labelString:"Click Here", topLeft:Point(x:800, y:475))
        insert(entity:button2, at:.front)
       let button3 = Button(name:"Alone", labelString:"Click Here", topLeft:Point(x:800, y:575))
        insert(entity:button3, at:.front)
       
        //insert(entity: background, at: .back)
        
        //insert(entity: background, at: .back)
        
        independentButton.clickHandler = onButtonClickHandler
        button0.clickHandler = onButtonClickHandler

        // Create two panels, one vertical and one horizontal
    }


    // Create a labeled panel with several buttons
        // Create labels and buttons for panel and insert into PANEL
      
    
    // Labels can respond to clicks but usually don't
    // Buttons are generally only useful if they do respond to clicks
/*    func clearQuestion(canvas: Canvas) {
//        if let canvasSize = canvas.canvasSize {
            let canvasRect = Rect(topLeft:Point(), size:Size(width:1300, height:600))
            let canvasClearRectangle = Rectangle(rect:canvasRect, fillMode:.clear)
            let clearRectangleFillStyle = FillStyle(color:Color(.white))
           let clearRectangleStrokeStyle = StrokeStyle(color:Color(.red))
           let clearlineWidth = LineWidth(width:5)
        
           canvas.render(clearRectangleFillStyle, clearRectangleStrokeStyle, clearlineWidth, canvasClearRectangle)

           }
 */
    var x = 0
    func onButtonClickHandler(control:Control, localLocation:Point) {
        while x < 10 {
        if let button = control as? Button {

            print("loop")
  
            let randomQuestion = Int.random(in: 1...48)
          //      clearQuestion(canvas: canvas)
                                                               
                       
                   
                  insert(entity:background, at:.front)
                  insert(entity:QuestionDisplay(questionIndex: randomQuestion), at: .back)
                  insert(entity:background, at:.back)
                 // insert(entity:QuestionDisplay(questionIndex: randomQuestion), at: .front)
            x += 1
        }
        }
    }

                            
                             //                 insert(entity:QuestionDisplay(questionIndex: randomQuestion), at: .front)

//                                                    insert(entity:background3, at:.front)
                                
  //                                            insert(entity:QuestionDisplay(questionIndex: randomQuestion), at: .front)

          //  print(randomQuestion)
       
                               
            //            button.labelString += "Hi"
          
       

    
    
        
        
        /*
        func answerChoices(canvasSize:Size, canvas:Canvas) {
            let questionOnScreen = Text(location:Point(x:400, y:200), text: quizQuestions[questionIndex].question)
            let questionFillStyle = FillStyle(color:Color(.red))
            let questionStrokeStyle = StrokeStyle(color:Color(.red))

            for lineSpace in 0 ..< 4 {
                let answerOnScreen = Text(location:Point(x:400, y:300+lineSpace*100), text: quizQuestions[questionIndex].answers[lineSpace])

                canvas.render(questionFillStyle,questionStrokeStyle,questionOnScreen, answerOnScreen)

            }
            }
            
        
        */
    
        }

