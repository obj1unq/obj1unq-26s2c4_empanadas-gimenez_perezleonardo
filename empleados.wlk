//Escribir aqui los objetos
object galvan{
    var sueldo = 15000
    var dinero = 0
    var deuda = 0

    method sueldo(_sueldo){
        sueldo = _sueldo
    } 
    method sueldo(){
        return sueldo
    }

    method gastar(monto){
        deuda += (monto - dinero).max(0)
        //Si monto-dinero, da <= 0, me alcanza, entonces sumo 0
        // si da > 0, no me alcanza, acumulo deuda
        dinero -= monto.min(dinero)
        //Siempre resto el más chico de los dos. Si el monto es mayor 
        // al dinero, entonces no me alcanza, por lo tanto resto todo
        //el dinero
    }
    method deuda(){
        return deuda
    }
    method dinero(){
        return dinero
    }
    method cobro(){
        dinero += (sueldo - deuda).max(0)
        // si sueldo-deuda < 0, significa que ahorras 0
        deuda -= sueldo.min(deuda)
        // Si la deuda es menor al sueldo, se cancela
    }

}

object baigorria{
    var dinero = 0
    var empanadasVendidas = 0
    var precioEmpanada = 15

    method vender(cantidad){
        empanadasVendidas += cantidad
    }
    method sueldo(){
        return empanadasVendidas * precioEmpanada
    }

    method sueldo(_sueldo) {
      //polimorfismo
    }

    method cobro(){
        dinero += self.sueldo()
        empanadasVendidas = 0
    }

    method totalCobrado(){
        return dinero
    }
}

object gimenez{
    var dinero = 300000
    method pagarSueldo(empleado){
        dinero -= empleado.sueldo()
        empleado.cobro()
    }
    method dinero(){
        return dinero
    }
}