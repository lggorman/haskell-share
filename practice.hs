import Data.Char

greaterThan:: Int -> Int -> Bool
greaterThan num1 num2
       | num1 < num2 = False
       | otherwise = True

-- recursion
printXs:: Int -> [Char]
printXs num
       | num > 0 = "x" ++ printXs (num-1)
       | otherwise = "x"

printSquare:: Int -> Int -> [Char]
printSquare height width
       | height > 0 = (printXs width ++ "\n") ++ printSquare (height - 1) width
       | otherwise = printXs 0
       

-- recursion over an array
addition:: [Int] -> Int
addition (x:xs) = x + addition xs
addition [] = 0

-- accepting a function as an argument
transform:: (a -> a) -> [a] -> [a]
transform fn xs = map fn xs

-- list comprehension
iterating:: [Char] -> [Bool]
iterating xs = [isUpper c | c<-xs ]

-- definiing data types, pattern matching
data Color = Green | Purple | Blue | Yellow
     deriving ( Show )

isBlue:: Color -> Bool
isBlue Blue = True
isBlue _ = False

