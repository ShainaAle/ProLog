--Shaina Alexandra Xochitiotzi Rojas
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

prime :: Int -> Bool
prime n = factors n == [1,n]

primes:: Int -> [Int]
primes y = [x | x <- [2..y], prime x]

primoGem :: Int -> [Int]
primoGem n = [x|x<-[1..n], prime x, prime (x+2) || prime(x-2)]