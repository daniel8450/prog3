dd :: (Float -> Float) -> Float
dd fx = ((f(x+0.1))-(f(x-0.1)))/(.02)


dx :: (Float -> Float) -> (Float -> Float)
dx n = if (n%1==0) then dx 0
       else dd n
       
main = do
let m = dx 3
print m
let w = dx 3x
print w

       
