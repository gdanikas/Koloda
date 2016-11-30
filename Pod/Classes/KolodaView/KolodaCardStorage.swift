//
//  KolodaCardStorage.swift
//  Pods
//
//  Created by Eugene Andreyev on 3/30/16.
//
//

import Foundation
import UIKit

extension KolodaView {
    
    func createCard(at index: Int, inView parentView: UIView? = nil, withFrame frame: CGRect? = nil) -> DraggableCardView {
        let cardView = generateCard(frame ?? frameForTopCard(), inView: parentView)
        configureCard(cardView, at: index)
        
        return cardView
    }
    
    func generateCard(_ frame: CGRect, inView parentView: UIView? = nil) -> DraggableCardView {
        let cardView = DraggableCardView(frame: frame, parentView: parentView)
        cardView.delegate = self
        
        return cardView
    }
    
    func configureCard(_ card: DraggableCardView, at index: Int) {
        let contentView = dataSource!.koloda(self, viewForCardAt: index)
        card.configure(contentView, overlayView: dataSource?.koloda(self, viewForCardOverlayAt: index))
    }
    
}
