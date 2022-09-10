//
//  SettingTableViewController1.swift
//  Shopping
//
//  Created by Wei Pan on 2022/7/16.
//

import UIKit



class SettingTableViewController1: UITableViewController {
    
    weak var delegate: SettingTableViewControllerDelegate?

    @IBOutlet weak var priceAsus01: UILabel!
    @IBOutlet weak var priceAsus02: UILabel!
    @IBOutlet weak var priceAsus03: UILabel!
    
    @IBOutlet weak var quantityAsus01: UILabel!
    @IBOutlet weak var quantityAsus02: UILabel!
    @IBOutlet weak var quantityAsus03: UILabel!
    
    @IBOutlet weak var stepperAsus01: UIStepper!
    @IBOutlet weak var stepperAsus02: UIStepper!
    @IBOutlet weak var stepperAsus03: UIStepper!
    
    var asus01:Int = 0
    var asus02:Int = 0
    var asus03:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    @IBAction func changeQty(_ sender: UIStepper) {
        
        asus01 = Int(stepperAsus01.value)
        asus02 = Int(stepperAsus02.value)
        asus03 = Int(stepperAsus03.value)
        
        quantityAsus01.text = String(asus01)
        quantityAsus02.text = String(asus02)
        quantityAsus03.text = String(asus03)
        
        calculate1()
        
    }
    
    func calculate1(){
        
        // 字串轉數字
        let asus01Price = Float(priceAsus01.text!)!
        let asus02Price = Float(priceAsus02.text!)!
        let asus03Price = Float(priceAsus03.text!)!
        
        // 總計 金額*數量
        let sum = asus01Price*Float(asus01)+asus02Price*Float(asus02)+asus03Price*Float(asus03)
        let asusSum = String(sum)
        
        
        delegate?.amount(product: .asus, all: asusSum)
        
//        delegate?.list(product: .asus, all: [Order(price: asus01Price, amonut: asus01),
//                             Order(price: asus02Price, amonut: asus02),
//                             Order(price: asus03Price, amonut: asus03) ])
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
