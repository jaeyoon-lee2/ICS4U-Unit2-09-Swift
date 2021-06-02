/*
This class uses a constructor.
author  Jay Lee
version 1.3
since   2021-06-01
*/

class Truck: Vehicle {
  // Fields
  private var licensePlateNumber: String
  private var volumeOfCubeVan: Double

  // Constructor
  init(licensePlateNumber: String, colour: String, maxSpeed: Int,
       numberOfTires: Int, volumeOfCubeVan: Double) {
    self.licensePlateNumber = licensePlateNumber
    self.volumeOfCubeVan = volumeOfCubeVan
    super.init(colour: colour, maxSpeed: maxSpeed, numberOfTires: numberOfTires)
  }

  // This method prints to console all the properties.
  override func PrintVehicleInfo() {
    super.PrintVehicleInfo()
    print("License plate number: \(GetLicensePlateNumber())")
    print("Volume of cube van: \(GetVolumeOfCubeVan())m^3")
  }

  // This method returns amout of air.
  func ProvideAir(amountOfAir: Int) -> Int {
    return amountOfAir
  }

  // This method returns the license plate number.
  func GetVolumeOfCubeVan() -> Double{
    return self.volumeOfCubeVan
  }

  // This method returns the license plate number.
  func GetLicensePlateNumber() -> String{
    return self.licensePlateNumber
  }

  // This method gets new license plate number and sets it.
  func SetLicensePlateNumber(newLicensePlateNumber: String) {
    self.licensePlateNumber = newLicensePlateNumber
  }
}
