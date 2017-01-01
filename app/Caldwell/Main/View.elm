module Caldwell.Main.View exposing (template)


-- Libraries
import Date exposing (month, year, Day(..), Date)
import Html exposing (..)
-- import Html.Attributes exposing (id)
import Html.CssHelpers exposing (withNamespace)
import String.Extra exposing (clean)

-- Source

import Caldwell.Helpers exposing (clickWithStopProp)
import Caldwell.Model exposing (Model)
import Caldwell.Types exposing (..)

{id, class} = withNamespace ""

template : Model -> Html Msg
template { date } =
    main_ []
        [ section [ id Home ]
            [ h1 [ clickWithStopProp <| Toggle Open ] [ text (toString Home) ] ]
        , section [ id Music ]
            ([ h1 [ clickWithStopProp <| Toggle Open ] [ text (toString Music) ] ] ++ lorem)
        , section [ id Shows ]
            [ h1 [ clickWithStopProp <| Toggle Open ] [ text (toString Shows) ]
            , node "caldwell-calendar" []
                [ h2 [] [ text <| toString (month date) ++ " " ++ toString (year date) ]
                , fadingHr
                , ul [ class [Gigs] ]
                    ([Mon, Tue, Wed, Thu, Fri, Sat, Sun] |>
                        List.map (\day ->
                            li
                                [ class [Gig] ]
                                [ text <| toString day
                                , fadingHr
                                ])
                    )
                ]
            ]
        , section [ id About ]
            ([ h1 [ clickWithStopProp <| Toggle Open ] [ text (toString About) ] ] ++ lorem)
        , section [ id Contact ]
            [ h1 [ clickWithStopProp <| Toggle Open ] [ text (toString Contact) ] ]
        ]








lorem : List (Html a)
lorem =
    List.concat <| List.repeat 5 <|
      [ p []
          [ text <|
              clean """
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                  Donec a diam lectus. Sed sit amet ipsum mauris.
                  Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit.
                  Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue.
                  Nam tincidunt congue enim, ut porta lorem lacinia consectetur.
                  Donec ut libero sed arcu vehicula ultricies a non tortor.
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                  Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor.
                  Pellentesque auctor nisi id magna consequat sagittis.
                  Curabitur dapibus enim sit amet elit pharetra tincidunt feugiat nisl imperdiet.
                  Ut convallis libero in urna ultrices accumsan.
                  Donec sed odio eros. Donec viverra mi quis quam pulvinar at malesuada arcu rhoncus.
                  Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                  In rutrum accumsan ultricies. Mauris vitae nisi at sem facilisis semper ac in est.
              """
          ]
      , br [] []
      ]


fadingHr : Html a
fadingHr = node "fading-hr" [] []