module Helperhtml exposing (..)

import Html exposing (Html, div, h1, li, text, ul)


type alias Computadora =
    { ram : String
    , modelo : String
    , marca : String
    , screenSize : String
    }


myLaptop : Computadora
myLaptop =
    { ram = "16GB"
    , modelo = "XPS 13"
    , marca = "Dell"
    , screenSize = "13.4"
    }


principal : Html msg
principal =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.modelo) ]
                , li [] [ text ("Marca: " ++ myLaptop.marca) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
