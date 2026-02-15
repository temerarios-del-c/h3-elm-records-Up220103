module Helper exposing (..)

add2 : Int -> Int -> Int
add2 x y = x + y

add3 : Int -> Int -> Int -> Int
add3 x y z = x + y + z

calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc x y op = op x y

languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames list =
    List.map .name list

type alias User =
    { name : String
    , uType : String
    }

onlyStudents : List User -> List String
onlyStudents pp =
    List.map (\user -> if user.uType == "Estudiante" then user.name else "") pp

type alias Videogame =
    { titulo : String
    , lanzamiento : Int
    , disponible : Bool
    , descargas : Int
    , generos : List String
    }

getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres game =
    List.map (\v -> v.generos) game