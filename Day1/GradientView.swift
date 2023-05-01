//
//  GradientView.swift
//  Day1
//
//  Created by Ilya Krupko on 01.05.23.
//

import UIKit

final class GradientView: UIView {
    
    private enum Appearance {
        static let cornerRadius:CGFloat = 8
    }
    
    private lazy var gradientLayer = {
        let gradientLayer = CAGradientLayer()
        gradientLayer.cornerRadius = Appearance.cornerRadius
        gradientLayer.colors = [UIColor.systemMint.cgColor,UIColor.systemPink.cgColor]
        gradientLayer.startPoint = .zero
        gradientLayer.endPoint = .init(x: 1, y: 1)
        return gradientLayer
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = Appearance.cornerRadius
        layer.cornerCurve = .continuous
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.3
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        layer.shadowOffset = .init(width: 4, height: 4)
        layer.shadowRadius = 4
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
