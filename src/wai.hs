{-# LANGUAGE OverloadedStrings #-}
module Main (main) where

import           Network.Wai
import           Network.Wai.Handler.CGI (run)
import           Network.HTTP.Types (status200)

app :: Application
app _ response = do
    response $ responseLBS 
        status200
        [("Content-Type", "text/plain")]
        "Test Wai CGI"

main :: IO ()
main = run app
