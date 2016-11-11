port module Stylesheets exposing (main)

import Css.File exposing (CssFileStructure, compile, toFileStructure)
import Html exposing (div)
import Html.App as Html

import ReNormalizer
import Caldwell.Styles as Styles

port files : CssFileStructure -> Cmd msg


cssFiles : CssFileStructure
cssFiles =
  toFileStructure [ ( "styles.css", compile [ ReNormalizer.css, Styles.css ] ) ]


main : Program Never
main =
  Html.program
    { init = ( (), files cssFiles )
    , view = \_ -> div [] []
    , update = \_ _ -> ( (), Cmd.none )
    , subscriptions = \_ -> Sub.none
    }
