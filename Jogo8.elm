import Graphics.Collage exposing (..)
import Graphics.Element exposing (..)
import Text
import Color exposing (..)

type Cell = Cell { x : Float, y : Float, v: String }
type Game = Game { cells: List Cell }

main = display <| Game { cells = [
              Cell { x = -40, y = -40, v = "1" }
            , Cell { x =   0, y = -40, v = "2" }
            , Cell { x =  40, y = -40, v = "3" }
            , Cell { x = -40, y =   0, v = "4" }
            , Cell { x =   0, y =   0, v = "5" }
            , Cell { x =  40, y =   0, v = "6" }
            , Cell { x = -40, y =  40, v = "7" }
            , Cell { x =   0, y =  40, v = "8" }
            , Cell { x =  40, y =  40, v = " " }
            ] }

display : Game -> Element
display (Game g) = collage 120 120 <| List.map displayCell g.cells

displayCell : Cell -> Form
displayCell (Cell c) = move (c.x,  c.y) (group [filled red (rect 30 30), text <| Text.bold <|Text.fromString c.v] )
