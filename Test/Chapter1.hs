{-# LANGUAGE TemplateHaskell #-}

import Test.QuickCheck
import qualified Src.Chapter1 as Src
import qualified Answer.Chapter1 as Ans

type Point = (Int, Int)

prop_manlen (p1, p2) = Src.manlen p1 p2 == Ans.manlen p1 p2
test_manlen = quickCheck prop_manlen

prop_points n = Src.points n == Ans.points n
test_points = quickCheck prop_points

prop_mancircle n = Src.mancircle n == Ans.mancircle n
test_mancircle = quickCheck prop_mancircle

test = $quickCheckAll
