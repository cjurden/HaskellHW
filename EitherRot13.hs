{-# LANGUAGE GADTs, KindSignatures #-}

module ERot13 where

import Data.Char

{-
data Rot :: * -> * where --kind *->*
	Symbol :: Char 	-> Rot a--uninteresting
	Thing :: a 		-> Rot a  --interesting
	deriving (Show)

instance Functor Rot where
	fmap f (Symbol s) = Symbol s
	fmap f (Thing t)  = Thing (f t)

--doRot13 (Symbol s) = Symbol s
--doRot13 (Char i)   = Char ((i  + 13) `mod` 26)

fromChar :: Char -> Rot Int
fromChar c 
	| c >= 'a' && c <= 'z' = Thing (ord c - ord 'a')
	| otherwise			   = Symbol c

toChar :: Rot Int -> Char
toChar (Symbol s) = s
toChar (Thing i)	  = chr (ord 'a' + i)
-}

doRot13 :: Rot Int -> Rot Int
doRot13 = fmap (\ i -> (i  + 13) `mod` 26)


data Either :: * -> * -> * where
	Left :: a  -> Either a b
	Right :: b -> Either a b

fromChar :: Char -> Either Char Int
fromChar c 
	| c >= 'a' && c <= 'z' = Right (ord c - ord 'a')
	| otherwise			   = Left c

toChar :: Either Char Int -> Char
toChar (Left c) = c
to char (Right v) = chr (ord 'a' + v)

rot13 :: String -> String
rot13 = map toChar . map doRot13 . map fromChar
rot13 = fmap toChar . fmap (fmap(\ i -> (i  + 13) `mod` 26)) . fmap fromChar

--fmap :: (a->b) -> (Either x a) -> (Either x b)
instance Functor (Either x) where
	fmap f (Left a) 	= Left a
	fmap f (Right b) 	= Right (f b)




