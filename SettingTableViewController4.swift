//
//  SettingTableViewController4.swift
//  Shopping
//
//  Created by Wei Pan on 2022/7/16.
//

import UIKit

class SettingTableViewController4: UITableViewController {
    
    weak var delegate: SettingTableViewControllerDelegate?

    @IBOutlet weak var priceSamsung01: UILabel!
    @IBOutlet weak var priceSamsung02: UILabel!
    @IBOutlet weak var priceSamsung03: UILabel!
    @IBOutlet weak var priceSamsung04: UILabel!
    @IBOutlet weak var priceSamsung05: UILabel!
    @IBOutlet weak var priceSamsung06: UILabel!
    @IBOutlet weak var priceSamsung07: UILabel!
    
    @IBOutlet weak var quantitySamsung01: UILabel!
    @IBOutlet weak var quantitySamsung02: UILabel!
    @IBOutlet weak var quantitySamsung03: UILabel!
    @IBOutlet weak var quantitySamsung04: UILabel!
    @IBOutlet weak var quantitySamsung05: UILabel!
    @IBOutlet weak var quantitySamsung06: UILabel!
    @IBOutlet weak var quantitySamsung07: UILabel!
    
    @IBOutlet weak var stepperSamsung01: UIStepper!
    @IBOutlet weak var stepperSamsung02: UIStepper!
    @IBOutlet weak var stepperSamsung03: UIStepper!
    @IBOutlet weak var stepperSamsung04: UIStepper!
    @IBOutlet weak var stepperSamsung05: UIStepper!
    @IBOutlet weak var stepperSamsung06: UIStepper!
    @IBOutlet weak var stepperSamsung07: UIStepper!
    
    var samsung01:Int = 0
    var samsung02:Int = 0
    var samsung03:Int = 0
    var samsung04:Int = 0
    var samsung05:Int = 0
    var samsung06:Int = 0
    var samsung07:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    @IBAction func changeQty(_ sender: UIStepper) {
        
        samsung01 = Int(stepperSamsung01.value)
        samsung02 = Int(stepperSamsung02.value)
        samsung03 = Int(stepperSamsung03.value)
        samsung04 = Int(stepperSamsung04.value)
        samsung05 = Int(stepperSamsung05.value)
        samsung06 = Int(stepperSamsung06.value)
        samsung07 = Int(stepperSamsung07.value)
        
        quantitySamsung01.text = String(samsung01)
        quantitySamsung02.text = String(samsung02)
        quantitySamsung03.text = String(samsung03)
        quantitySamsung04.text = String(samsung04)
        quantitySamsung05.text = String(samsung05)
        quantitySamsung06.text = String(samsung06)
        quantitySamsung07.text = String(samsung07)
        
        calculate1()
        
    }
    
    func calculate1(){
        
        let samsung01Price = Float(priceSamsung01.text!)!
        let samsung02Price = Float(priceSamsung02.text!)!
        let samsung03Price = Float(priceSamsung03.text!)!
        let samsung04Price = Float(priceSamsung04.text!)!
        let samsung05Price = Float(priceSamsung05.text!)!
        let samsung06Price = Float(priceSamsung06.text!)!
        let samsung07Price = Float(priceSamsung07.text!)!
        
        let sum = samsung01Price*Float(samsung01)+samsung02Price*Float(samsung02)+samsung03Price*Float(samsung03)+samsung04Price*Float(samsung04)+samsung05Price*Float(samsung05)+samsung06Price*Float(samsung06)+samsung01Price*Float(samsung07)
        let samsungSum = String(sum)
        
        delegate?.amount(product: .samsung, all: samsungSum)
        
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
