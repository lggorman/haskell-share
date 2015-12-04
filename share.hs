import Data.Char

dropPrices:: [Int] -> [Int]
dropPrices prices = [x - 5 | x<- prices]

isSale:: [Int] -> [Int] -> Bool
isSale [] [] = True
isSale (x:xs) (y:ys)
       | x > y = isSale xs ys
       | otherwise = False

-- f(g(x))

allCaps:: [Char] -> [Char]
allCaps word = [toUpper x | x<-word]

double:: [Char] -> [Char]
double word = word ++ word

compose:: ([Char] -> [Char]) -> ([Char] -> [Char]) -> [Char] -> [Char]
compose f1 f2 word = f1 (f2 word)

-- List Comprehension

findEvens::[Int] -> [Int]
findEvens numList = [x | x<-numList, even x]

-- Partial Application aka currying

add:: Int -> Int -> Int
add x y = x + y

addOne  = add 1

-- Pattern Matching

isItSeven:: Int -> Bool
isItSeven 7 = True
isItSeven _ = False

-- Creating Types

data Color = Green | Purple | Blue | Yellow
     deriving ( Show )

getPrice:: Color -> Int
getPrice Blue = 100
getPrice _ = 5

-- Polymorphism

polymorphic:: (a -> a) -> [a] -> [a]
polymorphic fn list = map fn list


