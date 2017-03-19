mapp :: (a -> a) -> [a] -> [a]
mapp _ [] = []
mapp n (x:xs) = n x : mapp n xs

filterr :: (a -> Bool) -> [a] -> [a]
filterr _ [] = []
filterr f (x:xs)
  | f x      = x : (filterr f xs)
  | otherwise = filterr f xs
  
multimap :: (a -> [a]) -> [a] -> [[a]]
multimap _ [] = []
multimap f (x:xs) = f x : multimap f xs ++ [xs]

          

main = do
let x = [1,2,3]
let y = [6,7,3]
let z = filterr (>1) x
let w = mapp (+3) y
m = multimap (filter (>2)) x
print z
print w
print m

