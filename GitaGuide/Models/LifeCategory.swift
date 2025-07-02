//
//  LifeCategory.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import Foundation
import SwiftUI

/* ORIGINAL V1.0  -- NISHANT
enum LifeCategory: String, CaseIterable, Codable {
    case work = "Work & Career"
    case family,love = "Family"
    case duty = "Duty"
    case friendship, relationship = "Relationships"
    case ethics = "Ethics & Morals"
    case personal = "Personal Growth"
    case leadership = "Leadership"
    case conflict = "Conflict Resolution"
    case mentalHealth = " Mental WellBeing"
    case moralDilemma = " Moral Dilemma"
    case school = "Education /School"
    case childhood, kids, teen, youth = "Childhood"
    case social = "Digital World"
    case gengap = "Parenting & Generational Gaps"
    case spiritual = " Spiritual"
    
    var icon: String {
        switch self {
        case .work: return "briefcase.fill"
        case .family: return "house.fill"
        case .friendship: return "heart.fill"
        case .love: return "heart.fill"
        case .relationship: return "heart.fill"
        case .duty: return "butterfly.fill"
        case .ethics: return "scale.3d"
        case .personal: return "person.fill"
        case .moralDilemma: return "questionmark.fill"
        case .leadership: return "crown.fill"
        case .mentalHealth: return "brain.fill"
        case .conflict: return "questionmark.diamond.fill"
        case .school: return "school.fill"
        case .childhood: return "kite.fill"
        case .kids: return "kite.fill"
        case .youth: return "kite.fill"
        case .teen: return "kite.fill"
        case .gengap: return "paint.fill"
        case .social: return "social.fill"
        case .spiritual: return "spiritual.fill"
        }
    }
    
    var color: Color {
        switch self {
        case .work: return .blue
        case .family: return .green
        case .love:return .pink
        case .friendship: return .pink
        case .relationship: return .mint
        case .duty: return .cyan
        case .mentalHealth: return .blue
        case .moralDilemma: return .gold
        case .ethics: return .purple
        case .personal: return .orange
        case .leadership: return .yellow
        case .conflict: return .red
        case .school:return .primary
        case .childhood:return .green
        case .teen:return .blue
        case .kids:return .green
        case .youth:return .orange
        case .gengap:return .brown
        case .social:return .black
        case .spiritual:return .indigo
        }
    }
}
*/

// NISHANT VERSION 2.0 CLEANER
/*

enum LifeCategory: String, CaseIterable, Codable {
    case work = "Work & Career"
    case family = "Family & Love"
    case duty = "Duty"
    case relationships = "Relationships"
    case ethics = "Ethics & Morals"
    case personal = "Personal Growth"
    case leadership = "Leadership"
    case conflict = "Conflict Resolution"
    case mentalHealth = "Mental Well-being"
    case moralDilemma = "Moral Dilemma"
    case education = "Education & School"
    case childhood = "Childhood & Teens"
    case digital = "Digital Life"
    case parenting = "Parenting & Generational Gaps"
    case spiritual = "Spiritual"

    var icon: String {
        switch self {
        case .work: return "briefcase.fill"
        case .family: return "house.fill"
        case .duty: return "checkmark.seal.fill"
        case .relationships: return "heart.circle.fill"
        case .ethics: return "scale.3d"
        case .personal: return "person.crop.circle.fill"
        case .leadership: return "crown.fill"
        case .conflict: return "exclamationmark.triangle.fill"
        case .mentalHealth: return "brain.head.profile"
        case .moralDilemma: return "questionmark.circle.fill"
        case .education: return "graduationcap.fill"
        case .childhood: return "gamecontroller.fill"
        case .digital: return "iphone.radiowaves.left.and.right"
        case .parenting: return "figure.2.and.child.holdinghands"
        case .spiritual: return "sparkles"
        }
    }

    var color: Color {
        switch self {
        case .work: return .blue
        case .family: return .green
        case .duty: return .cyan
        case .relationships: return .mint
        case .ethics: return .purple
        case .personal: return .orange
        case .leadership: return .yellow
        case .conflict: return .red
        case .mentalHealth: return .teal
        case .moralDilemma: return .gray
        case .education: return .indigo
        case .childhood: return .pink
        case .digital: return .black
        case .parenting: return .brown
        case .spiritual: return .indigo
        }
    }
}
*/
// NISHANT VERSION 3.0 SHORTER - requires changes in the scenarios.


//
//  LifeCategory.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

/*
import Foundation
import SwiftUI

enum LifeCategory: String, CaseIterable, Codable {
    case personal = "self_identity"
    case relationships = "family_relationships"
    case work = "work_duty"
    case ethics = "morals_dilemmas"
    case mentalHealth = "mind_emotions"
    case education = "learning_youth"
    case digital = "digital_modern_life"
    case spiritual = "spiritual_growth"
    
    // Localized display name
    var localizedName: String {
        return self.rawValue.localized
    }
    
    // For backward compatibility with existing code that uses rawValue directly
    var displayName: String {
        return localizedName
    }

    var icon: String {
        switch self {
        case .personal: return "person.crop.circle.fill"
        case .relationships: return "heart.circle.fill"
        case .work: return "briefcase.fill"
        case .ethics: return "scale.3d"
        case .mentalHealth: return "brain.head.profile"
        case .education: return "graduationcap.fill"
        case .digital: return "iphone.radiowaves.left.and.right"
        case .spiritual: return "sparkles"
        }
    }

    var color: Color {
        switch self {
        case .personal: return .orange
        case .relationships: return .mint
        case .work: return .blue
        case .ethics: return .purple
        case .mentalHealth: return .teal
        case .education: return .indigo
        case .digital: return .gray
        case .spiritual: return .indigo
        }
    }
}

// Extension to maintain compatibility with existing code
extension LifeCategory {
    // This ensures existing code that checks category.rawValue still works
    var categoryKey: String {
        return self.rawValue
    }
}

*/


//
//  LifeCategory.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import Foundation
import SwiftUI

enum LifeCategory: String, CaseIterable, Codable {
    case personal         // self_identity
    case relationships    // family_relationships
    case work             // work_duty
    case ethics           // morals_dilemmas
    case mentalHealth     // mind_emotions
    case education        // learning_youth
    case digital          // digital_modern_life
    case spiritual        // spiritual_growth

    // Extra categories used in legacy JSON or extended scenarios
    case family
    case duty
    case friendship
    case leadership
    case conflict
    case moralDilemma
    case school
    case childhood
    case social
    case gengap
    case love
    case relationship

    // MARK: - Localized display name
    var localizedName: String {
        switch self {
        case .personal: return "self_identity".localized
        case .relationships: return "family_relationships".localized
        case .work: return "work_duty".localized
        case .ethics: return "morals_dilemmas".localized
        case .mentalHealth: return "mind_emotions".localized
        case .education: return "learning_youth".localized
        case .digital: return "digital_modern_life".localized
        case .spiritual: return "spiritual_growth".localized
        case .family: return "family".localized
        case .duty: return "duty".localized
        case .friendship: return "friendship".localized
        case .leadership: return "leadership".localized
        case .conflict: return "conflict".localized
        case .moralDilemma: return "moral_dilemma".localized
        case .school: return "school".localized
        case .childhood: return "childhood".localized
        case .social: return "social".localized
        case .gengap: return "generational_gap".localized
        case .love: return "love".localized
        case .relationship: return "relationships".localized
        }
    }

    var icon: String {
        switch self {
        case .personal: return "person.crop.circle.fill"
        case .relationships, .relationship, .love, .friendship: return "heart.circle.fill"
        case .work, .duty: return "briefcase.fill"
        case .ethics, .moralDilemma: return "scale.3d"
        case .mentalHealth: return "brain.head.profile"
        case .education, .school: return "graduationcap.fill"
        case .digital, .social: return "iphone.radiowaves.left.and.right"
        case .spiritual: return "sparkles"
        case .family: return "house.fill"
        case .leadership: return "crown.fill"
        case .conflict: return "exclamationmark.triangle.fill"
        case .childhood: return "gamecontroller.fill"
        case .gengap: return "figure.2.and.child.holdinghands"
        }
    }

    var color: Color {
        switch self {
        case .personal: return .orange
        case .relationships, .relationship, .love, .friendship: return .mint
        case .work, .duty: return .blue
        case .ethics, .moralDilemma: return .purple
        case .mentalHealth: return .teal
        case .education, .school: return .indigo
        case .digital, .social: return .gray
        case .spiritual: return .indigo
        case .family: return .green
        case .leadership: return .yellow
        case .conflict: return .red
        case .childhood: return .pink
        case .gengap: return .brown
        }
    }

    // Backward compatibility
    var displayName: String {
        return localizedName
    }

    var categoryKey: String {
        return self.rawValue
    }
}

