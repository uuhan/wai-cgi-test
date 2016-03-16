Maybe there is a bug in yesod framework when the yesod app is used to be deployed as a CGI application.

 cabal build 
 make stop; make  

then visit 
    http://127.0.0.1:3000/wai
    http://127.0.0.1:3000/yesod

yesod runs failed due to:
    yesod-cgi-test: Network/Wai/Handler/CGI.hs:(106,15)-(121,13): Missing field in record construction requestHeaderReferer

This test suite need 
    *** nginx and fcgiwrap ***
