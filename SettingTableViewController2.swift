//
//  SettingTableViewController2.swift
//  Shopping
//
//  Created by Wei Pan on 2022/7/16.
//

import UIKit

class SettingTableViewController2: UITableViewController {
    
    weak var delegate: SettingTableViewControllerDelegate?

    @IBOutlet weak var priceGarmin01: UILabel!
    @IBOutlet weak var priceGarmin02: UILabel!
    @IBOutlet weak var priceGarmin03: UILabel!
    @IBOutlet weak var priceGarmin04: UILabel!
    @IBOutlet weak var priceGarmin05: UILabel!
    @IBOutlet weak var priceGarmin06: UILabel!
    @IBOutlet weak var priceGarmin07: UILabel!
    @IBOutlet weak var priceGarmin08: UILabel!
    @IBOutlet weak var priceGarmin09: UILabel!
    @IBOutlet weak var priceGarmin10: UILabel!
    @IBOutlet weak var priceGarmin11: UILabel!
    @IBOutlet weak var priceGarmin12: UILabel!
    @IBOutlet weak var priceGarmin13: UILabel!
    @IBOutlet weak var priceGarmin14: UILabel!
    @IBOutlet weak var priceGarmin15: UILabel!
    @IBOutlet weak var priceGarmin16: UILabel!
    @IBOutlet weak var priceGarmin17: UILabel!
    @IBOutlet weak var priceGarmin18: UILabel!
    @IBOutlet weak var priceGarmin19: UILabel!
    @IBOutlet weak var priceGarmin20: UILabel!
    
    @IBOutlet weak var quantityGarmin01: UILabel!
    @IBOutlet weak var quantityGarmin02: UILabel!
    @IBOutlet weak var quantityGarmin03: UILabel!
    @IBOutlet weak var quantityGarmin04: UILabel!
    @IBOutlet weak var quantityGarmin05: UILabel!
    @IBOutlet weak var quantityGarmin06: UILabel!
    @IBOutlet weak var quantityGarmin07: UILabel!
    @IBOutlet weak var quantityGarmin08: UILabel!
    @IBOutlet weak var quantityGarmin09: UILabel!
    @IBOutlet weak var quantityGarmin10: UILabel!
    @IBOutlet weak var quantityGarmin11: UILabel!
    @IBOutlet weak var quantityGarmin12: UILabel!
    @IBOutlet weak var quantityGarmin13: UILabel!
    @IBOutlet weak var quantityGarmin14: UILabel!
    @IBOutlet weak var quantityGarmin15: UILabel!
    @IBOutlet weak var quantityGarmin16: UILabel!
    @IBOutlet weak var quantityGarmin17: UILabel!
    @IBOutlet weak var quantityGarmin18: UILabel!
    @IBOutlet weak var quantityGarmin19: UILabel!
    @IBOutlet weak var quantityGarmin20: UILabel!
    
    @IBOutlet weak var stepperGarmin01: UIStepper!
    @IBOutlet weak var stepperGarmin02: UIStepper!
    @IBOutlet weak var stepperGarmin03: UIStepper!
    @IBOutlet weak var stepperGarmin04: UIStepper!
    @IBOutlet weak var stepperGarmin05: UIStepper!
    @IBOutlet weak var stepperGarmin06: UIStepper!
    @IBOutlet weak var stepperGarmin07: UIStepper!
    @IBOutlet weak var stepperGarmin08: UIStepper!
    @IBOutlet weak var stepperGarmin09: UIStepper!
    @IBOutlet weak var stepperGarmin10: UIStepper!
    @IBOutlet weak var stepperGarmin11: UIStepper!
    @IBOutlet weak var stepperGarmin12: UIStepper!
    @IBOutlet weak var stepperGarmin13: UIStepper!
    @IBOutlet weak var stepperGarmin14: UIStepper!
    @IBOutlet weak var stepperGarmin15: UIStepper!
    @IBOutlet weak var stepperGarmin16: UIStepper!
    @IBOutlet weak var stepperGarmin17: UIStepper!
    @IBOutlet weak var stepperGarmin18: UIStepper!
    @IBOutlet weak var stepperGarmin19: UIStepper!
    @IBOutlet weak var stepperGarmin20: UIStepper!
    
    var garmin01:Int = 0
    var garmin02:Int = 0
    var garmin03:Int = 0
    var garmin04:Int = 0
    var garmin05:Int = 0
    var garmin06:Int = 0
    var garmin07:Int = 0
    var garmin08:Int = 0
    var garmin09:Int = 0
    var garmin10:Int = 0
    var garmin11:Int = 0
    var garmin12:Int = 0
    var garmin13:Int = 0
    var garmin14:Int = 0
    var garmin15:Int = 0
    var garmin16:Int = 0
    var garmin17:Int = 0
    var garmin18:Int = 0
    var garmin19:Int = 0
    var garmin20:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    @IBAction func changeQty(_ sender: UIStepper) {
        
        garmin01 = Int(stepperGarmin01.value)
        garmin02 = Int(stepperGarmin02.value)
        garmin03 = Int(stepperGarmin03.value)
        garmin04 = Int(stepperGarmin04.value)
        garmin05 = Int(stepperGarmin05.value)
        garmin06 = Int(stepperGarmin06.value)
        garmin07 = Int(stepperGarmin07.value)
        garmin08 = Int(stepperGarmin08.value)
        garmin09 = Int(stepperGarmin09.value)
        garmin10 = Int(stepperGarmin10.value)
        garmin11 = Int(stepperGarmin11.value)
        garmin12 = Int(stepperGarmin12.value)
        garmin13 = Int(stepperGarmin13.value)
        garmin14 = Int(stepperGarmin14.value)
        garmin15 = Int(stepperGarmin15.value)
        garmin16 = Int(stepperGarmin16.value)
        garmin17 = Int(stepperGarmin17.value)
        garmin18 = Int(stepperGarmin18.value)
        garmin19 = Int(stepperGarmin19.value)
        garmin20 = Int(stepperGarmin20.value)
        
        quantityGarmin01.text = String(garmin01)
        quantityGarmin02.text = String(garmin02)
        quantityGarmin03.text = String(garmin03)
        quantityGarmin04.text = String(garmin04)
        quantityGarmin05.text = String(garmin05)
        quantityGarmin06.text = String(garmin06)
        quantityGarmin07.text = String(garmin07)
        quantityGarmin08.text = String(garmin08)
        quantityGarmin09.text = String(garmin09)
        quantityGarmin10.text = String(garmin10)
        quantityGarmin11.text = String(garmin11)
        quantityGarmin12.text = String(garmin12)
        quantityGarmin13.text = String(garmin13)
        quantityGarmin14.text = String(garmin14)
        quantityGarmin15.text = String(garmin15)
        quantityGarmin16.text = String(garmin16)
        quantityGarmin17.text = String(garmin17)
        quantityGarmin18.text = String(garmin18)
        quantityGarmin19.text = String(garmin19)
        quantityGarmin20.text = String(garmin20)
        
        calculate1()
    }
    
    func calculate1(){
        
        // 字串轉數字
        let garmin01Price = Float(priceGarmin01.text!)!
        let garmin02Price = Float(priceGarmin02.text!)!
        let garmin03Price = Float(priceGarmin03.text!)!
        let garmin04Price = Float(priceGarmin04.text!)!
        let garmin05Price = Float(priceGarmin05.text!)!
        let garmin06Price = Float(priceGarmin06.text!)!
        let garmin07Price = Float(priceGarmin07.text!)!
        let garmin08Price = Float(priceGarmin08.text!)!
        let garmin09Price = Float(priceGarmin09.text!)!
        let garmin10Price = Float(priceGarmin10.text!)!
        let garmin11Price = Float(priceGarmin11.text!)!
        let garmin12Price = Float(priceGarmin12.text!)!
        let garmin13Price = Float(priceGarmin13.text!)!
        let garmin14Price = Float(priceGarmin14.text!)!
        let garmin15Price = Float(priceGarmin15.text!)!
        let garmin16Price = Float(priceGarmin16.text!)!
        let garmin17Price = Float(priceGarmin17.text!)!
        let garmin18Price = Float(priceGarmin18.text!)!
        let garmin19Price = Float(priceGarmin19.text!)!
        let garmin20Price = Float(priceGarmin20.text!)!
        
        // 總計 金額*數量
        let sum = garmin01Price*Float(garmin01)+garmin02Price*Float(garmin02)+garmin03Price*Float(garmin03)+garmin04Price*Float(garmin04)+garmin05Price*Float(garmin05)+garmin06Price*Float(garmin06)+garmin07Price*Float(garmin07)+garmin08Price*Float(garmin08)+garmin09Price*Float(garmin09)+garmin10Price*Float(garmin10)+garmin11Price*Float(garmin11)+garmin12Price*Float(garmin12)+garmin13Price*Float(garmin13)+garmin14Price*Float(garmin14)+garmin15Price*Float(garmin15)+garmin16Price*Float(garmin16)+garmin17Price*Float(garmin17)+garmin18Price*Float(garmin18)+garmin19Price*Float(garmin19)+garmin20Price*Float(garmin20)
        let garminSum = String(sum)
        
        
        delegate?.amount(product: .garmin, all:garminSum)
        
//        delegate?.list(product: .garmin, all: [Order(price: garmin01Price, amonut: garmin01),
//                             Order(price: garmin02Price, amonut: garmin02),
//                             Order(price: garmin03Price, amonut: garmin03),
//                             Order(price: garmin04Price, amonut: garmin04),
//                             Order(price: garmin05Price, amonut: garmin05),
//                             Order(price: garmin06Price, amonut: garmin06),
//                             Order(price: garmin07Price, amonut: garmin07),
//                             Order(price: garmin08Price, amonut: garmin08),
//                             Order(price: garmin09Price, amonut: garmin09),
//                             Order(price: garmin10Price, amonut: garmin10),
//                             Order(price: garmin11Price, amonut: garmin11),
//                             Order(price: garmin12Price, amonut: garmin12),
//                             Order(price: garmin13Price, amonut: garmin13),
//                             Order(price: garmin14Price, amonut: garmin14),
//                             Order(price: garmin15Price, amonut: garmin15),
//                             Order(price: garmin16Price, amonut: garmin16),
//                             Order(price: garmin17Price, amonut: garmin17),
//                             Order(price: garmin18Price, amonut: garmin18),
//                             Order(price: garmin19Price, amonut: garmin19),
//                             Order(price: garmin20Price, amonut: garmin20)])
        }
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
