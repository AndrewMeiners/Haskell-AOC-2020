module Main where

import System.Environment

main :: IO ()
main = do
  [filePath] <- getArgs
  entries <- map read . lines <$> readFile filePath :: IO [Int]
  putStrLn $ show $ head [ i * j | i <- entries, j <- entries, i + j == 2020]

