mapp :: (a -> a) -> [a] -> [a]
mapp _ [] = []
mapp n (x:xs) = n x : mapp n xs

filterr :: (a -> Bool) -> [a] -> [a]
filterr _ [] = []
filterr f (x:xs)
  | f x      = x : (filterr f xs)
  | otherwise = filterr f xs
  
--multimap :: (a -> [a]) -> [a] -> [[a]]
--multimap _ [] = []
--multimap n (x:xs) (y:ys) =  n x y : multimap mapp n xs ys

main = do
let x = [1,2,3]
let y = [6,7]
let z = filterr((>2) x)
let b = mapp((+3) y)
--let m = multimap((map (+3)) x y)
print z
print b
--print m

