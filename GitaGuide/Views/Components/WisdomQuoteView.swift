//
//  WisdomQuoteView.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import SwiftUI

struct WisdomQuoteView: View {
    let quote: WisdomQuote
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var isVisible = false
    @State private var showingNewQuote = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Header
            HStack {
                Text("todays_wisdom".localized)  // ← CHANGED: was "✨ Today's Wisdom"
                    .font(.headline)
                    .foregroundColor(.orange)
                
                Spacer()
                
          // NISHANT V5.0 Below button is of the wisdom quote pop out that is not needed currently
           /*
                Button(action: {
                    withAnimation(.spring()) {
                        showingNewQuote.toggle()
                    }
                }) {
                    Image(systemName: "arrow.clockwise")
                        .font(.subheadline)
                        .foregroundColor(.orange)
                        .padding(8)
                        .background(Color.orange.opacity(0.1))
                        .clipShape(Circle())
            
            } */
            
                
            }
            
            // Quote content
            VStack(alignment: .leading, spacing: 12) {
                // Quote text
                Text("\"\(quote.text)\"")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                
                // Attribution
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        Text("— \(quote.source)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .fontWeight(.medium)
                        
                        if let chapter = quote.chapter, let verse = quote.verseNumber {
                            Text("\("chapter".localized) \(chapter), \("verse".localized) \(verse)")  // ← CHANGED
                                .font(.caption)
                                .foregroundColor(.orange)
                        }
                    }
                    
                    Spacer()
                    
                    // Decorative element
                    Text(" ")
                        .font(.title2)
                        .foregroundColor(.orange.opacity(0.7))
                }
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color.orange.opacity(0.05),
                                Color.yellow.opacity(0.03)
                            ]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.orange.opacity(0.2), lineWidth: 1)
                    )
            )
        }
        .scaleEffect(isVisible ? 1.0 : 0.95)
        .opacity(isVisible ? 1.0 : 0.0)
        .onAppear {
            withAnimation(.spring(response: 0.8, dampingFraction: 0.6).delay(0.3)) {
                isVisible = true
            }
        }
        .sheet(isPresented: $showingNewQuote) {
            QuoteSelectionView()
        }
    }
}

struct QuoteSelectionView: View {
    @StateObject private var quotesManager = WisdomQuotesManager()
    @Environment(\.dismiss) private var dismiss
    @State private var selectedQuote: WisdomQuote?
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(quotesManager.quotes.shuffled()) { quote in
                        QuoteCard(quote: quote) {
                            selectedQuote = quote
                            dismiss()
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("choose_wisdom".localized)  // ← CHANGED: was "Choose Wisdom"
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("done".localized) { dismiss() }  // ← CHANGED: was "Done"
                }
            }
        }
    }
}

struct QuoteCard: View {
    let quote: WisdomQuote
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            VStack(alignment: .leading, spacing: 12) {
                Text("\"\(quote.text)\"")
                    .font(.body)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.leading)
                
                HStack {
                    Text("— \(quote.source)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Spacer()
                    
                    if let chapter = quote.chapter {
                        Text("Ch. \(chapter)")
                            .font(.caption)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Color.orange.opacity(0.2))
                            .cornerRadius(8)
                    }
                }
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(12)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    VStack {
        WisdomQuoteView(quote: WisdomQuotesData.allQuotes[0])
            .padding()
        
        Spacer()
    }
}
