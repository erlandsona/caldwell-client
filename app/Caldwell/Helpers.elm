module Caldwell.Helpers exposing (..)

import Css exposing (Mixin, property)
import Html exposing (node, Html, Attribute)
import Html.Attributes exposing (style)
import Html.Events exposing (onWithOptions, Options)
import Json.Decode exposing (succeed)
import Navigation exposing (Location)
import UrlParser as Url exposing (top, oneOf, s)


-- Source

import Caldwell.Types.UI exposing (..)

-- Custom Elements


container : List (Attribute a) -> List (Html a) -> Html a
container =
    node "container"


drawer : List (Html a) -> Html a
drawer =
    node "drawer" []


-- Route Helpers



urlParser : Url.Parser (Page -> a) a
urlParser =
    oneOf
        [ Url.map Music (s "music")
        , Url.map Shows (s "shows")
        , Url.map About (s "about")
        , Url.map Contact (s "contact")
        ]


-- View Helpers


paginate : Page -> Attribute msg
paginate page =
    style
        [ ( "transform", "translateY(-" ++ translatify page ++ "00%)" )
        ]


translatify : Page -> String
translatify page =
    case page of
        Music ->
            "1"

        Shows ->
            "2"

        About ->
            "3"

        Contact ->
            "4"

        _ ->
            "0"

clickWithStopProp : Msg -> Attribute Msg
clickWithStopProp msg =
    onWithOptions "click" (Options True     False) (succeed msg)
                        -- Options stopProp prevDefault



-- Css Helpers


prop : String -> String -> Mixin
prop =
    property
