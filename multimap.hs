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

main = do multimap(map [1,2,3], )
