module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    Int


init : Model
init =
    0



-- UPDATE


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1



-- VIEW


view : Model -> Html Msg
view model =
    main_ [ attribute "role" "main" ]
        [ section [ class "jumbotron text-center" ]
            [ div [ class "container" ]
                [ h1 [ class "jumbotron-heading" ]
                    [ text "Leandro Bighetti" ]
                , p [ class "lead text-muted" ]
                    [ text "Software Developer" ]

                -- , p []
                --     [ a [ class "btn btn-primary my-2", href "#" ]
                --         [ text "Main call to action" ]
                --     , a [ class "btn btn-secondary my-2", href "#" ]
                --         [ text "Secondary action" ]
                --     ]
                ]
            ]
        ]
