//
//  ScenarioCardView.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct ScenarioCardView: View {
    let scenario: LifeScenario
    @StateObject private var localizationManager = LocalizationManager.shared
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Header
            HStack {
                HStack(spacing: 8) {
                    Image(systemName: scenario.category.icon)
                        .foregroundColor(scenario.category.color)
                        .font(.title3)
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text(scenario.category.rawValue)
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text(String(format: "chapter_number".localized, scenario.chapter))
                            .font(.caption2)
                            .padding(.horizontal, 6)
                            .padding(.vertical, 2)
                            .background(Color.orange.opacity(0.2))
                            .cornerRadius(4)
                    }
                }
                
                Spacer()
                
                Image(systemName: "arrow.right")
                    .foregroundColor(.orange)
                    .font(.caption)
            }
            
            // Title
            Text(scenario.title)
                .font(.headline)
                .fontWeight(.semibold)
                .lineLimit(2)
            
            // Description preview
            Text(scenario.description)
                .font(.body)
                .foregroundColor(.secondary)
                .lineLimit(3)
            
            // Tags preview
            if !scenario.tags.isEmpty {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 6) {
                        ForEach(Array(scenario.tags.prefix(3)), id: \.self) { tag in
                            Text(tag)
                                .font(.caption2)
                                .padding(.horizontal, 6)
                                .padding(.vertical, 3)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(6)
                        }
                        
                        if scenario.tags.count > 3 {
                            Text("+\(scenario.tags.count - 3)")
                                .font(.caption2)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            
            // Quick preview of paths
            HStack(spacing: 12) {
                VStack(alignment: .leading, spacing: 2) {
                    Text("heart_short".localized)
                        .font(.caption2)
                        .foregroundColor(.red)
                    Text(scenario.heartResponse)
                        .font(.caption2)
                        .foregroundColor(.secondary)
                        .lineLimit(1)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Rectangle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 1, height: 30)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("duty_short".localized)
                        .font(.caption2)
                        .foregroundColor(.blue)
                    Text(scenario.dutyResponse)
                        .font(.caption2)
                        .foregroundColor(.secondary)
                        .lineLimit(1)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 1)
    }
}

#Preview {
    ScrollView {
        LazyVStack(spacing: 16) {
            ForEach(Array(SampleData.allScenarios.prefix(3))) { scenario in
                ScenarioCardView(scenario: scenario)
            }
        }
        .padding()
    }
}
