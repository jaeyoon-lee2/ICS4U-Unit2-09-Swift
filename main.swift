/*
This program uses the Vehicle class with a constructor.
author  Jay Lee
version 1.3
since   2021-06-01
*/

enum InvalidInputError : Error {
  case invalidInput
}

do {
  print("Truck:")
  print("Enter the license plate number: ", terminator:"")
  let licensePlateNumber = String(readLine()!)
  print("Enter the number of tires: ", terminator:"")
  guard let numberOfTires = Int(readLine()!) else {
    throw InvalidInputError.invalidInput
  }
  print("Enter the colour: ", terminator:"")
  var colour = String(readLine()!)
  print("Enter the max speed(km/h): ", terminator:"")
  guard let truckMaxSpeed = Int(readLine()!) else {
    throw InvalidInputError.invalidInput
  }
  print("Enter the volume of the cube van (m^3): ", terminator:"")
  guard let volumeOfCubeVan = Double(readLine()!) else {
    throw InvalidInputError.invalidInput
  }
  let myTruck = Truck(licensePlateNumber: licensePlateNumber, colour: colour, maxSpeed: truckMaxSpeed, numberOfTires: numberOfTires, volumeOfCubeVan: volumeOfCubeVan)

  print("\nBike:")
  print("Enter the colour: ", terminator:"")
  colour = String(readLine()!)
  print("Enter the max speed(km/h): ", terminator:"")
  guard let bikeMaxSpeed = Int(readLine()!) else {
    throw InvalidInputError.invalidInput
  }
  print("Enter the gears: ", terminator:"")
  guard let gears = Int(readLine()!) else {
    throw InvalidInputError.invalidInput
  }
  let myBike = Bike(colour: colour, maxSpeed: bikeMaxSpeed, gears: gears)

  var vehicleType = "Truck"

  while(true) {
    print("\nEnter the command (\(vehicleType)): ", terminator:"")
    let inputString = String(readLine()!).uppercased()
    if (inputString == "END") {
      break
    } else if (inputString == "TRUCK") {
      vehicleType = "Truck"
    } else if (inputString == "BIKE") {
      vehicleType = "Bike"
    } else if (inputString == "ACCELERATE") {
      print("Enter the value to be accelerated (km/h): ", terminator:"")
      guard let increment: Int = Int(readLine()!) else {
        throw InvalidInputError.invalidInput
      }
      if (vehicleType == "Truck") {
        myTruck.Accelerate(increment: increment)
        print("Current speed: \(myTruck.GetSpeed())km/h")
      } else {
        myBike.Accelerate(increment: increment)
        print("Current speed: \(myBike.GetSpeed())km/h")
      }
    } else if (inputString == "BRAKE") {
      print("Enter the value to be decelerated (km/h):  ", terminator:"")
      guard let decrement = Int(readLine()!) else {
        throw InvalidInputError.invalidInput
      }
      if (vehicleType == "Truck") {
        myTruck.Brake(decrement: decrement)
        print("Current speed: \(myTruck.GetSpeed())km/h")
      } else {
        myBike.Brake(decrement: decrement)
        print("Current speed: \(myBike.GetSpeed())km/h")
      }
    } else if (inputString == "TIRE") {
      print("The number of tire: ", terminator:"")
      if (vehicleType == "Truck") {
        print(myTruck.GetNumberOfTires())
      } else {
        print(myTruck.GetNumberOfTires())
      }
    } else if (inputString == "LICENSE" && vehicleType == "Truck") {
      print("Enter the new license plate number "
           + "(\(myTruck.GetLicensePlateNumber()) -> ?): ", terminator:"")
      myTruck.SetLicensePlateNumber(newLicensePlateNumber:String(readLine()!))
    } else if (inputString == "COLOUR") {
      print("Enter the new colour ", terminator:"")
      if (vehicleType == "Truck") {
        print("(\(myTruck.GetColour()) -> ?):", terminator:" ")
        myTruck.SetColour(newColour: String(readLine()!))
      } else {
        print("(\(myBike.GetColour()) -> ?):", terminator:" ")
        myBike.SetColour(newColour: String(readLine()!))
      }
    } else if (inputString == "AIR" && vehicleType == "Truck") {
      print("How much air you provide (kg):", terminator: " ")
      guard let amountOfAir = Int(readLine()!) else {
        throw InvalidInputError.invalidInput
      }
      print("\(myTruck.ProvideAir(amountOfAir: amountOfAir))kg of air is"
           + " provided.")
    } else if (inputString == "RING" && vehicleType == "Bike") {
      print(myBike.RingBell())
    } else if (inputString == "GEARS" && vehicleType == "Bike") {
      print("Gears: \(myBike.GetGears())")
    } else if (inputString == "VOLUME" && vehicleType == "Truck") {
      print("Volume of the cube van: \(myTruck.GetVolumeOfCubeVan())m^3")
    } else {
      continue
    }
  }
  print("\nTruck: ")
  myTruck.PrintVehicleInfo()
  print("\nBike:")
  myBike.PrintVehicleInfo()
} catch {
  print("\nInvalid input.")
}
print("\nDone.")
