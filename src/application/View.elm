module Application.View exposing (view)

import Html exposing (Html, text, div, h1)

import Application.Model exposing (Model)
import Application.Types exposing (Msg(..))
import Router.Routes exposing (Route(..))


import Components.Menu as Menu

import Views.Index as IndexView

view : Model -> Html Msg
view model =
  let
    _ =
      Debug.log "model" model -- remove this
  in
    div
      []
      [ Menu.view model
      , pageView model
      ]


{-
  pageView
-}
pageView : Model -> Html Msg
pageView model =
  case model.route of
    IndexRoute ->
      IndexView.view model

    AboutRoute ->
      div [] [ h1 [] [ text "About!"] ]

    NotFoundRoute ->
      div [] [ h1 [] [ text "404" ] ]
