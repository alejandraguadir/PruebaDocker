Feature: Buscar personajes
  AS  usuario de rickandmorty
  I WANT TO
  obtener personajes por id
  SO THAT
  I ver registro completo del personaje

  @Get
  Scenario Outline: buscar personajes
    Given el usuario esta en la pagina de busqueda
    When cuando el usuario envia solicitud de busqueda  por id <id>
    Then la pagina retornara un estatus con codigo <codigo> y nombre <nombre>
    Examples:
      | id    | nombre           | codigo |
      | "1"   | "Rick Sanchez"   | 200    |
      | "5"   | "Jerry Smith"    | 200    |
      | "5"   | "Jerry Smith"    | 200    |
      | "100" | "Bubonic Plague" | 200    |