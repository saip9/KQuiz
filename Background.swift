import Scenes
import Igis

  /*
     This class is responsible for rendering the background.
   */


class Background : RenderableEntity, EntityMouseClickHandler  {
    let maxPattern = 9
    var currentPattern = 1
    var didRender = false
    var rect: Rect?
/*    override func setup(canvasSize:Size, canvas:Canvas) {
        dispatcher.registerEntityMouseClickHandler(handler:self)
        rect = Rect(size: canvasSize)
    }

    override func teardown() {
        dispatcher.unregisterEntityMouseClickHandler(handler:self)
    }
    func onEntityMouseClick(globalLocation: Point) {
        currentPattern += 1
        if (currentPattern > maxPattern) {
            currentPattern = 1
        }
        didRender = false
    }
 */ 
    func renderLabel(canvas:Canvas, patternId:Int) {
        let text = Text(location:Point(x:15, y:40), text:"\(patternId)")
        text.font = "30pt Arial"
        canvas.render(FillStyle(color:Color(.black)))
        canvas.render(text)
    }
    func renderPattern1(canvas:Canvas) {


        func renderRectangle(canvas: Canvas, rect: Rect) {
        let rectangle2 = Rectangle(rect: rect, fillMode: .stroke)
        canvas.render(rectangle2)
    }
    
    func renderRectangleRow(canvas: Canvas, rect: Rect, columns: Int) {
        var currentRect = rect
        for _ in 0 ..< columns {
            renderRectangle(canvas: canvas, rect: currentRect)
            currentRect.topLeft.x += currentRect.size.width
            
        }
    }
    func renderRectangleGrid(canvas: Canvas, rect:Rect, columns: Int, rows: Int) {
        var currentRect = rect
        for _ in 0 ..< rows {
            renderRectangleRow(canvas: canvas, rect: currentRect, columns: columns)

            currentRect.topLeft.y += currentRect.size.height
        }
    }
   func renderRectangleWall(canvas: Canvas, rect:Rect, columns: Int, rows: Int) {
        var currentRect = rect
        for _ in 0 ..< rows {
            renderRectangleRow(canvas: canvas, rect: currentRect, columns: columns)

            currentRect.topLeft.y += currentRect.size.height
           // currentRect.topLeft.x += currentRect.size.width 

        }
   }
   // let plainRow = Rect(topLeft: Point(x: 100, y:100), size: Size(width:50, height: 50))
    //    renderRectangleRow(canvas: canvas, rect: plainRow, columns: 3)
        let plainGrid = Rect(topLeft: Point(x: 100, y:200), size: Size(width:40, height: 70))
        renderRectangleGrid(canvas: canvas, rect: plainGrid, columns: 10, rows:6)
       
   
        renderLabel(canvas:canvas, patternId:1)
    }

    func renderPattern2(canvas:Canvas) {


         func renderRectangle(canvas: Canvas, rect: Rect) {
        let rectangle2 = Rectangle(rect: rect, fillMode: .fillAndStroke)
        canvas.render(rectangle2)
    }
    
    func renderRectangleRow(canvas: Canvas, rect: Rect, columns: Int) {
        var currentRect = rect
        for _ in 0 ..< columns {
            renderRectangle(canvas: canvas, rect: currentRect)
            currentRect.topLeft.x += currentRect.size.width
            
        }
    }
    func renderRectangleGrid(canvas: Canvas, rect:Rect, columns: Int, rows: Int) {
        var currentRect = rect
        for _ in 0 ..< rows {
            renderRectangleRow(canvas: canvas, rect: currentRect, columns: columns)

            currentRect.topLeft.y += currentRect.size.height
        }
    }
   func renderRectangleWall(canvas: Canvas, rect:Rect, columns: Int, rows: Int) {
        var currentRect = rect
        for _ in 0 ..< rows {
            renderRectangleRow(canvas: canvas, rect: currentRect, columns: columns)

            currentRect.topLeft.y += currentRect.size.height
           // currentRect.topLeft.x += currentRect.size.width 

        }
        

    }
    func renderbrickWall(canvas: Canvas, rect:Rect, columns: Int, rows: Int) {
        var currentRect = rect
        var currentColumns = columns
        for x in 0..<rows {
            let oddNumber = x % 2 != 0
            renderRectangleRow(canvas: canvas, rect: currentRect, columns: currentColumns)
            
            currentRect.topLeft.y += currentRect.size.height
            //currentRect.topLeft.x += currentRect.size.width 
            if oddNumber {
                currentColumns += 1
                currentRect.topLeft.x -= currentRect.size.width / 2 
            }
            else {
                currentRect.topLeft.x += currentRect.size.width / 2
                currentColumns -= 1
            }
        }
        //width of the rect * colums
    }       
    let brickWall = Rect(topLeft: Point(x: 200, y:250), size: Size(width:75, height: 40))
    let fillStyle50 = FillStyle(color:Color(.darkred ))
    let strokeStyle50 = StrokeStyle(color:Color(.gray))
    canvas.render(fillStyle50, strokeStyle50 )
    let plainRect = Rect(topLeft: Point(x:200,y:250),  size: Size(width: 752 , height: 600))
        renderRectangle(canvas: canvas, rect: plainRect)
        renderbrickWall(canvas: canvas, rect: brickWall, columns: 10, rows:15)


             renderLabel(canvas:canvas, patternId:2)
    }

    func triGrnUp(canvas:Canvas, line:Path, cord: Int, offset: Int){
        line.moveTo(Point(x:125 + cord, y: 150 + offset))
        line.lineTo(Point(x:175 + cord, y:150 + offset))
        line.lineTo(Point(x:150 + cord, y:100 + offset))
        line.lineTo(Point(x:125 + cord, y:150 + offset))
        let green = FillStyle(color:Color(.green))
        let greenline = StrokeStyle(color:Color(.darkgreen))
        let lineWidth1 = LineWidth(width:1)
        canvas.render(green,greenline,lineWidth1,line)
    }


  func triBlueUp(canvas:Canvas, line:Path, cord: Int, offset: Int){
        line.moveTo(Point(x:125 + cord, y: 150 + offset))
        line.lineTo(Point(x:175 + cord, y:150 + offset))
        line.lineTo(Point(x:150 + cord, y:100 + offset))
        line.lineTo(Point(x:125 + cord, y:150 + offset))
        let blue = FillStyle(color:Color(.blue))
        //let blueline = StrokeStyle(color:Color(.darkblue))
        let lineWidth1 = LineWidth(width:1)
        canvas.render(blue,lineWidth1,line)
    }



    
    
    func triGrnDown(canvas:Canvas,line:Path,cord:Int,offset:Int){
        line.moveTo(Point(x:100 + cord, y:50 + offset))
        line.lineTo(Point(x:150 + cord, y:50 + offset))
        line.lineTo(Point(x:125 + cord, y:100 + offset))
        line.lineTo(Point(x:100 + cord, y:50 + offset))
        let green = FillStyle(color:Color(.green))
        let greenline = StrokeStyle(color:Color(.darkgreen))
        let lineWidth1 = LineWidth(width:1)
        canvas.render(green, greenline,lineWidth1,line)
    }
    func renderPattern3(canvas:Canvas) {
        renderLabel(canvas:canvas, patternId:3)
        let outerPath = Path(fillMode:.fillAndStroke)
        for y in 0 ..< 10{
            for x in 0 ..< 10{
                triGrnUp(canvas:canvas, line: outerPath, cord: (x*50), offset: (y*50))
                triGrnDown(canvas:canvas,line:outerPath,cord:(x*50),offset:(y*50+50))
            }
        }
    }
    func renderPattern4(canvas:Canvas) {
        renderLabel(canvas:canvas, patternId:4)
        let outerPath = Path(fillMode:.fillAndStroke)
        let outerPath2 = Path(fillMode:.fillAndStroke)
        for y in 0 ..< 10{
            for x in 0 ..< 10{
                triBlueUp(canvas:canvas, line: outerPath, cord: (x*50), offset: (y*50))
                triGrnDown(canvas:canvas,line:outerPath2,cord:(x*50),offset:(y*50+50))
            }
        }
     
    }
  //---------------//
        func triRGBUp(canvas: Canvas, line: Path, color1: Color, cord: Int, offset: Int){

            line.moveTo(Point (x: 125 +  cord, y: 150 + offset))

            line.lineTo(Point (x:175 + cord, y:150 + offset))

            line.lineTo(Point (x: 150 + cord, y:100 + offset))

            line.lineTo(Point (x: 125 + cord, y:150 + offset))

            let green = FillStyle(color: (color1))
            let lineWidth1 = LineWidth (width:1)

            canvas.render (green, lineWidth1, line)

        }

        func triRGBDown (canvas: Canvas, line: Path, color1: Color, cord: Int, offset: Int){

            line.moveTo(Point (x: 100 + cord, y:50 + offset))
            line.lineTo(Point (x: 150 + cord, y:50 +  offset))

            line.lineTo(Point (x:125 + cord, y:100 +  offset))

            line.lineTo(Point (x:100 + cord, y:50 + offset))
            let green = FillStyle (color: (color1))

            let lineWidth1 = LineWidth (width:1)

            canvas.render(green,lineWidth1, line)

        }



        //---//



        func renderPattern5(canvas:Canvas) {
            renderLabel(canvas: canvas, patternId:5)

            let PathB =  Path(fillMode:.fillAndStroke)
            let PathR = Path(fillMode: .fillAndStroke)

            let PathG =  Path(fillMode: .fillAndStroke)

            for y in 0 ..< 4 {

                for x in 0..<4 {
                    triRGBDown (canvas: canvas, line: PathG, color1: Color(.green), cord: (x*150), offset: 50 + (y*150))
                    triRGBUp(canvas: canvas, line: PathB, color1:Color(.blue), cord: (x*150), offset: (y*150))

            }

            }

            for y in 0..<3 {
                for x in 0..<3 {

                    triRGBUp(canvas: canvas, line:PathR, color1:Color(.red), cord: 50 + (x*150), offset:50 + (y*150))
                    triRGBUp(canvas: canvas, line:PathB, color1:Color(.blue), cord: 100 + (x*150), offset:50 + (y*150))

                    triRGBUp(canvas: canvas, line: PathB, color1:Color(.blue), cord: 50 + (x*150), offset:100 + (y*150))
                    triRGBUp (canvas: canvas, line:PathG, color1:Color(.green), cord: 100 + (x*150), offset:100 + (y*150))

                    triRGBDown (canvas: canvas, line:PathG, color1:Color(.green), cord: 100 + (x*150), offset:50 + (y*150))
                    triRGBDown (canvas: canvas, line:PathG, color1: Color(.green), cord: 100 + (x*150), offset:100 + (y*150))
                    triRGBDown(canvas: canvas, line: PathB, color1: Color(.blue), cord: 50 +  (x*150), offset: 100 + (y*150))

                    triRGBDown (canvas: canvas, line: PathG, color1: Color(.green), cord: 50 + (x*150), offset: 150 + (y*150))
                    triRGBDown (canvas: canvas, line: PathR, color1: Color(.red), cord: 100 + (x*150), offset: 150 + (y*150))

                }
                for x in 0..<4 {

                    triRGBUp(canvas:canvas, line:PathG, color1:Color(.green), cord: (x*150), offset: 50 + (y*150))
                    triRGBUp(canvas:canvas, line:PathR, color1:Color(.red), cord: (x*150), offset: 100 + (y*150))
                    triRGBDown(canvas: canvas, line: PathR, color1: Color(.red), cord: (x*150), offset: 100 + (y*150))
                    triRGBDown(canvas: canvas, line: PathB, color1:Color(.blue), cord: (x*150), offset: 150 + (y*150))
                }
            }

                for y in 0..<4 {

                    for x in 0..<3 {
                        triRGBUp(canvas:canvas, line:PathR, color1:Color(.red), cord: 100  + (x*150), offset: (y*150))
                        triRGBUp(canvas:canvas, line:PathG, color1:Color(.green), cord: 50 + (x*150), offset:(y*150))
                        triRGBDown(canvas: canvas, line: PathR, color1:Color(.red), cord: 50 + (x*150), offset: 50 + (y*150))
                        triRGBDown(canvas: canvas, line: PathB, color1:Color(.blue), cord: 100 + (x*150), offset: 50 + (y*150))
                    }
                }
        }


        //---//

        func ellipses (canvas: Canvas, cord: inout DoublePoint) {

            for _ in 0..<6 {

                for _ in 0 ..< 10{

                    let ellipse =  Ellipse(center:Point (cord), radiusX:30, radiusY: 60, fillMode: .fillAndStroke)
                    canvas.render (LineWidth (width:2), StrokeStyle(color:Color(.violet)), FillStyle(color:Color(.purple)), ellipse)

                    cord.x += 62

                }

                cord.x = 300
                cord.y += 122

            }

        }
        

      





















        
     //--------//


        func renderPattern6 (canvas:Canvas) {
            renderLabel(canvas: canvas, patternId:6)
            var cord = DoublePoint (x: 300, y: 75)
            ellipses (canvas: canvas, cord: &cord)

        }







        //-----//


        func rectangle10(canvas:Canvas) {
            let rect10 = Rect(topLeft:Point(x:300, y:90), size:Size(width:550, height:600))
            let rectangle10 = Rectangle(rect:rect10, fillMode:.fillAndStroke)
            let fillStyle = FillStyle(color:Color(.orange))
           // let strokeStyle = StrokeStyle(color:Color(.blue))
          //  let lineWidth = LineWidth(width:5)
            canvas.render(fillStyle, rectangle10)
        }







        






        //----//
 func renderPattern7(canvas:Canvas) {
     renderLabel(canvas:canvas, patternId:7)
     rectangle10(canvas:canvas)
         var cord2 = DoublePoint (x: 300, y: 75)
         ellipses (canvas: canvas, cord: &cord2)
 }



 // --- //


 func ellipses8(canvas: Canvas, cord: inout DoublePoint) {

     //let ellipse - Ellipse(center:Point (cord), radiusX:30, radiusY: 60, fillMode: .fillAndStroke)

     for y in 0..<7{

         for x in 0..<7 {

             let ellipse = Ellipse(center:Point (cord), radiusX:25, radiusY: 45, fillMode: .fillAndStroke)
             canvas.render (LineWidth(width:2), StrokeStyle(color:Color(.violet)), FillStyle(color:Color(.purple)), ellipse)

             if x == 3 {

                 let ellipse = Ellipse(center:Point (cord), radiusX: 25, radiusY: 45, fillMode: .fillAndStroke)
                 canvas.render (LineWidth (width:3), StrokeStyle(color: Color(.blue)), FillStyle(color:Color(.blue)), ellipse)
             }






         }

         if y == 3 {


             let ellipse =  Ellipse(center: Point (cord), radiusX:25, radiusY: 45, fillMode: .fillAndStroke)
             canvas.render (LineWidth(width:3), StrokeStyle(color:Color(.blue)), FillStyle(color:Color(.blue)), ellipse)

         }

         cord.x += 52
     }
     cord.x = 300
     cord.y += 92
 }









 

















 // --- //


func rectangle11(canvas:Canvas) {
            let rect11 = Rect(topLeft:Point(x:300, y:90), size:Size(width:300, height:600))
            let rectangle11 = Rectangle(rect:rect11, fillMode:.fillAndStroke)
            let fillStyle2 = FillStyle(color:Color(.orange))
           // let strokeStyle = StrokeStyle(color:Color(.blue))
          //  let lineWidth = LineWidth(width:5)
            canvas.render(fillStyle2, rectangle11)
        }





 

func rectangle12(canvas:Canvas) {
            let rect12 = Rect(topLeft:Point(x:300, y:275), size:Size(width:320, height:200))
            let rectangle12 = Rectangle(rect:rect12, fillMode:.fillAndStroke)
            let fillStyle3 = FillStyle(color:Color(.blue))
           // let strokeStyle = StrokeStyle(color:Color(.blue))
          //  let lineWidth = LineWidth(width:5)
            canvas.render(fillStyle3, rectangle12)
        }





func rectangle13(canvas:Canvas) {
            let rect13 = Rect(topLeft:Point(x:400, y:75), size:Size(width:100, height:600))
            let rectangle13 = Rectangle(rect:rect13, fillMode:.fillAndStroke)
            let fillStyle4 = FillStyle(color:Color(.blue))
           // let strokeStyle = StrokeStyle(color:Color(.blue))
          //  let lineWidth = LineWidth(width:5)
            canvas.render(fillStyle4, rectangle13)
        }







// blue ellipses at the end
 func ellipses10(canvas: Canvas, cord: inout DoublePoint) {

  
             let ellipse =  Ellipse(center: Point (cord), radiusX:25, radiusY: 45, fillMode: .fillAndStroke)
             canvas.render (LineWidth(width:3), StrokeStyle(color:Color(.blue)), FillStyle(color:Color(.blue)), ellipse)


 }





 func ellipses11(canvas: Canvas, cord: inout DoublePoint) {

  
             let ellipse =  Ellipse(center: Point (cord), radiusX:25, radiusY: 45, fillMode: .fillAndStroke)
             canvas.render (LineWidth(width:3), StrokeStyle(color:Color(.blue)), FillStyle(color:Color(.blue)), ellipse)


 }


 








 
 func renderPattern8(canvas:Canvas) {
     renderLabel(canvas:canvas, patternId:8)
//      rectangle10(canvas:canvas)



     
     rectangle11(canvas:canvas) // orange rectangle

       var cord10 = DoublePoint (x: 625, y: 375)
         
             ellipses10(canvas: canvas, cord: &cord10)

          var cord11 = DoublePoint (x: 290, y: 375)
         
             ellipses10(canvas: canvas, cord: &cord11)


             

     rectangle12(canvas:canvas) // blue horizontal rectangle
    
     rectangle13(canvas:canvas) // blue vertical rectangle




     
     var cord3 = DoublePoint (x: 300, y: 75)
         
         ellipses8(canvas: canvas, cord: &cord3)


          var cord4 = DoublePoint (x: 300, y: 175)
         
         ellipses8(canvas: canvas, cord: &cord4)

             var cord5 = DoublePoint (x: 300, y: 275)
         
         ellipses8(canvas: canvas, cord: &cord5)



              var cord6 = DoublePoint (x: 300, y: 475)
         
         ellipses8(canvas: canvas, cord: &cord6)


         
              var cord7 = DoublePoint (x: 300, y: 575)
         
              ellipses8(canvas: canvas, cord: &cord7)


              
              var cord8 = DoublePoint (x: 300, y: 675)
         
             ellipses8(canvas: canvas, cord: &cord8)

                //   let ellipse10 = Ellipse(center:Point (cord), radiusX:25, radiusY: 45, fillMode: .fillAndStroke)
             //canvas.render (LineWidth(width:2), StrokeStyle(color:Color(.violet)), FillStyle(color:Color(.purple)), ellipse10)
             
              
             // var cord9 = DoublePoint (x: 400, y: 675)
         
             //ellipses9(canvas: canvas, cord: &cord9)








             

             
 }



 // Change them to white

  func ellipses20(canvas: Canvas, cord: inout DoublePoint) {

  
             let ellipse =  Ellipse(center: Point (cord), radiusX:25, radiusY: 45, fillMode: .fillAndStroke)
             canvas.render (LineWidth(width:3), StrokeStyle(color:Color(.white)), FillStyle(color:Color(.white)), ellipse)


 }





 func ellipses21(canvas: Canvas, cord: inout DoublePoint) {

  
             let ellipse =  Ellipse(center: Point (cord), radiusX:25, radiusY: 45, fillMode: .fillAndStroke)
             canvas.render (LineWidth(width:3), StrokeStyle(color:Color(.white)), FillStyle(color:Color(.white)), ellipse)


 }






func rectangle21(canvas:Canvas) {
            let rect11 = Rect(topLeft:Point(x:300, y:90), size:Size(width:400, height:700))
            let rectangle11 = Rectangle(rect:rect11, fillMode:.fillAndStroke)
            let fillStyle2 = FillStyle(color:Color(.white))
           // let strokeStyle = StrokeStyle(color:Color(.blue))
          //  let lineWidth = LineWidth(width:5)
            canvas.render(StrokeStyle(color:Color(.white)), fillStyle2, rectangle11)
        }





 

func rectangle22(canvas:Canvas) {
            let rect12 = Rect(topLeft:Point(x:300, y:275), size:Size(width:320, height:200))
            let rectangle12 = Rectangle(rect:rect12, fillMode:.fillAndStroke)
            let fillStyle3 = FillStyle(color:Color(.blue))
           // let strokeStyle = StrokeStyle(color:Color(.blue))
          //  let lineWidth = LineWidth(width:5)
            canvas.render(fillStyle3, rectangle12)
        }





func rectangle23(canvas:Canvas) {
            let rect13 = Rect(topLeft:Point(x:400, y:75), size:Size(width:100, height:600))
            let rectangle13 = Rectangle(rect:rect13, fillMode:.fillAndStroke)
            let fillStyle4 = FillStyle(color:Color(.blue))
           // let strokeStyle = StrokeStyle(color:Color(.blue))
          //  let lineWidth = LineWidth(width:5)
            canvas.render(fillStyle4, rectangle13)
        }




 func ellipses28(canvas: Canvas, cord: inout DoublePoint) {

     //let ellipse - Ellipse(center:Point (cord), radiusX:30, radiusY: 60, fillMode: .fillAndStroke)

     for y in 0..<7{

         for x in 0..<7 {

             let ellipse = Ellipse(center:Point (cord), radiusX:25, radiusY: 45, fillMode: .fillAndStroke)
             canvas.render (LineWidth(width:2), StrokeStyle(color:Color(.white)), FillStyle(color:Color(.white)), ellipse)

             if x == 3 {

                 let ellipse = Ellipse(center:Point (cord), radiusX: 25, radiusY: 45, fillMode: .fillAndStroke)
                 canvas.render (LineWidth (width:3), StrokeStyle(color: Color(.white)), FillStyle(color:Color(.white)), ellipse)
             }






         }

         if y == 3 {


             let ellipse =  Ellipse(center: Point (cord), radiusX:25, radiusY: 45, fillMode: .fillAndStroke)
             canvas.render (LineWidth(width:3), StrokeStyle(color:Color(.blue)), FillStyle(color:Color(.blue)), ellipse)

         }

         cord.x += 52

     }
     cord.x = 300
     cord.y += 92
 }










 







     
    
 func renderPattern9(canvas:Canvas) {
     renderLabel(canvas:canvas, patternId:9)

     
     
     rectangle21(canvas:canvas) // orange rectangle // changed to white

       var cord10 = DoublePoint (x: 625, y: 375)
         
             ellipses10(canvas: canvas, cord: &cord10)

          var cord11 = DoublePoint (x: 290, y: 375)
         
             ellipses10(canvas: canvas, cord: &cord11)


             

     rectangle22(canvas:canvas) // blue horizontal rectangle // changed to white
    
     rectangle23(canvas:canvas) // blue vertical rectangle // changed to white




     
     var cord13 = DoublePoint (x: 300, y: 75)
         
         ellipses28(canvas: canvas, cord: &cord13)


          var cord14 = DoublePoint (x: 300, y: 175)
         
         ellipses28(canvas: canvas, cord: &cord14)

             var cord15 = DoublePoint (x: 300, y: 275)
         
         ellipses28(canvas: canvas, cord: &cord15)



              var cord16 = DoublePoint (x: 300, y: 475)
         
         ellipses28(canvas: canvas, cord: &cord16)


         
              var cord17 = DoublePoint (x: 300, y: 575)
         
              ellipses28(canvas: canvas, cord: &cord17)


              
              var cord18 = DoublePoint (x: 300, y: 675)
         
             ellipses28(canvas: canvas, cord: &cord18)











     
    }


      init() {
          // Using a meaningful name can be helpful for debugging
          super.init(name:"Background")
      }

      override func render(canvas:Canvas) {
          if let canvasSize = canvas.canvasSize, !didRender {
              // Clear the entire canvas
              let clearRect = Rect(topLeft:Point(x:0, y:0), size:canvasSize)
              let clearRectangle = Rectangle(rect:clearRect, fillMode:.clear)
              canvas.render(clearRectangle)

              switch (currentPattern) {
              case 1:
                  renderPattern1(canvas:canvas)
              case 2:
                  renderPattern2(canvas:canvas)
              case 3:
                  renderPattern3(canvas:canvas)
              case 4:
                  renderPattern4(canvas:canvas)
              case 5:
                  renderPattern5(canvas:canvas)
              case 6:
                  renderPattern6(canvas:canvas)
              case 7:
                  renderPattern7(canvas:canvas)
              case 8:
                  renderPattern8(canvas:canvas)
              case 9:
                  renderPattern9(canvas:canvas)
              default:
                  fatalError("Unexpected pattern: \(currentPattern)")
              }
              didRender = true
          }
      }
      override func setup(canvasSize:Size, canvas:Canvas) {
          dispatcher.registerEntityMouseClickHandler(handler:self)
          rect = Rect(size: canvasSize)
      }

      override func teardown() {
          dispatcher.unregisterEntityMouseClickHandler(handler:self)
      }
      func onEntityMouseClick(globalLocation: Point) {
          currentPattern += 1
          if (currentPattern > maxPattern) {
              currentPattern = 1
          }
          didRender = false
      }
      override func boundingRect() -> Rect {
          if let rect = rect {
              return rect
          } else {
              return Rect()
          }
      }
}


