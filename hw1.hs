main = do

	let s1 = (cypher "HELLO THERE")::String
	let s2 = (cypher "WORLD STAR")::String
	let s3 = (cypher "HASKELL IS GREAT")::String
	let s4 = (cypher "JAYHAWKS RULE")::String
	putStrLn (s1 ++ s2 ++ s3 ++ s4)
	let s5 = (cypher s1)::String  
	let s6 = (cypher s2)::String 
	let s7 = (cypher s3)::String 
	let s8 = (cypher s4)::String 
	putStrLn (s5 ++ s6 ++ s7 ++ s8)

f x = case x of 
	'A' -> 1
	'B' -> 2
	'C' -> 3
	'D' -> 4
	'E' -> 5
	'F' -> 6
	'G' -> 7
	'H' -> 8
	'I' -> 9
	'J' -> 10
	'K' -> 11
	'L' -> 12
	'M' -> 13
	'N' -> 14
	'O' -> 15
	'P' -> 16
	'Q' -> 17
	'R' -> 18
	'S' -> 19
	'T' -> 20
	'U' -> 21
	'V' -> 22
	'W' -> 23
	'X' -> 24
	'Y' -> 25
	'Z' -> 26
	_ -> 0

y x = (x+13) `mod` 26

g x = case x of 
	1-> 'A'
	2-> 'B'
	3-> 'C'
	4-> 'D'
	5-> 'E'
	6-> 'F'
	7-> 'G'
	8-> 'H'
	9-> 'I'
	10->'J'
	11->'K'
	12->'L'
	13->'M'
	14->'N'
	15->'O'
	16->'P'
	17->'Q'
	18->'R'
	19->'S'
	20->'T'
	21->'U'
	22->'V'
	23->'W'
	24->'X'
	25->'Y'
	26->'Z'
	_ -> ' '

cypher s = map g (map y (map f s))







	