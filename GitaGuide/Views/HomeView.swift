
    
//    NISHANT - REMOVING 'DAILY DILEMMA' with WISDOM QUOTE
  /*
   
   import SwiftUI

   struct HomeView: View {
       @EnvironmentObject var scenariosManager: ScenariosManager
       @EnvironmentObject var quotesManager: WisdomQuotesManager
       @StateObject private var localizationManager = LocalizationManager.shared
       @State private var showingDailyScenario = false

   var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    VStack(spacing: 8) {
                        Text("app_title".localized)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)

                        Text("app_subtitle".localized)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                    .padding(.top, 20)

                    if let dailyScenario = scenariosManager.dailyScenario {
                        VStack(alignment: .leading, spacing: 16) {
                            HStack {
                                Text("todays_dilemma".localized)
                                    .font(.headline)
                                    .foregroundColor(.orange)
                                Spacer()
                                Image(systemName: dailyScenario.category.icon)
                                    .foregroundColor(dailyScenario.category.color)
                            }

                            Text(dailyScenario.title)
                                .font(.title2)
                                .fontWeight(.semibold)

                            Text(dailyScenario.description)
                                .font(.body)
                                .foregroundColor(.secondary)
                                .lineLimit(3)

                         //   ScenarioImageView(scenario: dailyScenario)
                         //       .frame(height: 140)

                            HStack {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("heart_says_short".localized)
                                        .font(.caption)
                                        .foregroundColor(.red)
                                    Text(dailyScenario.heartResponse)
                                        .font(.caption2)
                                        .lineLimit(2)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)

                                Rectangle()
                                    .fill(Color.gray)
                                    .frame(width: 1, height: 40)

                                VStack(alignment: .leading, spacing: 4) {
                                    Text("duty_says_short".localized)
                                        .font(.caption)
                                        .foregroundColor(.blue)
                                    Text(dailyScenario.dutyResponse)
                                        .font(.caption2)
                                        .lineLimit(2)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }

                            Button(action: {
                                scenariosManager.currentScenario = dailyScenario
                                showingDailyScenario = true
                            }) {
                                HStack {
                                    Text("get_wisdom".localized)
                                    Image(systemName: "arrow.right")
                                }
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.orange)
                                .foregroundColor(.white)
                                .cornerRadius(12)
                            }
                        }
                        .padding()
                        .background(Color(.systemBackground))
                        .cornerRadius(16)
                        .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
                        .padding(.horizontal)
                    }

                    Spacer(minLength: 40)
                }
            }
            .navigationBarHidden(true)
        }
        .sheet(isPresented: $showingDailyScenario) {
            if let scenario = scenariosManager.currentScenario {
                WisdomResponseView(scenario: scenario)
            }
        }
    }
   
   */

   /* NEW AND IMPROVED V5.0 NISHANT  */

 import SwiftUI

 struct HomeView: View {
     @EnvironmentObject var scenariosManager: ScenariosManager
     @EnvironmentObject var quotesManager: WisdomQuotesManager
     @StateObject private var localizationManager = LocalizationManager.shared
     @State private var showingDailyScenario = false

     var body: some View {
         NavigationView {
             ScrollView {
                 VStack(spacing: 24) {
                     
                     // 🪞 Title Block with Glass & Shadow
                     VStack(spacing: 8) {
                         Text("gita_guide".localized)
                             .font(.largeTitle)
                             .fontWeight(.bold)
                             .foregroundColor(.white)
                         
                         Text("ancient_wisdom_modern_dilemmas".localized)
                             .font(.subheadline)
                             .foregroundColor(.white.opacity(0.7))
                     }
                     .padding()
                     .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
                     .overlay(
                         RoundedRectangle(cornerRadius: 20)
                             .stroke(Color.white.opacity(0.2), lineWidth: 1)
                     )
                     .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5)
                     .padding(.horizontal)
                     .padding(.top)
                     
                     // 📜 Wisdom Quote Block with Smooth Depth
                     if let quote = quotesManager.dailyQuote {
                         WisdomQuoteView(quote: quote)
                             .padding()
                             .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
                             .overlay(
                                 RoundedRectangle(cornerRadius: 20)
                                     .stroke(Color.white.opacity(0.2), lineWidth: 1)
                             )
                             .shadow(color: .black.opacity(0.25), radius: 8, x: 0, y: 4)
                             .padding(.horizontal)
                     }

                     Spacer(minLength: 100)
                 }
                 .padding(.bottom)
             }
             .background(
                 LinearGradient(colors: [
                     Color("BGStart"), Color("BGEnd")
                 ], startPoint: .top, endPoint: .bottom)
                 .ignoresSafeArea()
             )
            // .navigationBarHidden(true)
         }
     }
 }

   


    // GLASS EFFECT VERSION 1.0 WORKING

    
  /* NISHANT WORKING VERSION 4.0 */
    /*
     
     import SwiftUI
     // import Liquid


     struct HomeView: View {
         @EnvironmentObject var scenariosManager: ScenariosManager
         @EnvironmentObject var quotesManager: WisdomQuotesManager
         @StateObject private var localizationManager = LocalizationManager.shared
         @State private var showingDailyScenario = false
     
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    
                    // ✨ Header with Glass Background
                    VStack(spacing: 8) {
                        Text("gita_guide".localized)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("ancient_wisdom_modern_dilemmas".localized)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .padding(.horizontal)
                    
                    // 🚀 Today's Wisdom Card (Liquid Glass)
                    if let quote = quotesManager.dailyQuote {
                        WisdomQuoteView(quote: quote)
                            .padding(.horizontal)
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(.white.opacity(0.2), lineWidth: 1))
                            .padding(.horizontal)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 4)
                    }
                    
                    Spacer(minLength: 100)
                }
                .padding(.top)
          
            }
            .background(
                LinearGradient(colors: [
                    Color("BGStart"), Color("BGEnd")
                ], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            )
            .navigationBarHidden(true)
        }
    }
     */
    
//NISHANT ORIGIMAL WORKING

/*
import SwiftUI
// import Liquid


struct HomeView: View {
    @EnvironmentObject var scenariosManager: ScenariosManager
    @EnvironmentObject var quotesManager: WisdomQuotesManager
    @StateObject private var localizationManager = LocalizationManager.shared
    @State private var showingDailyScenario = false
    
    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    
                    // Title & Subtitle
                    VStack(alignment: .leading, spacing: 8) {
                        Text("app_title".localized) // "Wisdom Guide"
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("app_subtitle".localized) // "Ancient Wisdom for Modern Dilemmas"
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .padding(.top, 16)
                    .padding(.horizontal)
                    
                    // Today's Wisdom Section (Replaces Dilemma)
                    WisdomQuoteView(quote: quotesManager.quotes.first!)
                        .padding(.horizontal)
                }
                .padding(.bottom, 80)
            }
            .background(Color.black.ignoresSafeArea())
        }
}
 
 */

    
/*
    import SwiftUI
    import Liquid

    struct HomeView: View {
        @EnvironmentObject var scenariosManager: ScenariosManager
        @EnvironmentObject var quotesManager: WisdomQuotesManager
        @StateObject private var localizationManager = LocalizationManager.shared
        @State private var showingDailyScenario = false

        var body: some View {
            NavigationStack {
                VStack(spacing: 0) {
                    ScrollView {
                        VStack(spacing: 24) {
                            // 🧠 App Header
                            VStack(spacing: 8) {
                                Text("gita_guide".localized)
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                Text("ancient_wisdom_modern_dilemmas".localized)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .padding()
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16))
                            .padding(.horizontal)

                            // ✨ Today's Wisdom Quote
                            if let quote = quotesManager.dailyQuote {
                                WisdomQuoteView(quote: quote)
                                    .padding()
                                    .glassEffect()
                            }

                            Spacer(minLength: 100)
                        }
                        .padding(.top)
                    }

                    if #available(iOS 18.0, *) {
                        view.glassEffect()
                    } else {
                        view
                    }

                    // 🧊 Glass-Style Tab Bar
                    GlassEffectContainer(spacing: 40.0) {
                        HStack(spacing: 40.0) {
                            TabBarIcon(systemName: "house.fill", label: "Home", isSelected: true)
                            TabBarIcon(systemName: "book.fill", label: "Chapters", isSelected: false)
                            TabBarIcon(systemName: "list.bullet.rectangle", label: "scenarios", isSelected: false)
                            TabBarIcon(systemName: "book.closed", label: "Journal", isSelected: false)
                            TabBarIcon(systemName: "info.circle", label: "About", isSelected: false)
                        }
                        .padding(.vertical, 12)
                    }
                    .padding(.bottom, 8)
                }
                .background(
                    LinearGradient(colors: [
                        Color.black, Color("BGEnd")
                    ], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                )
            }
        }
    }


    struct TabBarIcon: View {
        let systemName: String
        let label: String
        let isSelected: Bool

        var body: some View {
            VStack(spacing: 4) {
                Image(systemName: systemName)
                    .font(.system(size: 22))
                    .glassEffect()
                Text(label.localized)
                    .font(.caption2)
                    .foregroundColor(isSelected ? .orange : .secondary)
            }
        }
    }

*/
