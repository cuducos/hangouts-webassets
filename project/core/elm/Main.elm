module Main exposing (main)

import Html exposing (Html, beginnerProgram, button, div, code, text)
import Html.Events exposing (onClick)


type alias Model =
    Int


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


view : Model -> Html Msg
view model =
    div
        []
        [ button [ onClick Decrement ] [ text "-" ]
        , code [] [ model |> toString |> text ]
        , button [ onClick Increment ] [ text "+" ]
        ]


main =
    beginnerProgram
        { model = 0
        , update = update
        , view = view
        }
