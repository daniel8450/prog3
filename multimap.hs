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
multimap (b:bs) (y:ys) =  b y : multimap bs ys
          

main = do
let x = [1,2,3]
let y = [6,7,3]
let z = filterr (==2) x
let w = mapp (+3) y
let m = (multimap (+5) [5,6,7])
print x
print w
print m

