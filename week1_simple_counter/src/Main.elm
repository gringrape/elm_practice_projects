module Main exposing (..)

-- Press buttons to increment and decrement a counter.
--
-- Read how it works:
--   https://guide.elm-lang.org/architecture/buttons.html
--


import Browser
import Html exposing (Html, button, div, text, p)
import Html.Events exposing (onClick)



-- MAIN


main =
  Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model = Int


init : Model
init =
  0



-- UPDATE


type Msg
  = Increment Int

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment i ->
      model + i

-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ text "Hello World!"
    , p [] [ button [onClick (Increment 1)] [ text (String.concat ["Click Me!(", String.fromInt model ,")"]) ]]
    , button [ onClick (Increment 1)] [ text "1" ]
    , button [ onClick (Increment 2)] [ text "2" ]
    , button [ onClick (Increment 3)] [ text "3" ]
    ]