module Main where

import System.Environment

main :: IO ()
main = do
  [filePath] <- getArgs
  entries <- map read . lines <$> readFile filePath :: IO [Int]
  putStrLn "1A"
  putStrLn $ show $ head [ i * j | i <- entries, j <- entries, i + j == 2020]
  putStrLn "1B"
  putStrLn $ show $ head [ i * j * k | i <- entries, j <- entries, k <- entries, i + j + k == 2020]


