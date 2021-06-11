doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100
                        then x
                        else x * 2

-- list comprehension.
l = [x*2 | x <- [1..10]]
-- x*2 from x in [1..10] where x*2 > 10
bl = [x*2 | x <- [1..10], x*2 > 10]

-- What if we want all numbers from 50 to 100 whose remainder whendivided by 7 is 3? Easy:
bl3 = [x | x <- [50..100], mod x 7 == 3]

-- we want a comprehension that replaces every odd number greater than 10 with"BANG!",
-- and every odd number less than 10 with"BOOM!". 
-- If a number isn’t odd, we throw it out of ourlist.
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- comprehensions with multiple lists.
multiListComp = [x+y | x <- [10, 20, 30], y <- [100, 200, 300]]
--[110,210,310,120,220,320,130,230,330]

nouns = ["hobo","frog","pope"]
adjectives = ["lazy","grouchy","scheming"]
nas = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

length' xs = sum [1 | _ <- xs]
removeNonUpperCase st = [c | c <- st, elem c ['A'..'Z']]

-- nested lists in list comprehension
xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
evenxxs = [[x | x <- xs, even x] | xs <- xxs]

-- Tuples
-- Fixed size
t1 = (1, 2)

-- Get the first and second item.
firstt1 = fst t1
sect1 = snd t1

-- fst and snd only work on tuples which are pairs, won't work on triples, 4-tuples etc.

--zip
zns = zip [1, 2, 3] ["One", "Two", "Three"]
-- if the lists to zip are different sizes, it stops at smallest. This means you can even
-- use infinite lists with finite lists.
zinf = zip [1..] ["One", "Two", "Three"]

-- Find the Right angle triangle that fits the following:
-- 1) The lengths of the three sides are all integers
-- 2) The length of each side is less than or equal to 10
-- 3) The triangles perimiter is equal to 24

-- Get all tripes, filter those that sum to 24, and those that are pythagorean triples.
pytrips = [(a, b, c) | c <- [1..10], a <- [1..c], b <- [1..a], a+b+c == 24, a^2 + b^2 == c^2]

