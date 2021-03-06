
import Igis
import Scenes
import ScenesControls

  /*
     This class is responsible for the interaction Layer.
     Internally, it maintains the RenderableEntities for this layer.
   */


class InteractionLayer : Layer {


    init() {
        // Using a meaningful name can be helpful for debugging
        super.init(name:"Interaction")


        // Create a standalone button, insert into LAYER, and assign handler
        let independentButton = Button(name:"Alone", labelString:"Next", topLeft:Point(x:1150, y:550))
        insert(entity:independentButton, at:.front)
    independentButton.clickHandler = onButtonClickHandler

        // Create two panels, one vertical and one horizontal
    }


    // Create a labeled panel with several buttons
        // Create labels and buttons for panel and insert into PANEL
      
    
    // Labels can respond to clicks but usually don't

    // Buttons are generally only useful if they do respond to clicks
        func onButtonClickHandler(control:Control, localLocation:Point) {

            if let button = control as? Button {
                           let randomQuestion = Int.random(in: 1...49)
     //     insert(entity:background, at:.back)
          insert(entity:QuestionDisplay(questionIndex: randomQuestion), at: .front)
          print(randomQuestion)
        }
            //            button.labelString += "Hi"
          
        }
        
    
        }

