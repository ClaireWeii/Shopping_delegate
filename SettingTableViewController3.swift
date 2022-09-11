//
//  SettingTableViewController3.swift
//  Shopping
//
//  Created by Wei Pan on 2022/7/16.
//

import UIKit

class SettingTableViewController3: UITableViewController {
    
    weak var delegate: SettingTableViewControllerDelegate?

    @IBOutlet weak var priceFitbit01: UILabel!
    @IBOutlet weak var priceFitbit02: UILabel!
    @IBOutlet weak var priceFitbit03: UILabel!
    @IBOutlet weak var priceFitbit04: UILabel!
    @IBOutlet weak var priceFitbit05: UILabel!
    @IBOutlet weak var priceFitbit06: UILabel!
    @IBOutlet weak var priceFitbit07: UILabel!
    @IBOutlet weak var priceFitbit08: UILabel!
    @IBOutlet weak var priceFitbit09: UILabel!
    
    @IBOutlet weak var quantityFitbit01: UILabel!
    @IBOutlet weak var quantityFitbit02: UILabel!
    @IBOutlet weak var quantityFitbit03: UILabel!
    @IBOutlet weak var quantityFitbit04: UILabel!
    @IBOutlet weak var quantityFitbit05: UILabel!
    @IBOutlet weak var quantityFitbit06: UILabel!
    @IBOutlet weak var quantityFitbit07: UILabel!
    @IBOutlet weak var quantityFitbit08: UILabel!
    @IBOutlet weak var quantityFitbit09: UILabel!
    
    @IBOutlet weak var stepperFitbit01: UIStepper!
    @IBOutlet weak var stepperFitbit02: UIStepper!
    @IBOutlet weak var stepperFitbit03: UIStepper!
    @IBOutlet weak var stepperFitbit04: UIStepper!
    @IBOutlet weak var stepperFitbit05: UIStepper!
    @IBOutlet weak var stepperFitbit06: UIStepper!
    @IBOutlet weak var stepperFitbit07: UIStepper!
    @IBOutlet weak var stepperFitbit08: UIStepper!
    @IBOutlet weak var stepperFitbit09: UIStepper!
    
    var fitbit01:Int = 0
    var fitbit02:Int = 0
    var fitbit03:Int = 0
    var fitbit04:Int = 0
    var fitbit05:Int = 0
    var fitbit06:Int = 0
    var fitbit07:Int = 0
    var fitbit08:Int = 0
    var fitbit09:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    @IBAction func changeQty(_ sender: UIStepper) {
        
        fitbit01 = Int(stepperFitbit01.value)
        fitbit02 = Int(stepperFitbit02.value)
        fitbit03 = Int(stepperFitbit03.value)
        fitbit04 = Int(stepperFitbit04.value)
        fitbit05 = Int(stepperFitbit05.value)
        fitbit06 = Int(stepperFitbit06.value)
        fitbit07 = Int(stepperFitbit07.value)
        fitbit08 = Int(stepperFitbit08.value)
        fitbit09 = Int(stepperFitbit09.value)
        
        quantityFitbit01.text = String(fitbit01)
        quantityFitbit02.text = String(fitbit02)
        quantityFitbit03.text = String(fitbit03)
        quantityFitbit04.text = String(fitbit04)
        quantityFitbit05.text = String(fitbit05)
        quantityFitbit06.text = String(fitbit06)
        quantityFitbit07.text = String(fitbit07)
        quantityFitbit08.text = String(fitbit08)
        quantityFitbit09.text = String(fitbit09)
        
        calculate1()
    }
    
    func calculate1(){
        
        let fitbit01Price = Float(priceFitbit01.text!)!
        let fitbit02Price = Float(priceFitbit02.text!)!
        let fitbit03Price = Float(priceFitbit03.text!)!
        let fitbit04Price = Float(priceFitbit04.text!)!
        let fitbit05Price = Float(priceFitbit05.text!)!
        let fitbit06Price = Float(priceFitbit06.text!)!
        let fitbit07Price = Float(priceFitbit07.text!)!
        let fitbit08Price = Float(priceFitbit08.text!)!
        let fitbit09Price = Float(priceFitbit09.text!)!
        
        let sum = fitbit01Price*Float(fitbit01)+fitbit02Price*Float(fitbit02)+fitbit03Price*Float(fitbit03)+fitbit04Price*Float(fitbit04)+fitbit05Price*Float(fitbit05)+fitbit06Price*Float(fitbit06)+fitbit07Price*Float(fitbit07)+fitbit08Price*Float(fitbit08)+fitbit09Price*Float(fitbit09)
        let fitbitSum = String(sum)
        
        delegate?.amount(product: .fitbit, all: fitbitSum)
        
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
