module Router.Views.Matchers exposing (matchers)

import Hop.Types exposing (PathMatcher)
import Hop.Matchers exposing (..)

import Router.Routes exposing (Route(..))
import Router.Views.Index exposing (indexRouteMatcher)
import Router.Views.About exposing (aboutRouteMatcher)

matchers : List (PathMatcher Route)
matchers =
    [ indexRouteMatcher
    , aboutRouteMatcher
    ]
