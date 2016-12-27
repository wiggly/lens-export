{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TemplateHaskell #-}

module Rabbit (
  Rabbit(..)
--  , uuid
--  , name
  ) where

import Control.Lens

data Rabbit = Rabbit {
  _rabbitUuid :: String
  , _rabbitName :: String
  } deriving (Show)

--makeFields ''Rabbit
