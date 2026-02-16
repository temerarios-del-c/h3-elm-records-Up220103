module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)


-- FUNCIONES BÁSICAS

add2 : Int -> Int -> Int
add2 x y =
    x + y


add3 : Float -> Float -> Float -> Float
add3 x y z =
    x + y + z


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc x y op =
    op x y



-- EJERCICIOS DE REGISTROS (Lenguajes)

type alias Language =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


languages : List Language
languages =
    [ { name = "elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "javascript", releaseYear = 1995, currentVersion = "ECMAScript 2025" }
    ]


languageNames : List Language -> List String
languageNames list =
    List.map .name list



-- EJERCICIOS DE USUARIOS

type alias User =
    { name : String
    , uType : String
    }


users : List User
users =
    [ { name = "Roberto", uType = "Estudiante" }
    , { name = "Mitsiu", uType = "Profesor" }
    ]


onlyStudents : List User -> List String
onlyStudents pp =
    List.map
        (\user ->
            if user.uType == "Student" then
                user.name
            else
                ""
        )
        pp




-- EJERCICIOS DE VIDEOJUEGOS

type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


videogames : List Videogame
videogames =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 5000000
      , genres = [ "Acción", "Disparos" ]
      }
    , { title = "Ocarina of Time"
      , releaseYear = 1998
      , available = True
      , downloads = 8000000
      , genres = [ "Acción", "Aventura" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres game =
    List.map .genres game



-- EJERCICIO HTML

type alias Computadora =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computadora
myLaptop =
    { ram = "16GB"
    , model = "XPS 13"
    , brand = "Dell"
    , screenSize = "13.4"
    }


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

