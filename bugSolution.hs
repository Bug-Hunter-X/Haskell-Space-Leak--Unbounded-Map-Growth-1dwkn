```haskell
module Main where

import qualified Data.Map as Map
import Data.Maybe (fromMaybe)

--Keep only the last 10 elements using a bounded map
keep :: Int -> Map.Map Int Int -> Int -> Map.Map Int Int
keep limit m k = Map.insert k k (Map.take 10 (Map.insert k k m))

main :: IO ()
main = do
  let initialMap = Map.empty
  let finalMap = foldl (keep 10) initialMap [1..100]
  print finalMap
```