//
//  UIViewController.swift
//  EAO
//
//  Created by Micha Volin on 2017-05-15.
//  Copyright © 2017 FreshWorks. All rights reserved.
//

extension UIViewController{
    
	@objc func showSuccessImageView(){
		let imageView = UIImageView()
		imageView.image = #imageLiteral(resourceName: "icon_success")
		imageView.alpha = 0
		imageView.frame.size = CGSize(width: 128, height: 128)
		imageView.center = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
		view.addSubview(imageView)
		UIView.animate(withDuration: 0.25, animations: {
			imageView.alpha = 1
		}) { (_) in
			UIView.animate(withDuration: 0.1, delay: 0.3, options: .curveLinear, animations: {
				imageView.alpha = 0
			}, completion: { (_) in
				imageView.removeFromSuperview()
			})
		}
	}
    
    func warn(message: String) {
        let alert = UIAlertController(title: "", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func round(num:Double, toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (num * divisor).rounded() / divisor
    }

}
