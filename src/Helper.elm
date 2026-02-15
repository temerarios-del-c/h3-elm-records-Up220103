module Helper exposing (..)

-- 1. Función para obtener nombres de una lista de registros anónimos


lenName : List { name : String, releaseYear : Int, currentVersion : String } -> List String
lenName list =
    List.map .name list



-- 2. Definición de Usuario y filtrado de Estudiantes


type alias User =
    { name : String
    , uType : String
    }


onlyStudents : List User -> List String
onlyStudents pp =
    List.map
        (\user ->
            case user.uType of
                "Estudiante" ->
                    user.name

                _ ->
                    ""
        )
        pp



-- 3. Definición de Videojuego y extracción de géneros


type alias Videojuego =
    { titulo : String
    , lanzamiento : Int
    , disponible : Bool
    , descargas : Int
    , generos : List String
    }


getVideogameGenres : List Videojuego -> List (List String)
getVideogameGenres game =
    List.map (\videojuego -> videojuego.generos) game
