//
//  WisdomQuotes.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import Foundation

struct WisdomQuote: Identifiable, Codable {
    let id = UUID()
    let text: String
    let source: String
    let chapter: Int?
    let verseNumber: String?
    
    init(text: String, source: String = "Bhagavad Gita", chapter: Int? = nil, verseNumber: String? = nil) {
        self.text = text
        self.source = source
        self.chapter = chapter
        self.verseNumber = verseNumber
    }
}

class WisdomQuotesManager: ObservableObject {
    @Published var quotes: [WisdomQuote] = []
    @Published var dailyQuote: WisdomQuote?
    
    init() {
        loadQuotes()
        setDailyQuote()
    }
    
    private func loadQuotes() {
        quotes = WisdomQuotesData.allQuotes
    }
    
    private func setDailyQuote() {
        // Set daily quote based on date to ensure same quote for entire day
        let calendar = Calendar.current
        let dayOfYear = calendar.ordinality(of: .day, in: .year, for: Date()) ?? 1
        let index = dayOfYear % quotes.count
        dailyQuote = quotes[index]
    }
    
    func getRandomQuote() -> WisdomQuote {
        return quotes.randomElement() ?? quotes.first!
    }
    
    func getQuotesByChapter(_ chapter: Int) -> [WisdomQuote] {
        return quotes.filter { $0.chapter == chapter }
    }
}

struct WisdomQuotesData {
    static let allQuotes: [WisdomQuote] = [
        WisdomQuote(
            text: "You have a right to perform your prescribed action, but not to the fruits of action.",
            chapter: 2,
            verseNumber: "2.47"
        ),
        
        WisdomQuote(
            text: "The soul is never born nor does it die; it is unborn, eternal, permanent, and primeval.",
            chapter: 2,
            verseNumber: "2.20"
        ),
        
        WisdomQuote(
            text: "Better is one's own dharma, though imperfectly performed, than the dharma of another well performed.",
            chapter: 3,
            verseNumber: "3.35"
        ),
        
        WisdomQuote(
            text: "One who sees action in inaction and inaction in action is wise among humans.",
            chapter: 4,
            verseNumber: "4.18"
        ),
        
        WisdomQuote(
            text: "Whatever you do, whatever you eat, whatever you offer in sacrifice, give that as an offering to the Divine.",
            chapter: 9,
            verseNumber: "9.27"
        ),
        
        WisdomQuote(
            text: "The mind is restless, turbulent, obstinate and very strong. To subdue it is more difficult than controlling the wind.",
            chapter: 6,
            verseNumber: "6.34"
        ),
        
        WisdomQuote(
            text: "For one who has conquered the mind, the mind is the best of friends; but for one who has failed to do so, the mind will remain the greatest enemy.",
            chapter: 6,
            verseNumber: "6.6"
        ),
        
        WisdomQuote(
            text: "Those who are motivated only by desire for the fruits of action are miserable, for they are constantly anxious about the results of what they do.",
            chapter: 2,
            verseNumber: "2.49"
        ),
        
        WisdomQuote(
            text: "When meditation is mastered, the mind is unwavering like the flame of a lamp in a windless place.",
            chapter: 6,
            verseNumber: "6.19"
        ),
        
        WisdomQuote(
            text: "Those who eat too much or eat too little, who sleep too much or sleep too little, will not succeed in meditation.",
            chapter: 6,
            verseNumber: "6.16"
        ),
        
        WisdomQuote(
            text: "The offering of wisdom is better than any material offering.",
            chapter: 4,
            verseNumber: "4.33"
        ),
        
        WisdomQuote(
            text: "Those who surrender all actions to the Divine, abandoning attachment to success or failure, are not affected by sin.",
            chapter: 18,
            verseNumber: "18.10"
        ),
        
        WisdomQuote(
            text: "The wise see that there is action in the midst of inaction and inaction in the midst of action.",
            chapter: 4,
            verseNumber: "4.18"
        ),
        
        WisdomQuote(
            text: "Whatever state of being one remembers when leaving the body, that state they will attain without fail.",
            chapter: 8,
            verseNumber: "8.6"
        ),
        
        WisdomQuote(
            text: "Abandon all varieties of dharma and just surrender unto Me. I shall deliver you from all sinful reactions.",
            chapter: 18,
            verseNumber: "18.66"
        ),
        
        WisdomQuote(
            text: "One who is equal in happiness and distress, who is situated in the self, regards a lump of earth, stone and gold as equal.",
            chapter: 14,
            verseNumber: "14.24"
        ),
        
        WisdomQuote(
            text: "The happiness which comes from long practice, which leads to the end of suffering, which at first is like poison, but at last like nectar - this is born of wisdom.",
            chapter: 18,
            verseNumber: "18.37"
        ),
        
        WisdomQuote(
            text: "Those who worship with faith and devotion are very dear to Me.",
            chapter: 12,
            verseNumber: "12.20"
        ),
        
        WisdomQuote(
            text: "There is neither this world nor the world beyond nor happiness for the one who doubts.",
            chapter: 4,
            verseNumber: "4.40"
        ),
        
        WisdomQuote(
            text: "Knowledge, the object of knowledge, and the knower are the three factors that motivate action.",
            chapter: 18,
            verseNumber: "18.18"
        ),
        
        WisdomQuote(
            text: "One who neither rejoices nor grieves, who neither laments nor desires, renouncing both auspicious and inauspicious things, is very dear to Me.",
            chapter: 12,
            verseNumber: "12.17"
        ),
        
        WisdomQuote(
            text: "The true self is beyond birth and death, beyond past and future.",
            chapter: 2,
            verseNumber: "2.12"
        ),
        
        WisdomQuote(
            text: "Those who are free from anger and all material desires, who are self-realized, self-disciplined and constantly endeavoring for perfection, are assured of liberation.",
            chapter: 5,
            verseNumber: "5.26"
        ),
        
        WisdomQuote(
            text: "When your intelligence has passed out of the dense forest of delusion, you shall become indifferent to all that has been heard and all that is to be heard.",
            chapter: 2,
            verseNumber: "2.52"
        ),
        
        WisdomQuote(
            text: "Those who see the Supreme Lord dwelling equally in all beings, the imperishable within the perishable, they truly see.",
            chapter: 13,
            verseNumber: "13.27"
        ),
        
        WisdomQuote(
            text: "Through selfless service, you will always be fruitful and find the fulfillment of your desires.",
            chapter: 3,
            verseNumber: "3.10"
        ),
        
        WisdomQuote(
            text: "The person whose mind is always free from attachment, who has subdued the mind and senses, and who is free from desires, attains the supreme perfection of freedom from action.",
            chapter: 18,
            verseNumber: "18.49"
        ),
        
        WisdomQuote(
            text: "Those who are wise lament neither for the living nor for the dead.",
            chapter: 2,
            verseNumber: "2.11"
        ),
        
        WisdomQuote(
            text: "The peace of God is with them whose mind and soul are in harmony, who are free from desire and wrath, who know their own soul.",
            chapter: 5,
            verseNumber: "5.23"
        ),
        
        WisdomQuote(
            text: "Set your heart upon your work, but never on its reward.",
            chapter: 2,
            verseNumber: "2.47"
        ),
        
        WisdomQuote(
            text: "A person can rise through the efforts of their own mind; or draw themselves down, in the same manner.",
            chapter: 6,
            verseNumber: "6.5"
        ),
        
        WisdomQuote(
            text: "Those who eat food offered first in sacrifice become free from all sinful reactions, but those who prepare food for personal sense enjoyment eat only sin.",
            chapter: 3,
            verseNumber: "3.13"
        ),
        
        WisdomQuote(
            text: "The divine qualities lead to liberation, while the demoniac qualities lead to bondage.",
            chapter: 16,
            verseNumber: "16.5"
        ),
        
        WisdomQuote(
            text: "One who is satisfied with gain which comes of its own accord, who is free from duality and does not envy, who is steady in both success and failure, is never entangled.",
            chapter: 4,
            verseNumber: "4.22"
        ),
        
        WisdomQuote(
            text: "Those who are beyond the dualities that arise from doubts, whose minds are engaged within, who are always busy working for the welfare of all living beings, and who are free from all sins achieve liberation.",
            chapter: 5,
            verseNumber: "5.25"
        ),
        
        WisdomQuote(
            text: "Fearlessness, purification of one's existence, cultivation of spiritual knowledge, charity, self-control, performance of sacrifice, study of scriptures, austerity, simplicity - these are the transcendental qualities.",
            chapter: 16,
            verseNumber: "16.1"
        ),
        
        WisdomQuote(
            text: "The contact between the senses and the sense objects gives rise to happiness and distress. These are not permanent; they come and go like the winter and summer seasons.",
            chapter: 2,
            verseNumber: "2.14"
        ),
        
        WisdomQuote(
            text: "All that we are is the result of what we have thought. The mind is everything. What we think, we become.",
            source: "Ancient Wisdom"
        ),
        
        WisdomQuote(
            text: "In the midst of winter, I found there was, within me, an invincible summer.",
            source: "Timeless Wisdom"
        ),
        
        WisdomQuote(
            text: "Those who control their anger have conquered their greatest enemy.",
            source: "Spiritual Teachings"
        ),
        
        WisdomQuote(
            text: "The journey of a thousand miles begins with one step.",
            source: "Ancient Wisdom"
        ),
        
        WisdomQuote(
            text: "When we show our respect for other living things, they respond with respect for us.",
            source: "Universal Truth"
        ),
        
        WisdomQuote(
            text: "The best way to find yourself is to lose yourself in the service of others.",
            source: "Spiritual Wisdom"
        ),
        
        WisdomQuote(
            text: "Peace comes from within. Do not seek it without.",
            source: "Inner Wisdom"
        ),
        
        WisdomQuote(
            text: "What lies behind us and what lies before us are tiny matters compared to what lies within us.",
            source: "Inspirational Wisdom"
        ),
        
        WisdomQuote(
            text: "The only way to make sense out of change is to plunge into it, move with it, and join the dance.",
            source: "Life Wisdom"
        ),
        
        WisdomQuote(
            text: "Your task is not to seek for love, but merely to seek and find all the barriers within yourself that you have built against it.",
            source: "Spiritual Teaching"
        ),
        
        WisdomQuote(
            text: "The wise find pleasure in water; men of talent find pleasure in mountains. The wise are active; the talented are tranquil. The wise are joyful; the talented are long-lived.",
            source: "Ancient Philosophy"
        ),
        
        WisdomQuote(
            text: "Be yourself; everyone else is already taken.",
            source: "Life Wisdom"
        )
        
    ]
}
