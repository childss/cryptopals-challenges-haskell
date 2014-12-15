module Set1Spec ( spec ) where

import Test.Hspec

spec = do
    describe "Testing" $ do
        it "123" $ do
            head [23 ..] `shouldBe` (23 :: Int)
