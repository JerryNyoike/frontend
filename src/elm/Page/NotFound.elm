module Page.NotFound exposing (view)

import Html exposing (..)
import I18Next exposing (Delims(..), t, tr)
import Page


view : Page.Session -> Html msg
view session =
    let
        shared =
            Page.toShared session

        text_ =
            t shared.translations
    in
    Page.fullPageNotFound (text_ "error.pageNotFound") ""
