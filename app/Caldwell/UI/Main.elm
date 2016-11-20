module Caldwell.UI.Main exposing (view)


-- Libraries
import Html exposing (..)
import Html.Attributes exposing (id)


-- Source

import Caldwell.Helpers exposing (paginate)
import Caldwell.Types.UI exposing (Msg, Page)

view : Page -> Html Msg
view page =
  main_ []
      [ section
          [ id "Home"
          , paginate page
          ]
          [ h1 [] [ text "Home" ] ]
      , section
          [ id "Music"
          , paginate page
          ]
          [ h1 [] [ text "Music" ] ]
      , section
          [ id "Shows"
          , paginate page
          ]
          [ h1 [] [ text "Shows" ] ]
      , section
          [ id "About"
          , paginate page
          ]
          [ h1 [] [ text "About" ]
          , p []
              [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
          , p []
              [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
          , p []
              [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
          , p []
              [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
          , p []
              [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
          , p []
              [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
          , p []
              [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
          , p []
              [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
          , p []
              [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
          ]
      , section
          [ id "Contact"
          , paginate page
          ]
          [ h1 [] [ text "Contact" ] ]
      ]
