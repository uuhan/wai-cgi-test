module Main (main) where

import           Yesod
import           Network.Wai.Handler.CGI (run)

data App = App

mkYesod "App" [parseRoutes|
/       HomeR       GET            
|]

instance Yesod App where
    makeSessionBackend _ = return Nothing
    defaultLayout w = do
        p <- widgetToPageContent w
        mmsg <- getMessage
        withUrlRenderer [hamlet|
            $newline never
            $doctype 1.1
            <html>
                <head>
                    <title>#{pageTitle p}
                    ^{pageHead p}
                <body>
                    $maybe msg <- mmsg
                        <p .message>#{msg}
                    ^{pageBody p}
        |]

getHomeR :: Handler Html
getHomeR = do
    defaultLayout $ do
        [whamlet|
        <p>Test Yesod CGI
        |]

main :: IO ()
main = toWaiApp App >>= run
