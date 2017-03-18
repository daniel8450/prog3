map :: (a -> a) -> [a] -> [a]
map _ [] = []
map n (x:xs) = n x : map n xs

filter :: (a -> Bool) -> [a] -> [a]
filter _ [] = []
filter f (x:xs)
  | f x      = x : (filter f xs)
  | otherwise = filter f xs
  
multimap :: (a -> [a]) -> [a] -> [[a]]
multimap _ [] = []
multimap (x:xs) (y:ys) = x y : multimap xs ys

main = do
let x = [1,2,3]
let y = [6,7]
let z = filter((>2) x)
let b = map((+3) x)
let m = multimap((+3) x y)
print z
print b
print m

