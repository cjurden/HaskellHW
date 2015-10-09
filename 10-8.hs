{-# LANGUAGE GADTs, KindSignatures #-}
--building a small DSL that does arithmetic

data Expr :: * where
	Lit :: Int -> Expr
	Add :: Expr -> Expr -> Expr
	deriving Show

eval :: Expr -> Int
eval (Lit i) = i
eval (Add e1 e2) = (eval e1) + (eval e2)

instance Num Expr where
	fromInteger :: Lit . fromInteger
	(+) = Add
	