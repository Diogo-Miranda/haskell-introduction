module Fractals where

  -- needed to display the picture in the playground
import Codec.Picture

  -- our line graphics programming interface
import LineGraphics

spiralRays :: Float -> Float -> Int -> Colour -> Line -> Picture
spiralRays angle scaleFactor n colour line
  = spiralRays' n colour line
  where
    spiralRays' n colour line@(p1, p2)
      | n <= 0 = []
      | otherwise = (colour, [p1, p2]) : spiralRays' (n-1) newColour newLine
      where
        newColour = fade colour
        newLine   = scaleLine scaleFactor (rotateLine angle line)  

rotateLine :: Float -> Line -> Line -- rotate a line at its origin by a given angle
rotateLine alpha ((x1, y1), (x2, y2))
  = ((x1, y1), (x' + x1, y' + y1))
  where
    x0 = x2 - x1
    y0 = y2 - y1
    x' = x0 * cos alpha - y0 * sin alpha
    y' = x0 * sin alpha + y0 * cos alpha

scaleLine :: Float -> Line -> Line --  change the length of a line
scaleLine factor ((x1, y1), (x2, y2))
  = ((x1, y1), (x' + x1, y' + y1))
  where 
    x0 = x2 - x1
    y0 = y2 - y1 
    x' = factor * x0
    y' = factor * y0

fade :: Colour -> Colour -- decrease the opacity of a colour.
fade (redC, greenC, blueC, opacityC)
  = (redC, greenC, blueC, opacityC - 1)