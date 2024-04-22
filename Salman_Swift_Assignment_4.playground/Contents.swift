import Foundation

//****************************************************************** Protocols
// Protocol - Trailer
protocol Trailer {
    var brand: String {get set}
    func startEngine()-> String
    func stopEngine()-> String
}

// Protocol - Climate Control
protocol WaterSystem {
    var waterCapacity: Double {get}
    func fillWaterTank()-> String
    func drainWaterTank()-> String
}
//****************************************************************** Camper Class
// Camper class - Multiple protocol inheritance in class
class Camper: Trailer, WaterSystem {
    var waterCapacity: Double
    var brand: String
    var currentEngineState = true
    
    init(brand: String, waterCapacity: Double){
        self.brand = brand
        self.waterCapacity = waterCapacity
    }
    
    func startEngine() -> String {
        if !currentEngineState {
            currentEngineState = !currentEngineState
            return ("Engine starting...")
        } else {
            return ("Engine is running already...")
        }
    }
    
    func stopEngine() -> String {
        if currentEngineState {
            currentEngineState = !currentEngineState
            return ("Engine Kill initiated...")
        } else {
            return ("Engine is already off")
        }
    }
    func fillWaterTank()-> String {
        if (waterCapacity == 0) {
            waterCapacity = 100
            return ("Filling water tank...")
        } else {
            return ("Water level in the tank is already full...")
        }
    }
    func drainWaterTank() -> String {
        if (waterCapacity == 100) {
            waterCapacity = 0
            return ("Preparing the tank to drain water...")
        } else {
            return("Water tank is already been emptied...")
        }
    }
}
//********************************************************* Camper Instance and function calls

let Salman = Camper(brand: "Ryder", waterCapacity: 0)

//watertank functions will only work for two states "0" being completely empty and "100" being completely full

Salman.startEngine()
Salman.stopEngine()
Salman.stopEngine()
Salman.stopEngine()
Salman.startEngine()

Salman.fillWaterTank()
Salman.fillWaterTank()
Salman.drainWaterTank()
Salman.drainWaterTank()
Salman.fillWaterTank()
Salman.fillWaterTank()
Salman.fillWaterTank()
Salman.drainWaterTank()

//********************************************************** End of Program
