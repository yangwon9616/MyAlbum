

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var pictureImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        priceLabel.text = "\(currentValue)$ 입니다"
    }

    


    @IBAction func btn(_ sender: Any) {
        
        let message = "가격은 \(currentValue) 입니다"
        
//         얼럿의 구성요소는 3개
//         1. 상단 내용을 차지하는 UIAlertController
//         2, 하단 버튼 부분의 UIAlertAction
//         이 두 개를 UIAlertController.adAlert(UIAlertAction) 이렇게 활용 가능함
//         마지막으로 present를 통해 alert을 띄우게 됨
//         정리하면 내용, 버튼, 어떻게 띄울 것인가
        let alert = UIAlertController(title: "아싸가오리", message: message, preferredStyle: .alert)
        // 얼럿을 실행해줘야 함
        // 변수가 담긴 함수를 만들어야 하지 않을까?
  
        let action = UIAlertAction(title: "구뜨", style: .default, handler: nil)
   
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        let randomPrice = arc4random_uniform(99999) + 1
        
        currentValue = Int(randomPrice)
        priceLabel.text = "\(currentValue) $ 입니다"
        }
}
    


