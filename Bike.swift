/*
This class uses a contructor.
author  Jay Lee
version 1.3
since   2021-06-01
*/

class Bike: Vehicle {
  // Fields
  private var cadence: Int
  private var gears: Int

  // Constructor
  init(colour: String, maxSpeed: Int, gears: Int) {
    self.cadence = 0
    self.gears = gears
    super.init(colour: colour, maxSpeed: maxSpeed, numberOfTires: 2)
  }

  // This method prints to console all the properties.
  override func PrintVehicleInfo() {
    super.PrintVehicleInfo()
    print("Gears: \(GetGears())")
  }

  // This method returns string ring bell.
  func RingBell() -> String {
    return "The bell rings!"
  }

  // This method returns the cadence.
  func GetCadence() -> Int{
    return self.cadence
  }

  // This method returns the gears.
  func GetGears() -> Int{
    return self.gears
  }
}
