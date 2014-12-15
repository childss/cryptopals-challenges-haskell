module Set1Spec ( spec ) where

import Test.Hspec
import Data.ByteString.Char8 as BS
import Data.ByteString.Base16 as Base16
import qualified Cryptopals

spec = do
    describe "Challenge 1" $ do
        it "convert hex to base64" $ do
            let d = Base16.decode (BS.pack "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d")
            (Cryptopals.base64Encode $ fst d) `shouldBe` "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t"
