-- Pattern Matching
lucky :: Int -> String
lucky 7 = "LUCK NUMBER SLEVIN"
lucky x = "Sorry, you're out of luck!"

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n-1)

-- take 2 vectors of (Double, Double) and return a (Double, Double)
addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
-- This is using catch all pattern matching (the args to the tuples are lower case)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)


third :: (a, b, c) -> c
third (_, _, z) = z

head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

-- As patterns
-- Lets you keep the entire thing you are pattern matching against, while also breaking itup.
firstLetter :: String -> String
firstLetter "" = "Empty string!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

-- Guards!
bmiTell :: Double -> Double -> String
bmiTell weight height
    | bmi <=18.5 = "You're underweight, eat more"
    | bmi <=25.0 = "Looking good"
    | bmi <=30.0 = "Overweight"
    | otherwise  = "You're obese!"
    where bmi = weight / height^2

max' :: (Ord a) => a -> a -> a
max' x y
    | x <= y = y
    | otherwise = x