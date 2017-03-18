map :: (a -> a) -> [a] -> [a]
Main.map _ [] = []
Main.map n (x:xs) = n x : Main.map n xs

filter :: (a -> Bool) -> [a] -> [a]
Main.filter _ [] = []
Main.filter f (x:xs)
  | f x      = x : (Main.filter f xs)
  | otherwise = Main.filter f xs
  
multimap :: (a -> [a]) -> [a] -> [[a]]
Main.multimap _ [] = []
Main.multimap (x:xs) (y:ys) = x y : Main.multimap xs ys

main = do
let x = [1,2,3]
let y = [6,7]
let z = Main.filter((>2) x)
let b = Main.map((+3) x)
let m = Main.multimap((+3) x y)
print z
print b
print m

