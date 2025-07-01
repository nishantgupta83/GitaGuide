//
//  ScenarioDetailView.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

/* NISHANT VERSION 5.0 WORKING
 
 
struct ScenarioDetailView: View {
    let scenario: LifeScenario
    @EnvironmentObject var scenariosManager: ScenariosManager
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var showingWisdomResponse = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Header
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        Image(systemName: scenario.category.icon)
                            .foregroundColor(scenario.category.color)
                            .font(.title2)
                        
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
                        
                        Spacer()
                    }
                    
                    Text(scenario.title)
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                // Scenario Description
                Text(scenario.description)
                    .font(.body)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                
                // Stick Figure Visualization
             //   StickFigureView(scene: scenario.stickFigureScene)
             //       .frame(height: 120)
                
                ScenarioImageView(scenario: scenario)
                    .frame(height: 120)
                
                // The Two Paths
                VStack(spacing: 16) {
                    Text("the_two_paths".localized)
                        .font(.headline)
                        .foregroundColor(.orange)
                    
                    VStack(spacing: 12) {
                        PathCard(
                            title: "heart_says".localized,
                            description: scenario.heartResponse,
                            color: .red
                        )
                        
                        PathCard(
                            title: "duty_says".localized,
                            description: scenario.dutyResponse,
                            color: .blue
                        )
                    }
                }
                
                // Tags
                if !scenario.tags.isEmpty {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("related_topics".localized)
                            .font(.headline)
                            .foregroundColor(.orange)
                        
                        LazyVGrid(columns: [
                            GridItem(.adaptive(minimum: 80))
                        ], spacing: 8) {
                            ForEach(scenario.tags, id: \.self) { tag in
                                Text(tag)
                                    .font(.caption)
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 4)
                                    .background(Color.orange.opacity(0.2))
                                    .cornerRadius(8)
                            }
                        }
                    }
                }
                
                // Action Button
                Button(action: {
                    scenariosManager.currentScenario = scenario
                    showingWisdomResponse = true
                }) {
                    HStack {
                        Image(systemName: "lightbulb.fill")
                        Text("get_gita_wisdom".localized)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                }
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $showingWisdomResponse) {
            WisdomResponseView(scenario: scenario)
        }
    }
}

struct PathCard: View {
    let title: String
    let description: String
    let color: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(color)
            
            Text(description)
                .font(.body)
                .foregroundColor(.primary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(color.opacity(0.1))
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(color.opacity(0.3), lineWidth: 1)
        )
    }
}

 */


struct ScenarioDetailView: View {
    let scenario: LifeScenario
    @EnvironmentObject var scenariosManager: ScenariosManager
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var showingWisdomResponse = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        Image(systemName: scenario.category.icon)
                            .foregroundColor(scenario.category.color)
                            .font(.title2)

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
                        Spacer()
                    }
                    Text(scenario.title)
                        .font(.title)
                        .fontWeight(.bold)
                }
                .padding()
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16))
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white.opacity(0.2), lineWidth: 1))
                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)

                Text(scenario.description)
                    .font(.body)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(12)

                ScenarioImageView(scenario: scenario)
                    .frame(height: 120)

                VStack(spacing: 16) {
                    Text("the_two_paths".localized)
                        .font(.headline)
                        .foregroundColor(.orange)
                    VStack(spacing: 12) {
                        PathCard(title: "heart_says".localized, description: scenario.heartResponse, color: .red)
                        PathCard(title: "duty_says".localized, description: scenario.dutyResponse, color: .blue)
                    }
                }

                if !scenario.tags.isEmpty {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("related_topics".localized)
                            .font(.headline)
                            .foregroundColor(.orange)
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))], spacing: 8) {
                            ForEach(scenario.tags, id: \.self) { tag in
                                Text(tag)
                                    .font(.caption)
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 4)
                                    .background(Color.orange.opacity(0.2))
                                    .cornerRadius(8)
                            }
                        }
                    }
                }

                Button(action: {
                    scenariosManager.currentScenario = scenario
                    showingWisdomResponse = true
                }) {
                    HStack {
                        Image(systemName: "lightbulb.fill")
                        Text("get_gita_wisdom".localized)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                }
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $showingWisdomResponse) {
            WisdomResponseView(scenario: scenario)
        }
    }
}

struct PathCard: View {
    let title: String
    let description: String
    let color: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(color)
            Text(description)
                .font(.body)
                .foregroundColor(.primary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(color.opacity(0.1))
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(color.opacity(0.3), lineWidth: 1)
        )
    }
}

#Preview {
    NavigationView {
        ScenarioDetailView(scenario: SampleData.allScenarios[0])
            .environmentObject(ScenariosManager())
    }
}
