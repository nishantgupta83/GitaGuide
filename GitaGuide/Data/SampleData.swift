//
//  SampleData.swift
//  GitaGuide
//
//  Created by Developer on 6/23/2025.
//

import Foundation

struct SampleData {
    static let allScenarios: [LifeScenario] = [
        // Chapter 1 Scenarios - The Core Dilemmas
        LifeScenario(
            title: "Credit Thief at Work",
            description: "A colleague presented your project ideas as their own in the team meeting. Your manager praised them for your work. Do you speak up?",
            category: .work,
            chapter: 1,
            heartResponse: "Stay quiet to avoid confrontation and maintain team harmony",
            dutyResponse: "Speak the truth and claim rightful recognition for your work",
            gitaWisdom: "Like Arjuna seeing injustice on the battlefield, you face the eternal conflict between comfort and righteousness. The Gita teaches that truth (Satya) is fundamental to dharma. When we remain silent in the face of injustice, we become complicit in it.",
            actionSteps: [
                "Document your contributions with concrete evidence",
                "Approach your colleague privately first for direct conversation",
                "If unresolved, present facts to your manager professionally",
                "Focus on establishing truth, not seeking revenge",
                "Use this as learning to protect your work in future"
            ],
            verse: "When dharma is at stake, righteous action must overcome attachment to comfort and false peace.",
            verseNumber: "Chapter 1, Verse 28-29",
            stickFigureScene: "work_credit_dilemma",
            tags: ["workplace", "recognition", "truth", "justice", "speaking up"]
        ),
        
        LifeScenario(
            title: "Family Business vs Dreams",
            description: "Your family has built a successful business over generations and expects you to join. But your heart calls you toward becoming an artist. Both paths have merit.",
            category: .personal,
            chapter: 1,
            heartResponse: "Follow your artistic passion and creative calling",
            dutyResponse: "Honor family legacy and traditional expectations",
            gitaWisdom: "Arjuna questioned his duty as a warrior when his heart resisted. The Gita reveals that true dharma (svadharma) aligns with your authentic nature while honoring your responsibilities. The key is finding synthesis, not choosing between extremes.",
            actionSteps: [
                "Have an honest, respectful conversation with your family",
                "Propose a trial period to pursue your artistic goals",
                "Explore ways to contribute to the family business through your artistic skills",
                "Seek mentorship from others who've navigated similar paths",
                "Create a plan that honors both your calling and your family bonds"
            ],
            verse: "Better is one's own dharma, though imperfectly performed, than the dharma of another well performed.",
            verseNumber: "Chapter 3, Verse 35",
            stickFigureScene: "family_vs_dreams",
            tags: ["family expectations", "career choice", "authenticity", "tradition", "passion"]
        ),
        
        LifeScenario(
            title: "Toxic Friend's Wedding",
            description: "Your childhood friend is getting married, but they've become increasingly toxic and harmful to your mental health. They expect you to be in the wedding party.",
            category: .relationships,
            chapter: 1,
            heartResponse: "Decline to protect your wellbeing and mental health",
            dutyResponse: "Attend out of loyalty to your long history together",
            gitaWisdom: "Arjuna's dilemma included facing those he once loved who had become obstacles to righteousness. The Gita teaches that sometimes love means creating healthy boundaries. True friendship supports growth, not destruction.",
            actionSteps: [
                "Reflect on whether this relationship can be healed or must be limited",
                "Communicate your boundaries clearly and compassionately",
                "Offer an alternative way to honor the friendship if you cannot participate fully",
                "Seek support from other trusted friends or counselors",
                "Choose the path that preserves your integrity and wellbeing"
            ],
            verse: "One must sometimes withdraw from relationships that impede spiritual and mental growth.",
            verseNumber: "Chapter 1, Verse 31",
            stickFigureScene: "toxic_friend_wedding",
            tags: ["friendship", "boundaries", "mental health", "loyalty", "self-care"]
        ),
        
        LifeScenario(
            title: "Whistleblowing Dilemma",
            description: "You discovered your company is cutting safety corners that could harm customers. Speaking up might cost you your job, but staying silent feels wrong.",
            category: .ethics,
            chapter: 1,
            heartResponse: "Stay quiet to protect your job security and family's income",
            dutyResponse: "Report the safety issues to protect potential victims",
            gitaWisdom: "This mirrors Arjuna's dilemma perfectly - personal welfare versus greater good. The Gita emphasizes that dharma sometimes requires personal sacrifice for the welfare of others. When we have knowledge of harm and do nothing, we share responsibility.",
            actionSteps: [
                "Document everything carefully and securely",
                "Consult with employment lawyers about whistleblower protections",
                "Consider internal reporting channels first",
                "Prepare for potential consequences with financial planning",
                "Remember that protecting others is the highest form of service"
            ],
            verse: "When you have the power to prevent harm and do nothing, you become part of the harm.",
            verseNumber: "Chapter 1, Verse 36",
            stickFigureScene: "whistleblowing_dilemma",
            tags: ["ethics", "whistleblowing", "safety", "moral courage", "responsibility"]
        ),
        
        LifeScenario(
            title: "Elderly Parent Care",
            description: "Your aging parent needs increasing care, but providing it would mean sacrificing your career advancement and your children's college funds.",
            category: .personal,
            chapter: 1,
            heartResponse: "Prioritize your children's future and career growth",
            dutyResponse: "Care for your parent who sacrificed for you",
            gitaWisdom: "The Gita addresses competing duties within family relationships. Sometimes dharma requires finding creative solutions that honor multiple responsibilities rather than abandoning one for another.",
            actionSteps: [
                "Explore all available resources and support systems",
                "Discuss options openly with family members",
                "Research assisted living and care services",
                "Consider sharing responsibilities among siblings",
                "Look for solutions that honor all your commitments"
            ],
            verse: "In dharma, we must seek solutions that honor all sacred relationships when possible.",
            verseNumber: "Chapter 1, Verse 40",
            stickFigureScene: "parent_care_dilemma",
            tags: ["family duty", "elder care", "sacrifice", "competing priorities", "responsibility"]
        ),
        
        LifeScenario(
            title: "Relationship Betrayal",
            description: "You discovered your best friend is having an affair, and their spouse (who you also care about) is completely unaware. Both are dear to you.",
            category: .relationships,
            chapter: 1,
            heartResponse: "Stay out of it to preserve both friendships",
            dutyResponse: "Tell the betrayed spouse because they deserve to know",
            gitaWisdom: "Arjuna faced the pain of confronting loved ones who were acting against dharma. Sometimes love requires difficult conversations. Truth and loyalty can conflict, but integrity demands we choose the path that serves the highest good.",
            actionSteps: [
                "Give your friend an opportunity to come clean first",
                "Set a clear timeline for them to tell their spouse",
                "Consider the consequences of both action and inaction",
                "Prepare to accept that relationships may change",
                "Choose the path that you can live with long-term"
            ],
            verse: "Truth may be temporarily painful, but deception causes deeper, lasting harm.",
            verseNumber: "Chapter 1, Verse 32",
            stickFigureScene: "betrayal_dilemma",
            tags: ["betrayal", "loyalty", "truth", "friendship", "difficult choices"]
        ),
        
        LifeScenario(
            title: "Team Leadership Conflict",
            description: "You've been promoted to lead a team that includes a close friend who was also up for the position. They're now resentful and undermining team goals.",
            category: .relationships ,
            chapter: 1,
            heartResponse: "Go easy on your friend and hope the situation improves",
            dutyResponse: "Address the behavior professionally regardless of personal history",
            gitaWisdom: "Leadership often requires making decisions that strain personal relationships. Arjuna had to accept that his role as a warrior meant confronting even those he loved. True friendship sometimes requires difficult conversations.",
            actionSteps: [
                "Separate personal friendship from professional responsibility",
                "Have a direct, honest conversation about expectations",
                "Document behavioral issues professionally",
                "Offer support for their career development in other areas",
                "Be prepared to make tough decisions for team welfare"
            ],
            verse: "In leadership, personal attachment must not compromise duty to those you serve.",
            verseNumber: "Chapter 1, Verse 35",
            stickFigureScene: "leadership_friend_conflict",
            tags: ["leadership", "friendship", "authority", "professional duty", "team management"]
        ),
        
        LifeScenario(
            title: "Social Media Truth",
            description: "A viral post is spreading misinformation that could harm people's health decisions. Correcting it might make you a target of online harassment.",
            category: .ethics,
            chapter: 1,
            heartResponse: "Stay silent to avoid becoming a target of online attacks",
            dutyResponse: "Share accurate information to protect public health",
            gitaWisdom: "In our digital age, we face new battlefields where truth must be defended. Like Arjuna's reluctance to fight, we may resist standing up for truth when it brings personal cost. But dharma calls us to action when others' welfare is at stake.",
            actionSteps: [
                "Verify your information with reliable sources",
                "Share corrections respectfully with evidence",
                "Prepare mentally for potential backlash",
                "Focus on serving truth rather than winning arguments",
                "Block or limit engagement with bad-faith actors"
            ],
            verse: "When falsehood threatens to harm others, silence becomes complicity.",
            verseNumber: "Chapter 1, Verse 39",
            stickFigureScene: "social_media_truth",
            tags: ["misinformation", "social media", "public health", "truth", "online harassment"]
        ),
        
        LifeScenario(
            title: "Inherited Wealth Dilemma",
            description: "You've inherited significant wealth from a relative whose business practices you morally oppose. Keeping it benefits your family, but feels like endorsing their methods.",
            category: .ethics,
            chapter: 1,
            heartResponse: "Keep the inheritance for your family's security and future",
            dutyResponse: "Donate it or refuse it to maintain moral integrity",
            gitaWisdom: "The Gita often addresses how to handle the fruits of actions we didn't choose. Sometimes we inherit the consequences of others' karma. The question becomes: how do we transform inherited burdens into opportunities for righteous action?",
            actionSteps: [
                "Research the specific business practices and their impacts",
                "Consider using the wealth to counteract any harm done",
                "Explore donating to causes that oppose the harmful practices",
                "Use the inheritance to fund ethical ventures",
                "Transform the legacy through righteous action rather than rejection"
            ],
            verse: "We can transform inherited karma through righteous action and conscious choice.",
            verseNumber: "Chapter 1, Verse 41",
            stickFigureScene: "inherited_wealth",
            tags: ["inheritance", "moral conflict", "family legacy", "wealth", "ethical responsibility"]
        ),
        
        LifeScenario(
            title: "Academic Integrity Test",
            description: "During an important exam, you notice a friend cheating. Reporting them might ruin their scholarship and future, but saying nothing undermines fairness for everyone.",
            category: .ethics,
            chapter: 1,
            heartResponse: "Protect your friend's future by staying silent",
            dutyResponse: "Report the cheating to maintain academic integrity",
            gitaWisdom: "This echoes Arjuna's dilemma of duty versus personal attachment. Academic integrity serves the greater good of fair evaluation and honest achievement. Protecting one person's dishonesty ultimately harms the system that serves everyone.",
            actionSteps: [
                "Consider approaching your friend directly first",
                "Give them a chance to self-report or withdraw",
                "Understand that true friendship sometimes requires difficult choices",
                "Report to appropriate authorities if direct approach fails",
                "Focus on protecting the integrity of the system"
            ],
            verse: "Protecting dishonesty, even from friendship, ultimately serves no one's highest good.",
            verseNumber: "Chapter 1, Verse 37",
            stickFigureScene: "academic_cheating",
            tags: ["academic integrity", "friendship", "fairness", "honesty", "difficult choices"]
        )
    ]
}
