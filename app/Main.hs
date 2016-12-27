{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TemplateHaskell #-}

module Main where

import Control.Lens

import Donkey
import Rabbit

data Fish = Fish {
  _fishUuid :: String
  , _fishName :: String
  } deriving (Show)
makeFields ''Fish

-- makeFields ''Donkey
makeFields ''Rabbit

main :: IO ()
main = do
  let fish = Fish "xxx-yyyy-zzzz-aaaa" "Herbert"
      donkey = Donkey "aaaa-xxx-yyyy-zzzz" "Frank"
      rabbit = Rabbit "zzzz-aaaa-xxx-yyyy" "Billy"
      fishName = fish^.name
      donkeyName = donkey^.name
      rabbitName = rabbit^.name

  putStrLn $ "fish: " ++ (show fish)
  putStrLn $ "fish name: " ++ fishName
  putStrLn "\n\n"

  putStrLn $ "donkey: " ++ (show donkey)
  putStrLn $ "donkey name: " ++ donkeyName
  putStrLn "\n\n"

  putStrLn $ "rabbit: " ++ (show rabbit)
  putStrLn $ "rabbit name: " ++ rabbitName
  putStrLn "\n\n"

  return ()
