{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TemplateHaskell #-}

module Donkey (
  Donkey(..)
--  , uuid
--  , name
  ) where

import Control.Lens

data Donkey = Donkey {
  _donkeyUuid :: String
  , _donkeyName :: String
  } deriving (Show)

-- makeFields ''Donkey
