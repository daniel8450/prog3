mapp :: (a -> a) -> [a] -> [a]
mapp _ [] = []
mapp n (x:xs) = n x : mapp n xs

filterr :: (a -> Bool) -> [a] -> [a]
filterr _ [] = []
filterr f (x:xs)
  | f x      = x : (filterr f xs)
  | otherwise = filterr f xs
  
mM :: a -> [a]
mM x = [x]

multimapp :: (a -> [a]) -> [a] -> [[a]]
multimapp _ [] = []
multimapp f (x:xs) = f x : multimapp f xs

main = do
let x = [1,2,3]
let y = [6,7,3]
let z = filterr (>1) x
let w = mapp (+3) y
let m = multimapp mM x
let i = [1,1,1]
let u = [(+3),(+4),(+5)]
let q = multimapp (mM i) u

putStrLn "z = filterr (>1) [1,2,3]:"
print z
putStrLn "w = mapp (+3) [6,7,3]:"
print w
putStrLn "m = multimapp mM [1,2,3]:"
print m
print q

