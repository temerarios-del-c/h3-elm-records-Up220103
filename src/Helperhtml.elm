module Helperhtml exposing (..)

import Html exposing (Html, div, h1, ul, li, text)

type alias Computadora =
    { ram : String
    , model : String    
    , brand : String    
    , screenSize : String
    }

myLaptop : Computadora
myLaptop =
    { ram = "16GB", model = "XPS 13", brand = "Dell", screenSize = "13.4" }

main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]