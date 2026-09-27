import Data.Text.Lazy.Read (double)







lst :: [[Double]]
lst = [[0.1,0.2,0.05]
      ,[0.11,0.12,0.17]
      ,[0.11,0.06,0.08]]


svar :: Double
svar = cov lst

medIndex :: [[Double]] ->  [[(Double, (Integer, Integer))]]
medIndex  lst = zipWith (\x y -> zip x (innerLst y) ) lst [0..]
    where 
    innerLst y = do
        a <- repeat y
        b <- [0.. ]
        pure (a,b)

cov :: [[Double]] -> Double
cov  = sum . map ( sum .  map f) . medIndex 
    where 
    e :: Double
    e           = 0.9
    e2          = 0.98
    f (a, (b,c))= (fromIntegral b - e) * (fromIntegral  c - e2) * a





















