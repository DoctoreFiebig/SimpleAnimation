import UIKit

class AnimationView: UIViewController {

    @IBOutlet weak var labInfo: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        imgView.alpha = 0.0
        labInfo.hidden = true
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(2) { 
            self.imgView.alpha = 1.0
        }
    }

    @IBAction func InfoClicked(sender: UIButton) {
        if sender.titleLabel?.text == "Mehr Infos" {
            sender.setTitle("Weniger Infos", forState: .Normal)
            UIView.animateWithDuration(0.5, animations: { 
                self.labInfo.hidden = false
            })
        }
        else {
            sender.setTitle("Mehr Infos", forState: .Normal)
            UIView.animateWithDuration(0.5, animations: { 
                self.labInfo.hidden = true
            })
        }
    }
    
}
