import profesionales.*

class Empresa{
    const property profesionalesContratados = []
    const property honorariosReferencia
    method profesionalesFormadosEn(unaUniversidad){
        return profesionalesContratados.count({p=>p.universidad() == unaUniversidad})
    }
    method profesionalesCaros(){
        return profesionalesContratados.filter({p=>p.honorarios() > honorariosReferencia}).asSet()
    }
    method universidadesFormadoras(){
        return profesionalesContratados.map({p=>p.universidad()}).asSet()
    }
    method profesionalMasBarato(){
        return profesionalesContratados.min({p=>p.honorarios()})
    }
    method esDeGenteAcotada(){
        return profesionalesContratados.all({p=>p.provincias().size() <= 3})
    }
}