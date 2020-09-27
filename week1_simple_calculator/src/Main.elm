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


type alias Model =
  { currentNumber : Maybe Int
  , accumulator: Int
  , storedOperator: String
  }


init : Model
init =
  Model (Just 0) 0 "="



-- UPDATE

type Msg
  =
  AddToCurrent Int |
  Operate String

update : Msg -> Model -> Model
update msg model =
  case msg of
    AddToCurrent num ->
      { model | currentNumber = Just (Maybe.withDefault 0 model.currentNumber * 10 + num) }
    Operate operator ->
      { model | 
        currentNumber = Maybe.Nothing
      , accumulator = calculate model.storedOperator model.accumulator (Maybe.withDefault 0 model.currentNumber)
      , storedOperator = operator }

calculate : String -> Int -> Int -> Int
calculate operator num1 num2 =
  case operator of
    "+" -> num1 + num2
    "-" -> num1 - num2
    "*" -> num1 * num2
    "=" -> num2
    _ -> num2

-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ text (String.fromInt (
      case model.currentNumber of 
        Nothing -> model.accumulator 
        Just val -> val))
    , p [] (List.map (\number -> numberButton (AddToCurrent number) number) [1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
    , p [] (List.map (\operator -> operatorButton (Operate operator) operator) ["+", "-", "*", "="])
    ]

numberButton : Msg -> Int -> Html Msg
numberButton msg number =
  button [ onClick msg ] [text (String.fromInt number)]

operatorButton : Msg -> String -> Html Msg
operatorButton msg string =
  button [onClick msg] [text string]