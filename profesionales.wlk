class ProfesionalVinculado{
  const property universidad
  method honorarios() = universidad.honorariosRecomendados()
  method provincias() = [universidad.provincia()]
}

class ProfesionalLitoral{
  const property universidad
  method honorarios() = 3000
  method provincias() = ["Entre Rios", "Santa Fe", "Corrientes"]
}

class ProfesionalLibre{
  const property universidad
  const property honorarios
  const property provincias = []
  method agregarProvincia(provincia) {
    provincias.add(provincia)
  }
}