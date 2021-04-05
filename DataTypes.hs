import Data.List
import System.IO

-- Int -2^63 2^63
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Boll True False
-- Char single character '
-- Tuple : contêm mais de dois valores
always5 :: Int
always5 = 5

sumOfNums = sum [1..1000]

addEx = 5 + 4
subEx = 5 - 4
multEx = 5 * 4
divEx = 5 / 4

modEx = mod 5 4 -- Prefix operator
modEx2 = 5 `mod` 4

-- :t sqrt
-- Floating a => a -> a
num9 = 9 :: Int
sqrtOf9 = sqrt(fromIntegral num9) 
-- é necessário converter num9 para float, ja que a funcao
-- sqrt espera um float 
-- fromIntegral: converte para float

-- Built in math functions
piVal = pi 
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999

-- Also sin, cos, tan, asin, atan, acos

trueAndFalse = True && False
trueOrFalse = True || False 
notTrue = not(True)

-- :t (+)
-- (+) || Num a => a -> a -> a

-- :t (+)
-- truncate :: (RealFrac a, Integral b) => a -> b
-- recebe um numero real a, e retorna um integral b