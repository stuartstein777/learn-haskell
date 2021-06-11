-- Type definitions on functions
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ s | s <- st, elem s ['A'..'Z']]

-- Type definitions with multiple parameters. Last type is the return type.
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2*pi*r

-- Type variables
-- Functions like head take a list and return the item at the head of the list. SO the type here is
-- ghci> :t head
-- head :: [a] -> a

-- ghci> :t fst
-- fst :: (a, b) -> a

-- Functions that use these type variables are polymorphic functions


-- Type classes
-- Type class is like an interface that defines behaviour.
-- If a type is an instance of a type class then it supports and implements the behavior the type class
-- describes.

-- Equality
-- ghci> :t (==)
-- (==) :: Eq a => a -> a -> Bool
--
-- Everything before => is called a class constraint.
-- (==) takes 2 types, that must both be of the same type, that is they both implement Eq.
-- It returns a Bool.

-- The Ord Type Class
-- ghci> :t (>)
-- (>) :: Ord a => a -> a -> Bool
-- 
-- Takes 2 parameters of type a, where both have to implement Ord, returns a Bool

-- The Show Type Class
-- Values whose types are instances of the Show Type Class can be represented as strings
-- ghci> :t show
-- show :: Show a => a -> string

-- The Read Type Class
-- Opposite of Show. Takes a string and returns a value whos type is an instance of Read
-- ghci> :t read
-- read :: Read a => String -> a
--
-- ghci> read "4" - 2
-- 2
-- This works as it can infer the type of read "4" from the fact that we are doing - 2 on it,
-- so it knows it needs to be a number. If we do just
-- ghci> read "4"
-- it errors, as it can't infer the type. We can use type annotations to help it.
-- ghci> read "4" :: Int
-- 4


-- The Enum Type Class
-- Sequentially ordered types. Each value of Enum type class has defined pred and succ values.
-- e.g.
predz = pred 'Z'
-- 'Y'
pred5 = pred 5
-- 4

