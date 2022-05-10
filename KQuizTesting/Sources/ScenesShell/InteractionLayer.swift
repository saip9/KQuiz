import Igis
import Scenes
import ScenesControls

/*
 This class is responsible for the interaction Layer.
 Internally, it maintains the RenderableEntities for this layer.
 */


class InteractionLayer : Layer {

    // Defined ten variables, each is assigned to pull the background for the quiz game from the Background.swift file
  
    let background = Background()
    let background2 = Background()
    let background3 = Background()
    let background4 = Background()
    let background5 = Background()
    let background6 = Background()
    let background7 = Background()
    let background8 = Background()
    let background9 = Background()
    let background10 = Background()
    let background11 = Background()
    
    init() {
//          
        // Using a meaningful name can be helpful for debugging
  
        super.init(name:"Interaction")
     
        //   super.init(name:"QuestionDisplay")

        // Create a standalone button, insert into LAYER, and assign handler
        // Created Next Button, and four buttons for each of the answer choices
        let nextButton = Button(name:"Alone", labelString:"Next", topLeft:Point(x:1150, y:550))
        insert(entity:nextButton, at:.front)
        let button0 = Button(name:"ButtonHere", labelString:"Click Here", topLeft:Point(x:800, y:275))
        insert(entity:button0, at:.front)
        let button1 = Button(name:"Alone", labelString:"Click Here", topLeft:Point(x:800, y:375))
        insert(entity:button1, at:.front)
        let button2 = Button(name:"Alone", labelString:"Click Here", topLeft:Point(x:800, y:475))
        insert(entity:button2, at:.front)
        let button3 = Button(name:"Alone", labelString:"Click Here", topLeft:Point(x:800, y:575))
        insert(entity:button3, at:.front)

        
        //----------------------------------------------------------------------------------//

        // Created buttons for to clear the screen for each question, so that the next question can be displayed without overlap
        

        let button10 = Button(name:"ButtonHere", labelString:"Clear Q1", topLeft:Point(x:1500, y:100))
        insert(entity:button10, at:.front)
        let button11 = Button(name:"Alone", labelString:"Clear Q2", topLeft:Point(x:1500, y:150))
        insert(entity:button11, at:.front)
        let button12 = Button(name:"Alone", labelString:"Clear Q3", topLeft:Point(x:1500, y:200))
        insert(entity:button12, at:.front)
        let button13 = Button(name:"Alone", labelString:"Clear Q4", topLeft:Point(x:1500, y:250))
        insert(entity:button13, at:.front)
        let button14 = Button(name:"ButtonHere", labelString:"Clear Q5", topLeft:Point(x:1500, y:300))
        insert(entity:button14, at:.front)
        let button15 = Button(name:"Alone", labelString:"Clear Q6", topLeft:Point(x:1500, y:350))
        insert(entity:button15, at:.front)
        let button16 = Button(name:"Alone", labelString:"Clear Q7", topLeft:Point(x:1500, y:400))
        insert(entity:button16, at:.front)
        let button17 = Button(name:"Alone", labelString:"Clear Q8", topLeft:Point(x:1500, y:450))
        insert(entity:button17, at:.front)
        let button18 = Button(name:"Alone", labelString:"Clear Q9", topLeft:Point(x:1500, y:500))
        insert(entity:button18, at:.front)
        let button19 = Button(name:"Alone", labelString:"Clear Q10", topLeft:Point(x:1500, y:550))
        insert(entity:button19, at:.front)
        


   





        //Assigned the next and the four answer choice button to each of its own function, so that we can later add if clauses to check if the button is clicked
        
        nextButton.clickHandler = onButtonClickHandler
      //  button0.clickHandler = onButtonClickHandler0
      //  button1.clickHandler = onButtonClickHandler1
     //   button2.clickHandler = onButtonClickHandler2
     //   button3.clickHandler = onButtonClickHandler3


        //----------------------------------------------//

        // Button 10 - 19
        // Correspond to the clear buttons
        //Assigned the ten clear button to each of its own function, so that we can later add if clauses to check if the button is clicked
        

        button10.clickHandler = onButtonClickHandler10
        button11.clickHandler = onButtonClickHandler11
      button12.clickHandler = onButtonClickHandler12
        button13.clickHandler = onButtonClickHandler13
        button14.clickHandler = onButtonClickHandler14
        button15.clickHandler = onButtonClickHandler15
        button16.clickHandler = onButtonClickHandler16
        button17.clickHandler = onButtonClickHandler17
        button18.clickHandler = onButtonClickHandler18
        button19.clickHandler = onButtonClickHandler19










        
    }



    //Functions for button 10 - 19 (clear buttons)
    


    func onButtonClickHandler10(control:Control, localLocation:Point) {

        // Checks if the specified button is clicked
        
            if let button = control as? Button {
                // if condition true, clears the screen
                insert(entity:background2, at: .front)
            }
    
            
        }
    


func onButtonClickHandler11(control:Control, localLocation:Point) {

            if let button = control as? Button {

                
                insert(entity:background3, at: .front)
            }
    
            }
    

func onButtonClickHandler12(control:Control, localLocation:Point) {

            if let button = control as? Button {
                insert(entity:background4, at: .front)
            }
}

func onButtonClickHandler13(control:Control, localLocation:Point) {

            if let button = control as? Button {
                insert(entity:background5, at: .front)
            }
}
func onButtonClickHandler14(control:Control, localLocation:Point) {

           if let button = control as? Button {
                insert(entity:background6, at: .front)
            }
}

func onButtonClickHandler15(control:Control, localLocation:Point) {

            if let button = control as? Button {
                insert(entity:background7, at: .front)
            }
}

func onButtonClickHandler16(control:Control, localLocation:Point) {

            if let button = control as? Button {
                insert(entity:background8, at: .front)
            }
}

func onButtonClickHandler17(control:Control, localLocation:Point) {

            if let button = control as? Button {
                insert(entity:background9, at: .front)
            }
}

func onButtonClickHandler18(control:Control, localLocation:Point) {

            if let button = control as? Button {
                insert(entity:background10, at: .front)
            }
}

func onButtonClickHandler19(control:Control, localLocation:Point) {

            if let button = control as? Button {
                insert(entity:background11, at: .front)
            }
}





  //Next button function
    func onButtonClickHandler(control:Control, localLocation:Point) {


            if let button = control as? Button {
                  let randomQuestion = Int.random(in: 1...48)
                insert(entity:QuestionDisplay(questionIndex: randomQuestion), at: .back)
                
     

            }
    }

    //Function for the first button
    func onButtonClickHandler0(control:Control, localLocation:Point) {
        
        if let button = control as? Button {
            let randomQuestion = Int.random(in: 1...48)
    //        let userAnswer = quizQuestions[questionIndex].answers[0]
           
        }



               
    }
    
    

}
