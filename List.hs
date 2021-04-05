import Data.List
import System.IO

primeNumbers = [3,5,7,11]

morePrimes = primeNumbers ++ [13,17,19,23,29]

favNums = 2 : 7 : 21 : 66 :[] -- Cria uma lista
-- Operador ":" é chamado de operador Cons, e em haskell
-- é utilizado para anexar um elemento principal
-- a uma lista

morePrimes2 = 2 : morePrimes -- anexa 2 em, morePrime

-- safe language
lenPrime = length morePrimes2

revPrime = reverse morePrimes2

isListEmpy = null morePrimes2

secondPrime = morePrimes2 !! 1 -- !! utilizado para filtrar
-- um indice da lista

firstPrime = head morePrimes2 -- retorna o primeiro valor
lastPrime = last morePrimes2 -- retorna o ultimo primo

first3Primes = take 3 morePrimes2 
removedPrimes = drop 3 morePrimes2

is7InList = 7 `elem` morePrimes2

maxPrime = maximum morePrimes

newList = [2,3,5]

prodPrimes = product newList

zeroToTen = [0..10]

evenList = [2,4..20] 

letterList = ['A', 'C'..'Z']

infinPow10 = [10,20..]

many2s = take 10 (repeat 2)

many3s = replicate 10 3

cycleList = take 10 (cycle [1,2,3,4,5])

listTimes2 = [x * 2 | x <- [1..10]]
-- Atribui temporariamente o valor da lista interna em x
-- multiplica x por 2 e atribui a lista principal

listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50]
-- Atribuir apenas valores em que x * 3 é menor ou igual a 50

divisBy9N13 = [x | x <-  [1..500], x `mod` 13 == 0, x `mod` 9 == 0]
-- SELECT x
-- FROM [1..500]
-- WHERE x `mod` 13 == 0 or
--       x `mod` 9 == 0

sortedList = sort [9,1,8,3,4,7,6]

sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]
-- "concatena com a soma"

listBiggerThen5 = filter (>5) morePrimes

evensUpTo20 = takeWhile (<= 20) [2,4..]

multOfListl = foldl (*) 1 [2,3,4,5] 
-- Realiza a operação "left-right"

multOfListr = foldr (*) 1 [2,3,4,5]

pow3List = [3^n | n <- [1..10]]