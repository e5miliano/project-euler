


digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

