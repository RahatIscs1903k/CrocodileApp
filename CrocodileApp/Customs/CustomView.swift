//
//  CustomView.swift
//  CrocodileApp
//
//  Created by Марк Райтман on 20.04.2023.
//

import Foundation
import  UIKit

/// Вычисляемые свойства, основанные на базовом свойстве CALayer, которые видны в Interface Builder.
@IBDesignable open class CustomView: UIView {
    
    /// При положительном значении фон слоя будет рисоваться с закругленными углами. Также влияет на маску, создаваемую свойством `masksToBounds'. По умолчанию равно нулю. Анимируемый.
    @IBInspectable var cornerRadius: Double {
        get {
            return Double(self.layer.cornerRadius)
        }
        set {
            self.layer.cornerRadius = CGFloat(newValue)
        }
    }
    
    /// Ширина границы слоя, отступающая от границ слоя. Граница накладывается поверх содержимого слоя и подслоев и включает эффекты свойства `cornerRadius'. По умолчанию равна нулю. Анимируемая.
    @IBInspectable var borderWidth: Double {
        get {
            return Double(self.layer.borderWidth)
        }
        set {
            self.layer.borderWidth = CGFloat(newValue)
        }
    }
    
    /// Цвет границы слоя. По умолчанию - непрозрачный черный. Поддерживаются цвета, созданные на основе плиточных узоров. Анимируемый.
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: self.layer.borderColor!)
        }
        set {
            self.layer.borderColor = newValue?.cgColor
        }
    }
    
    /// Цвет тени. По умолчанию - непрозрачный черный. Цвета, созданные по шаблонам, в настоящее время НЕ поддерживаются. Анимируемый.
    @IBInspectable var shadowColor: UIColor? {
        get {
            return UIColor(cgColor: self.layer.shadowColor!)
        }
        set {
            self.layer.shadowColor = newValue?.cgColor
        }
    }
    
    /// Непрозрачность тени. Значение по умолчанию равно 0. Указание значения вне диапазона [0,1] приведет к неопределенным результатам. Анимируемая.
    @IBInspectable var shadowOpacity: Float {
        get {
            return self.layer.shadowOpacity
        }
        set {
            self.layer.shadowOpacity = newValue
        }
    }
    
    /// Смещение тени. По умолчанию (0, -3). Анимируемый.
    @IBInspectable var shadowOffset: CGSize {
        get {
            return self.layer.shadowOffset
        }
        set {
            self.layer.shadowOffset = newValue
        }
    }
    
    /// Радиус размытия, используемый для создания тени. По умолчанию равен 3. Анимируемый.
    @IBInspectable var shadowRadius: Double {
        get {
            return Double(self.layer.shadowRadius)
        }
        set {
            self.layer.shadowRadius = CGFloat(newValue)
        }
    }
}

////MARK: - Extensions
//
//// Дефолтные значения
//private let animationDuration: TimeInterval = 1.0
//private let deleyTime: TimeInterval = 0
//private let springDamping: CGFloat = 0.25
//private let lowSpringDamping: CGFloat = 0.50
//private let springVelocity: CGFloat = 8.00
//
//extension CustomView {
//
//    //MARK:- Default Animation here
//    public func AnimateView(){
//        provideAnimation(animationDuration: animationDuration, deleyTime: deleyTime, springDamping: springDamping, springVelocity: springVelocity)
//    }
//
//    //MARK:- Custom Animation here
//    public func AnimateViewWithSpringDuration(_ name:UIView, animationDuration:TimeInterval, springDamping:CGFloat, springVelocity:CGFloat){
//        provideAnimation(animationDuration: animationDuration, deleyTime: deleyTime, springDamping: springDamping, springVelocity: springVelocity)
//    }
//
//    //MARK:- Low Damping Custom Animation here
//    public func AnimateViewWithSpringDurationWithLowDamping(_ name:UIView, animationDuration:TimeInterval, springVelocity:CGFloat){
//        provideAnimation(animationDuration: animationDuration, deleyTime: deleyTime, springDamping: lowSpringDamping, springVelocity: springVelocity)
//    }
//
//    private func provideAnimation(animationDuration:TimeInterval, deleyTime:TimeInterval, springDamping:CGFloat, springVelocity:CGFloat){
//        self.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
//        UIView.animate(withDuration: animationDuration,
//                       delay: deleyTime,
//                       usingSpringWithDamping: springDamping,
//                       initialSpringVelocity: springVelocity,
//                       options: .allowUserInteraction,
//                       animations: {
//                       self.transform = CGAffineTransform.identity
//        })
//    }
//}
