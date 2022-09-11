//
//  SettingTableViewController.swift
//  Shopping
//
//  Created by Wei Pan on 2022/6/25.
//

import UIKit


class SettingTableViewController: UITableViewController{
    
    weak var delegate: SettingTableViewControllerDelegate?

    //price
    @IBOutlet weak var priceApple01: UILabel!
    @IBOutlet weak var priceApple02: UILabel!
    @IBOutlet weak var priceApple03: UILabel!
    @IBOutlet weak var priceApple04: UILabel!
    @IBOutlet weak var priceApple05: UILabel!
    @IBOutlet weak var priceApple06: UILabel!
    
    //quantity
    @IBOutlet weak var quantityApple01: UILabel!
    @IBOutlet weak var quantityApple02: UILabel!
    @IBOutlet weak var quantityApple03: UILabel!
    @IBOutlet weak var quantityApple04: UILabel!
    @IBOutlet weak var quantityApple05: UILabel!
    @IBOutlet weak var quantityApple06: UILabel!
   
    //stepper
    @IBOutlet weak var stepperApple01: UIStepper!
    @IBOutlet weak var stepperApple02: UIStepper!
    @IBOutlet weak var stepperApple03: UIStepper!
    @IBOutlet weak var stepperApple04: UIStepper!
    @IBOutlet weak var stepperApple05: UIStepper!
    @IBOutlet weak var stepperApple06: UIStepper!
    
   //數量
    var apple01:Int = 0
    var apple02:Int = 0
    var apple03:Int = 0
    var apple04:Int = 0
    var apple05:Int = 0
    var apple06:Int = 0
    
    //var calculatePrice:String = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    @IBAction func changeQty(_ sender: UIStepper) {
        
        //取得Stepper的值
        apple01 = Int(stepperApple01.value)
        apple02 = Int(stepperApple02.value)
        apple03 = Int(stepperApple03.value)
        apple04 = Int(stepperApple04.value)
        apple05 = Int(stepperApple05.value)
        apple06 = Int(stepperApple06.value)
        
        //傳到quantityLabel中
        quantityApple01.text = String(apple01)
        quantityApple02.text = String(apple02)
        quantityApple03.text = String(apple03)
        quantityApple04.text = String(apple04)
        quantityApple05.text = String(apple05)
        quantityApple06.text = String(apple06)
        
        calculate1()
        
    }
    
    func calculate1(){
        
        //字串轉數字
        let apple01Price = Float(priceApple01.text!)!
        let apple02Price = Float(priceApple02.text!)!
        let apple03Price = Float(priceApple03.text!)!
        let apple04Price = Float(priceApple04.text!)!
        let apple05Price = Float(priceApple05.text!)!
        let apple06Price = Float(priceApple06.text!)!
        
        //總計 金額*數量
        let sum = apple01Price*Float(apple01)+apple02Price*Float(apple02)+apple03Price*Float(apple03)+apple04Price*Float(apple04)+apple05Price*Float(apple05)+apple06Price*Float(apple06)
        let appleSum = String(sum)
        
        
        
        delegate?.amount(product: .apple, all: appleSum)
        
//        let formatter = NumberFormatter()
//            formatter.numberStyle = .currency
//        var moneyString = formatter.string(from: NSNumber(value: sum))
//        
//        calculatePrice = "\(moneyString!)"
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
