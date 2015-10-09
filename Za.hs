{-# LANGUAGE GADTs, KindSignatures #-}

module Za where

	import Data.Char

	data Topping = Olive | Sausage | Cheese | Pepperoni | Pepper | Mushroom 
		deriving (Enum)

	data Size = Personal | Small | Medium | Large | Party 
		deriving (Enum)

	data Pizza :: * where
		Pizza :: [Topping] -> Size -> Pizza

	instance Show Size where
		show Personal = "Personal"
		show  Small = "Small"
		show  Medium = "Medium"
		show  Large = "Large"
		show  Party = "Party"

	instance Show Topping where
		show Olive = "Olive"
		show Sausage = "Sausage"
		show Cheese = "Cheese"
		show Pepperoni = "Pepperoni"
		show Pepper = "Pepper"
		show Mushroom = "Mushroom"

	instance Show Pizza where
		show (Pizza a b ) = show b ++ " pizza with the following toppings: " ++ show a

