data BTree = Nil | Node Int BTree BTree deriving Show

getValue :: BTree -> Int
getValue Nil = 0
getValue (Node value left right) = value

checkGrandkid :: Int -> BTree -> Bool
checkGrandkid _ Nil = True
checkGrandkid v (Node _ left right) = if v< getValue left || v < getValue right then False else True

grandchildrenIncreased :: BTree -> Bool
grandchildrenIncreased Nil = True
grandchildrenIncreased (Node v left right) = if checkGrandkid v left && checkGrandkid v right then grandchildrenIncreased left && grandchildrenIncreased right else False 

