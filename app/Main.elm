module Site exposing (main)

-- Libs

import Date exposing (Date)
import Html
    exposing
        ( Html
        , Attribute
        , header
        , node
        , span
        , text
        )
import Html.Events exposing (onClick)
import Maybe exposing (withDefault)
import Navigation as Nav exposing (programWithFlags, Location)
import String exposing (toLower)
import Time exposing (Time)
import UrlParser as Url exposing (oneOf, s)


-- Modules

import Caldwell.Constants
    exposing
        ( blackOverlay
        , caldwellBackground
        , container
        )
import Caldwell.Main.View as Main
import Caldwell.Nav.View as Nav
import Caldwell.Model exposing (Model)
import Caldwell.Ports exposing (easeIntoView, snapIntoView)
import Caldwell.Styles as Styles
import Caldwell.Types exposing (Msg(..), Nav(..), Page(..))


-- Source


init : Time -> Location -> ( Model, Cmd Msg )
init now location =
    let
        model =
            { history = [ parse location ]
            , nav = Closed
            , date = Date.fromTime now
            }
    in
        ( model
        , location
            |> parse
            |> toString
            |> snapIntoView
        )

parse : Location -> Page
parse location =
    withDefault Home (Url.parsePath urlParser location)

urlParser : Url.Parser (Page -> a) a
urlParser =
    oneOf
        [ Url.map Shows (s "shows")
        , Url.map About (s "about")
        , Url.map Music (s "music")
        , Url.map Contact (s "contact")
        ]


main : Program Float Model Msg
main =
    programWithFlags GoToPage
        { init = init
        , view = template
        , update = update
        , subscriptions = always Sub.none
        }


template : Model -> Html Msg
template model =
    node container
        [ onClick (Toggle Closed)
        ]
        [ Styles.css_ model
        , node caldwellBackground [] []
        , node blackOverlay [] []
        , header [ onClick (SetUrl Home) ]
            [ span [] [ text "C" ]
            , text "aldwell"
            ]
        , Nav.template model.nav
        , Main.template
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GoToPage location ->
            ( { model | history = (::) (parse location) model.history }
            , location
                |> parse
                |> toString
                |> easeIntoView
            )

        SetUrl url ->
            ( model
            , Nav.newUrl <|
                if url == Home then
                    "/"
                else
                    url |> toString |> toLower
            )

        Todays newDate ->
            ( { model | date = newDate }, Cmd.none )

        Toggle newState ->
            ( { model | nav = newState }, Cmd.none )