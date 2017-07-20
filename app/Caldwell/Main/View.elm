module Caldwell.Main.View exposing (template)

-- Libraries

import FontAwesome.Brand as Social
import FontAwesome.Web as Icon

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.CssHelpers exposing (withNamespace)


-- Source

import Caldwell.Bio.View as Bio
import Caldwell.Constants exposing (caldwellCalendar)
import Caldwell.Types exposing (..)


{ id, class } =
    withNamespace ""

template : List Venue -> Html Msg
template venues =
    main_ []
        [ section [ id Home ]
            [ socialLink "facebook" "CaldwellBand" Social.facebook_square
            , socialLink "twitter" "caldwell_band" Social.twitter_square
            , socialLink "instagram" "caldwell_band" Social.instagram
            , socialLink "reverbnation" "caldwellband" Icon.star
            ]
        , section [ id About ] Bio.template
        , section [ id Shows ] [ caldwellCalendar_ venues ]
        , section [ id Music ]
            [ h2 [] [ text (toString Music) ]
            , fadingHr
            , iframe
                [ seamless True
                , src <| soundCloudiFrameBaseUrl ++ "276527707" ++ soundCloudiFrameParams
                ]
                []
            , fadingHr
            , iframe
                [ seamless True
                , src <| soundCloudiFrameBaseUrl ++ "278360717" ++ soundCloudiFrameParams
                ]
                []
            , fadingHr
            , iframe
                [ seamless True
                , src <| soundCloudiFrameBaseUrl ++ "192483435" ++ soundCloudiFrameParams
                ]
                []
            ]
        , section [ id Contact ]
            [ h2 [] [ text (toString Contact) ]
            , fadingHr
            , a [ href "mailto:booking@caldwell.band" ] [ text "booking@caldwell.band" ]
            ]
        ]

caldwellCalendar_ : List Venue -> Html a
caldwellCalendar_ venues =
    node caldwellCalendar []
        [ header []
            [ h2 [] [ text (toString Shows) ]
            -- , a []
            --     [ small [] [text "previous shows..."]
            --     ]
            ]
        , fadingHr
        , ul [ class [ Gigs ] ] <|
            List.intersperse fadingHr <|
                List.map (venueToElmHtml) venues
        ]

venueToElmHtml : Venue -> Html a
venueToElmHtml (Venue a b c) =
    li [ class [ Gig ] ] <|
        List.map (\string -> span [] [ text string ]) [ a, b, c ]


soundCloudiFrameBaseUrl : String
soundCloudiFrameBaseUrl =
    "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/"


soundCloudiFrameParams : String
soundCloudiFrameParams =
    "&amp;color=000000&amp;auto_play=false&amp;hide_related=true&amp;liking=false&amp;show_artwork=false&amp;show_comments=false&amp;show_user=false&amp;show_reposts=false"


fadingHr : Html a
fadingHr =
    node "fading-hr" [] []

socialLink : String -> String -> Html a -> Html a
socialLink siteDomain userName icon =
    a
        [ href <| "https://www." ++ siteDomain ++ ".com/" ++ userName
        , target "_blank"
        , rel "noopener"
        ]
        [ icon ]
