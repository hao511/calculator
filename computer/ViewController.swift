
//label的0持續出現
//小數點可以按很多次
//當運行完一次，要進行下次運算時原本的數字不會消失
//

import UIKit
enum Sign {
    case nothing
    case add
    case minus
    case multi
    case division
}

class ViewController: UIViewController {
    let btnColor = UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)
    let formatter = NumberFormatter()
    var FirstNumber: Double = 0
    var SecondNumber: Double = 0
    var CurrentSign = Sign.nothing
    @IBOutlet weak var result_lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
 result_lbl.text = "0"
        formatter.numberStyle = .decimal
        //對數字以10進位的方式來處理
        //result_lbl.backgroundColor = btnColor
        
    }
    func CheckNumber (labelText:String) -> (String){
        var stringofNumber: NSNumber
        stringofNumber = formatter.number(from: labelText)!
        return String(describing: stringofNumber)
        
    }

  
    @IBAction func one_btn(_ sender: UIButton) {
        
        result_lbl.text! = result_lbl.text! + "1"
        result_lbl.text! = CheckNumber(labelText: result_lbl.text!)

    }
    
    @IBAction func two_btn(_ sender: UIButton) {
        result_lbl.text! += "2"
        result_lbl.text! = CheckNumber(labelText: result_lbl.text!)

    }
    
    @IBAction func three_btn(_ sender: UIButton) {
        result_lbl.text! += "3"
        result_lbl.text! = CheckNumber(labelText: result_lbl.text!)

    }
    
    @IBAction func four_btn(_ sender: UIButton) {
        result_lbl.text! += "4"
        result_lbl.text! = CheckNumber(labelText: result_lbl.text!)

    }
    
    @IBAction func five_btn(_ sender: UIButton) {
        result_lbl.text! += "5"
        result_lbl.text! = CheckNumber(labelText: result_lbl.text!)

    }
    
    @IBAction func six_btn(_ sender: UIButton) {
        result_lbl.text! += "6"
        result_lbl.text! = CheckNumber(labelText: result_lbl.text!)

    }
    
    @IBAction func seven_btn(_ sender: UIButton) {
        result_lbl.text! += "7"
        result_lbl.text! = CheckNumber(labelText: result_lbl.text!)

    }
    
    @IBAction func eight_btn(_ sender: UIButton) {
        result_lbl.text! += "8"
        result_lbl.text! = CheckNumber(labelText: result_lbl.text!)

    }
    
    @IBAction func nine_btn(_ sender: UIButton) {
        result_lbl.text! += "9"
        result_lbl.text! = CheckNumber(labelText: result_lbl.text!)

    }
    
    @IBAction func zero_btn(_ sender: UIButton) {
        result_lbl.text! += "0"
        if !(result_lbl.text?.contains("."))!{
    //判斷label.text是否有小數點，如果沒有，就只執行
            //result_lbl.text! += "0"
            //P.19-16
            self.result_lbl.text! = CheckNumber(labelText: self.result_lbl.text!)
        }

    }
    
    @IBAction func dot_btn(_ sender: UIButton)
    {
        //!(result_lbl.text?.contains(“.")
        //用來判斷label.text是否含有小數點
        //在前面加入!是指如果字串內不包含小樹點則執行
        if !(result_lbl.text?.contains("."))!{
            self.result_lbl.text! += "."
        }
    }
    
    @IBAction func add_btn(_ sender: UIButton) {
        if CurrentSign != Sign.add{
        
            FirstNumber = Double(result_lbl.text!)!
            result_lbl.text! = "0"
        }
        CurrentSign = Sign.add
    }
    
    @IBAction func minus_btn(_ sender: UIButton) {
        if CurrentSign != Sign.minus{
        
            FirstNumber = Double(result_lbl.text!)!
            result_lbl.text! = "0"
            
        }
        CurrentSign = Sign.minus
    }
    
    @IBAction func multi_btn(_ sender: UIButton) {
        if CurrentSign != Sign.multi{
        
            FirstNumber = Double(result_lbl.text!)!
            result_lbl.text! = "0"
        
        }
        CurrentSign = Sign.multi
    }
    @IBAction func division_btn(_ sender:UIButton) {
        if CurrentSign != Sign.division{
        
            FirstNumber = Double(result_lbl.text!)!
            result_lbl.text! = "0"
        
        }
        CurrentSign = Sign.division
    }
    var finalNumber: Double = 0.0
    @IBAction func total_btn(_ sender: UIButton) {
        SecondNumber = Double(result_lbl.text!)!
        switch CurrentSign {
        case .add:
            finalNumber = FirstNumber + SecondNumber

            result_lbl.text =            CheckNumber(labelText: String(finalNumber))

            CurrentSign = Sign.nothing
        
        case .minus:
            finalNumber = FirstNumber - SecondNumber
            result_lbl.text =
                CheckNumber(labelText: String(finalNumber))
            CurrentSign = Sign.nothing

        case .multi:
            finalNumber = FirstNumber * SecondNumber
            result_lbl.text =
                CheckNumber(labelText: String(finalNumber))
            CurrentSign = Sign.nothing

        case .division:
            finalNumber = FirstNumber / SecondNumber
            result_lbl.text =
                CheckNumber(labelText: String(finalNumber))
            CurrentSign = Sign.nothing

        case .nothing:
            break
            
        default:
            break
        }
    }
    
    @IBAction func clean_btn(_ sender: UIButton) {
        result_lbl.text = "0"
        CurrentSign = Sign.nothing
        

    }
}




