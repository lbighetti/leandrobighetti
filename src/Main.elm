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
    main_ []
        [ div [ class "jumbotron text-center bg-white" ]
            [ h1 [ class "jumbotron-heading" ]
                [ text "Leandro Bighetti" ]
            , p [ class "lead text-muted" ]
                [ text "Software Developer" ]

            --     ]
            -- , ul [ class "nav justify-content-center nav-tabs" ]
            --     [ li [ class "nav-item" ]
            --         [ a [ class "nav-link active bg-light", href "#" ]
            --             [ text "Projects" ]
            --         ]
            --     , li [ class "nav-item" ]
            --         [ a [ class "nav-link", href "#" ]
            --             [ text "Resume" ]
            --         ]
            --     , li [ class "nav-item" ]
            --         [ a [ class "nav-link", href "#" ]
            --             [ text "Contact" ]
            --         ]
            --     ]
            ]
        , nav [ class "navbar navbar-expand-sm navbar-dark bg-dark justify-content-sm-center" ]
            [ ul [ class "navbar-nav" ]
                [ li [ class "nav-item active " ]
                    [ a [ class "nav-link", href "#" ]
                        [ text "Projects" ]
                    ]
                , li [ class "nav-item" ]
                    [ a [ class "nav-link", href "#" ]
                        [ text "Resume" ]
                    ]
                , li [ class "nav-item" ]
                    [ a [ class "nav-link", href "#" ]
                        [ text "Contact" ]
                    ]
                ]
            ]
        , section [ class "bg-light" ]
            [ div [ class "container" ]
                [ div [ class "row justify-content-md-center" ]
                    [ div [ class "col-md-3" ]
                        [ p [] [ text "Lorem " ] ]
                    , div [ class "col-md-3" ]
                        [ p [] [ text "Ipsum " ] ]
                    ]
                ]
            ]
        ]
