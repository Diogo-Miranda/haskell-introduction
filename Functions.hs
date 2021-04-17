import Data.List
import System.IO

addMe :: Int -> Int -> Int

-- funcName param1 param2 = operations (returned value)

addMe x y = x + y

-- Define basicamente um "fluxo" para a função
-- Em que: Uma tupla infere em outra tupla, e retorna uma tupla
addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)

whatAge :: Int -> String 
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You're an adult"
whatAge _ = "Nothing Important"

-- Recursion
factorial :: Int -> Int 

factorial 0 = 1
factorial n = n * factorial (n -1)

productFact n = product [1..n]

isOdd :: Int -> Bool -- Recebe um int e retorna um b ooleano
isOdd n 
    | n `mod` 2 == 0 = False
    | otherwise = True 

isEven n = n `mod` 2 == 0

whatGrade :: Int -> String 

whatGrade age
    | (age >= 5) && (age <= 6) = "Kindergarten"
    | (age > 6) && (age <= 10) = "Elementary School"
    | (age > 10) && (age <= 14) = "Middle School"
    | (age > 14) && (age <= 18) = "High School"
    | otherwise = "Go to college"

batAvgRating :: Double -> Double -> String 

batAvgRating hits atBats
    | avg <= 0.200 = "Terrible Batting Average"
    | avg <= 0.250 = "Average Player"
    | avg <= 0.280 = "Tour doing pretty good"
    | otherwise = "You're a Superstar"
    where avg = hits / atBats

getListItems :: [Int] -> String 

getListItems [] = "Your list is empty"
getListItems (x:[]) = "Your list starts with " ++ show x
getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "The 1st item is " ++ show x ++ " and the rest are " ++ show xs
