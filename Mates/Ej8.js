let Origen = "ñfafxhwnuy"
let Llegada = "javascript"
Origen = Origen.toUpperCase()
Llegada = Llegada.toUpperCase()


const Decodificar = (Origen, Llegada, Texto) => {
    Texto = Texto.split('')
    Origen = Origen.split('')
    Llegada = Llegada.split('')
    let Decodificado = []

    for (let i = 0; i < Texto.length; i++) {
        let Posicion
        if(Origen.includes(Texto[i])){
            Posicion = Origen.indexOf(Texto[i])
            Decodificado.push(Llegada[Posicion])
        }
        else{
            Decodificado.push(Texto[i])
        }
    }
    return Decodificado.join('')
}



const Palabra1 = "FPLTWNYQT"
const Palabra2 = "YJHRTPTLNF"

console.log(Decodificar(Origen, Llegada, Palabra1))
console.log(Decodificar(Origen, Llegada, Palabra2))
