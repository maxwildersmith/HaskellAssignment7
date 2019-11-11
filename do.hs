foo :: Maybe String
foo = do
    x <- Just 3
    y <- Just "!"
    Just (show x ++ y)

marySue :: Maybe Bool
marySue = do
      x <- Just 9
      Just (x > 8)

justH :: Maybe Char
justH = do
    (x:xs) <- Just "hello"
    return x

fail :: (Monad m) => String -> m a
fail msg = error msg

listOfTuples :: [(Int,Char)]
listOfTuples = do  
    n <- [1,2]
    ch <- ['a','b']
    return (n,ch)

sevensOnly :: [Int]
sevensOnly = do
    x <- [1..50]
    guard ('7' `elem` show x)
    return x
