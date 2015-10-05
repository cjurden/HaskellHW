{-# LANGUAGE GADTs, KindSignatures #-}

module Za where 

	data Topping = Olive | Sausage | Cheese | Pepperoni | Pepper | Mushroom 
		deriving (Enum)

	data Size = Personal | Small | Medium | Large | Party 
		deriving (Enum)

	data Pizza :: * -> * -> * where
		Pizza :: [Topping] -> Size -> Pizza [Topping] Size

	instance (Show a, Show b) => Show (Pizza a b) where
		show (Pizza a b) = show b ++ " pizza with the following toppings: " ++ show a

	instance Show a => Show Topping where
		show a = show Topping


	--instance Show Size where
	--	show x = x 


--need to figure out how to show the toppings as a list a in the derived show function
