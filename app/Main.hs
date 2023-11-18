module Main where

import GHC.Float (ceilingDouble, floorDouble, roundDouble)

progVersion :: Double
progVersion = 1.1

allowPermissions :: String
allowPermissions = "root"

userRole :: Int
userRole = 1

allowOptions :: Char
allowOptions = 'y'

rate :: Double
rate = 100

main :: IO ()
main = do
  putStrLn ("\nRunning version: " ++ show progVersion)
  if allowOptions == 'y'
    then putStrLn ("Allow options: " ++ show allowOptions ++ "\n***Running with selected option ***")
    else putStrLn "Procceeding with standard|default options..."
  putStrLn ("Rate: " ++ show (floorDouble (rate - (4 ** 2.56))))

  putStrLn "Please create a username >"
  name <- getLine

  if allowPermissions == "root"
    then putStrLn ("Current profile: " ++ name ++ "\nRunning as: " ++ allowPermissions)
    else putStrLn "You do not have sufficient permissions..."
