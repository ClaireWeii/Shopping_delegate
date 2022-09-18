//
//  ViewController.swift
//  Shopping
//
//  Created by Wei Pan on 2022/6/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appleButton: UIButton!
    @IBOutlet weak var asusButton: UIButton!
    @IBOutlet weak var garminButton: UIButton!
    @IBOutlet weak var fitbitButton: UIButton!
    @IBOutlet weak var samsungButton: UIButton!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var containerView0: UIView!
    @IBOutlet weak var containerView1: UIView!
    @IBOutlet weak var containerView2: UIView!
    @IBOutlet weak var containerView3: UIView!
    @IBOutlet weak var containerView4: UIView!
    @IBOutlet weak var containerView5: UIView!
    @IBOutlet weak var calculatePrice: UILabel!
    
    var selectedButton : UIButton!
    
    //定義子分頁
    var appleVC: SettingTableViewController?
    var asusVC: SettingTableViewController1?
    var garminVC: SettingTableViewController2?
    var fitbitVC: SettingTableViewController3?
    var samsungVC: SettingTableViewController4?
    
    //定義各品項總金額
    var appleSum: Int = 0
    var asusSum: Int = 0
    var garminSum: Int = 0
    var fitbitSum: Int = 0
    var samsungSum: Int = 0

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoviewapple"{
          if let vc = segue.destination as? SettingTableViewController{
              appleVC = vc
              vc.delegate = self
          }
        }
        
        if segue.identifier == "gotoviewasus"{
          if let vc = segue.destination as? SettingTableViewController1{
              asusVC = vc
              vc.delegate = self
          }
        }
        
        if segue.identifier == "gotoviewgarmin"{
          if let vc = segue.destination as? SettingTableViewController2{
              garminVC = vc
              vc.delegate = self
          }
        }
        
        if segue.identifier == "gotoviewfitbit"{
          if let vc = segue.destination as? SettingTableViewController3{
              fitbitVC = vc
              vc.delegate = self
          }
        }
        
        if segue.identifier == "gotoviewsamsung"{
            if let vc = segue.destination as? SettingTableViewController4{
                samsungVC = vc
                vc.delegate = self
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        selectedButton = appleButton
    }

    @IBAction func showAppleList(_ sender: Any) {
        changeTab(to: appleButton)
        containerView0.isHidden = false
        containerView1.isHidden = true
        containerView2.isHidden = true
        containerView3.isHidden = true
        containerView4.isHidden = true
        //calTotal()
    }
    
    @IBAction func showAsusList(_ sender: Any) {
        changeTab(to: asusButton)
        containerView0.isHidden = true
        containerView1.isHidden = false
        containerView2.isHidden = true
        containerView3.isHidden = true
        containerView4.isHidden = true
        //calTotal()
    }
    
    @IBAction func showGarminList(_ sender: Any) {
        changeTab(to: garminButton)
        containerView0.isHidden = true
        containerView1.isHidden = true
        containerView2.isHidden = false
        containerView3.isHidden = true
        containerView4.isHidden = true
        calTotal()
    }
    
    @IBAction func showFitbitList(_ sender: Any) {
        changeTab(to: fitbitButton)
        containerView0.isHidden = true
        containerView1.isHidden = true
        containerView2.isHidden = true
        containerView3.isHidden = false
        containerView4.isHidden = true
        //calTotal()
    }
   
    @IBAction func showSamsungList(_ sender: Any) {
        changeTab(to: samsungButton)
        containerView0.isHidden = true
        containerView1.isHidden = true
        containerView2.isHidden = true
        containerView3.isHidden = true
        containerView4.isHidden = false
        //calTotal()
    }
    
    
    
    @IBAction func cleanBtn(_ sender: Any) {
        
        reset()
        
    }
    
    @IBAction func buyBtn(_ sender: Any) {
        
        if appleSum + asusSum + garminSum + fitbitSum + samsungSum == 0{
            cantbuyAlert()
        } else {
            buyAlert()
        }
        
    }
    
    
    
    func changeTab(to newButton: UIButton) {
           // 先利用 tintColor 取得 Button 預設的文字顏色
           let defaultColor = selectedButton.tintColor
           // 將目前選取的按鈕改成未選取的顏色
           selectedButton.setTitleColor(defaultColor, for: .normal)
           // 將參數傳來的新按鈕改成選取的顏色
        newButton.setTitleColor(UIColor(red: 216/255, green: 132/255, blue: 214/255, alpha: 1), for: .normal)
           // 將目前選取的按鈕改為新的按鈕
           selectedButton = newButton
       }
    
    func calTotal() {
        let total = appleSum + asusSum + garminSum + fitbitSum + samsungSum
        totalLabel.text = String(total)
    }
    
    func reset(){
        
        let total = 0
        totalLabel.text = String(total)
        
        appleSum = 0
        
        appleVC?.stepperApple01.value = 0
        appleVC?.stepperApple02.value = 0
        appleVC?.stepperApple03.value = 0
        appleVC?.stepperApple04.value = 0
        appleVC?.stepperApple05.value = 0
        appleVC?.stepperApple06.value = 0
        
        appleVC?.quantityApple01.text = String("0")
        appleVC?.quantityApple02.text = String("0")
        appleVC?.quantityApple03.text = String("0")
        appleVC?.quantityApple04.text = String("0")
        appleVC?.quantityApple05.text = String("0")
        appleVC?.quantityApple06.text = String("0")
        
        asusSum = 0
        
        asusVC?.stepperAsus01.value = 0
        asusVC?.stepperAsus02.value = 0
        asusVC?.stepperAsus03.value = 0
        
        asusVC?.quantityAsus01.text = String("0")
        asusVC?.quantityAsus02.text = String("0")
        asusVC?.quantityAsus03.text = String("0")
        
        garminSum = 0
        
        garminVC?.stepperGarmin01.value = 0
        garminVC?.stepperGarmin02.value = 0
        garminVC?.stepperGarmin03.value = 0
        garminVC?.stepperGarmin04.value = 0
        garminVC?.stepperGarmin05.value = 0
        garminVC?.stepperGarmin06.value = 0
        garminVC?.stepperGarmin07.value = 0
        garminVC?.stepperGarmin08.value = 0
        garminVC?.stepperGarmin09.value = 0
        garminVC?.stepperGarmin10.value = 0
        garminVC?.stepperGarmin11.value = 0
        garminVC?.stepperGarmin12.value = 0
        garminVC?.stepperGarmin13.value = 0
        garminVC?.stepperGarmin14.value = 0
        garminVC?.stepperGarmin15.value = 0
        garminVC?.stepperGarmin16.value = 0
        garminVC?.stepperGarmin17.value = 0
        garminVC?.stepperGarmin18.value = 0
        garminVC?.stepperGarmin19.value = 0
        garminVC?.stepperGarmin20.value = 0
        
        garminVC?.quantityGarmin01.text = String("0")
        garminVC?.quantityGarmin02.text = String("0")
        garminVC?.quantityGarmin03.text = String("0")
        garminVC?.quantityGarmin04.text = String("0")
        garminVC?.quantityGarmin05.text = String("0")
        garminVC?.quantityGarmin06.text = String("0")
        garminVC?.quantityGarmin07.text = String("0")
        garminVC?.quantityGarmin08.text = String("0")
        garminVC?.quantityGarmin09.text = String("0")
        garminVC?.quantityGarmin10.text = String("0")
        garminVC?.quantityGarmin11.text = String("0")
        garminVC?.quantityGarmin12.text = String("0")
        garminVC?.quantityGarmin13.text = String("0")
        garminVC?.quantityGarmin14.text = String("0")
        garminVC?.quantityGarmin15.text = String("0")
        garminVC?.quantityGarmin16.text = String("0")
        garminVC?.quantityGarmin17.text = String("0")
        garminVC?.quantityGarmin18.text = String("0")
        garminVC?.quantityGarmin19.text = String("0")
        garminVC?.quantityGarmin20.text = String("0")
        
        fitbitSum = 0
        
        fitbitVC?.stepperFitbit01.value = 0
        fitbitVC?.stepperFitbit02.value = 0
        fitbitVC?.stepperFitbit03.value = 0
        fitbitVC?.stepperFitbit04.value = 0
        fitbitVC?.stepperFitbit05.value = 0
        fitbitVC?.stepperFitbit06.value = 0
        fitbitVC?.stepperFitbit07.value = 0
        fitbitVC?.stepperFitbit08.value = 0
        fitbitVC?.stepperFitbit09.value = 0
        
        fitbitVC?.quantityFitbit01.text = String("0")
        fitbitVC?.quantityFitbit02.text = String("0")
        fitbitVC?.quantityFitbit03.text = String("0")
        fitbitVC?.quantityFitbit04.text = String("0")
        fitbitVC?.quantityFitbit05.text = String("0")
        fitbitVC?.quantityFitbit06.text = String("0")
        fitbitVC?.quantityFitbit07.text = String("0")
        fitbitVC?.quantityFitbit08.text = String("0")
        fitbitVC?.quantityFitbit09.text = String("0")
        
        samsungSum = 0
        
        samsungVC?.stepperSamsung01.value = 0
        samsungVC?.stepperSamsung02.value = 0
        samsungVC?.stepperSamsung03.value = 0
        samsungVC?.stepperSamsung04.value = 0
        samsungVC?.stepperSamsung05.value = 0
        samsungVC?.stepperSamsung06.value = 0
        samsungVC?.stepperSamsung07.value = 0
        
        samsungVC?.quantitySamsung01.text = String("0")
        samsungVC?.quantitySamsung02.text = String("0")
        samsungVC?.quantitySamsung03.text = String("0")
        samsungVC?.quantitySamsung04.text = String("0")
        samsungVC?.quantitySamsung05.text = String("0")
        samsungVC?.quantitySamsung06.text = String("0")
        samsungVC?.quantitySamsung07.text = String("0")
    }
    
    func buyAlert(){
        let alertController = UIAlertController(title: "購買完成！", message: nil, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "確定", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true)
    }
    
    func cantbuyAlert(){
        let alertController = UIAlertController(title: "購物車是空的哦！", message: nil, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "確定", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true)
    }
    
}


extension ViewController: SettingTableViewControllerDelegate {
    func amount(product: Product, all: String) {
        switch product {
        case .apple:
            self.appleSum = Int(Float(all) ?? 0) ?? 0
        case .asus:
            self.asusSum = Int(Float(all) ?? 0) ?? 0
        case .garmin:
            self.garminSum = Int(Float(all) ?? 0) ?? 0
        case .fitbit:
            self.fitbitSum = Int(Float(all) ?? 0) ?? 0
        case .samsung:
            self.samsungSum = Int(Float(all) ?? 0) ?? 0
        default: break
        }
        calTotal()
    }
    
    func list(product: Product, all: [Order]) {
        print(all)
        var sum = 0
        for item in all {
            sum = sum + (Int(item.price) * item.amonut )
        }
    }
}

