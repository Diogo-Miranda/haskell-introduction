# haskell-introduction

# Draw differents figures

`let line = ((400,400), (420,420))`

`writePng "fractal1.png" (drawPicture 4 (spiralRays (pi/27.6) 1.015 300 red line))`

`writePng "fractal1.png" (drawPicture 4 (spiralRays (pi/7.2) 1.015 400 white line))`

`writePng "fractal1.png" (drawPicture 4 (spiralRays (pi/1.23) 1.015 400 green line))`

`line = ((400,400), (620, 620))`

`writePng "fractal1.png" (drawPicture 4 (spiralRays (pi/1.23) 0.95 400 green line))`