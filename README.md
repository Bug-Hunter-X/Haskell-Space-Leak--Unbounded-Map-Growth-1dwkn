# Haskell Space Leak: Unbounded Map Growth

This repository demonstrates a common space leak in Haskell applications. The program uses `Data.Map` to store data, and a naive implementation leads to unbounded memory consumption.  This example highlights the importance of managing memory carefully in Haskell, especially when dealing with mutable structures.

## Bug Report

The `bug.hs` file contains the erroneous code.  The `keep` function accumulates entries in a `Data.Map`, but it never removes them, resulting in a continuously growing `Data.Map` that consumes ever-increasing memory.  This eventually causes the program to crash or become unresponsive.

## Solution

The `bugSolution.hs` file provides a corrected version. The solution implements a strategy to remove older elements from the map as new elements are added, keeping the overall size of the map bounded and preventing the space leak.  Various strategies are available to limit map size such as using a limited size map, implementing an LRU cache, or implementing a sliding window using a queue.