//
//  ComprehensiveScenarios-review.swift
//  GitaGuide
//
//  Created by Nishant Gupta on 6/30/25.
//
/*
import Foundation
import SwiftUI


struct ComprehensiveScenarioData {
    static let allScenarios: [LifeScenario] = [
        // CHAPTER 1: ARJUNA’S DILEMMA (3 scenarios)
        LifeScenario(title: "Family Business vs Dreams",
            description: "Your family expects you to join their successful business, but your heart calls you toward becoming an artist.",
            category: .relationships,
            chapter: 1,
            heartResponse: "Follow your artistic passion and creative calling",
            dutyResponse: "Honor family legacy and traditional expectations",
            gitaWisdom: "Arjuna questioned his duty as a warrior. The Gita reveals that true dharma aligns with your authentic nature while honoring responsibilities.",
            actionSteps: [
                "Have honest conversation with your family about your aspirations",
                "Propose a trial period to pursue your artistic goals",
                "Explore a synthesis of both paths or a compromise solution",
                "Seek mentorship from someone who successfully balanced similar conflicts"
            ],
            verse: "Better is one's own dharma, though imperfectly performed, than the dharma of another well performed.",
            verseNumber: "Chapter 3, Verse 35",
            stickFigureScene: "family_vs_dreams",
            tags: ["family expectations", "career choice", "authenticity"]
        ),

        // Scenario 2
        LifeScenario(title: "Witnessing Ethical Violations at Work",
            description: "You've discovered your supervisor is falsifying financial reports to boost company performance metrics. Reporting this could jeopardize your job, but remaining silent makes you complicit in fraud.",
            category: .work,
            chapter: 1,
            heartResponse: "Stay silent to protect your career and financial security",
            dutyResponse: "Report the wrongdoing despite personal risk and potential consequences",
            gitaWisdom: "Chapter 1 presents Arjuna's moral dilemma on the battlefield. Similarly, we face situations where personal comfort conflicts with righteousness. Krishna teaches that when dharma (righteousness) is at stake, we must choose truth over personal gain or fear.",
            actionSteps: [
                "Document clear evidence of the wrongdoing",
                "Explore proper internal channels or whistleblower policies to report it",
                "Seek advice from a trusted mentor about how to proceed",
                "Prepare for consequences, trusting that upholding truth is paramount"
            ],
            verse: "When righteousness declines and unrighteousness increases, I manifest Myself to reestablish dharma.",
            verseNumber: "Chapter 4, Verse 7",
            stickFigureScene: "workplace_ethics_dilemma",
            tags: ["ethics", "workplace", "truth", "moral courage", "integrity"]
        ),

        // Scenario 3
        LifeScenario(title: "Standing Up to Workplace Bullying",
            description: "A colleague consistently undermines your ideas, takes credit for your work, and makes subtle personal attacks. You want to keep peace, but their behavior is hurting your performance and confidence. You're torn between confronting them and avoiding conflict.",
            category: .mentalHealth,
            chapter: 1,
            heartResponse: "Avoid confrontation to maintain workplace harmony and relationships",
            dutyResponse: "Stand up for yourself by addressing the behavior professionally and constructively",
            gitaWisdom: "Chapter 1 highlights Arjuna's hesitation to engage in conflict. Krishna teaches that sometimes true harmony requires confronting injustice directly, and that avoiding necessary conflict only allows wrongdoing to continue.",
            actionSteps: [
                "Document instances of the undermining behavior objectively and consistently",
                "Speak with the colleague privately, giving specific examples and a chance to respond",
                "If it continues, involve a manager or HR while remaining factual and calm",
                "Maintain professionalism and firm personal boundaries through the process"
            ],
            verse: "O Arjuna, it is not befitting you. Give up this petty weakness of heart and arise, O chastiser of the enemy.",
            verseNumber: "Chapter 2, Verse 3",
            stickFigureScene: "workplace_assertiveness_balance",
            tags: ["assertiveness", "workplace bullying", "boundaries", "professionalism", "justice"]
        ),

        // CHAPTER 2: KNOWLEDGE AND DETACHMENT (25 scenarios)
        LifeScenario(title: "Credit Thief at Work",
            description: "A colleague presented your project ideas as their own during a team meeting. Your manager praised them, unaware of your original contributions.",
            category: .work,
            chapter: 2,
            heartResponse: "Stay silent to avoid confrontation and preserve office harmony",
            dutyResponse: "Act with dignity and claim rightful credit through calm, truthful action",
            gitaWisdom: "Krishna advises Arjuna in Chapter 2 to rise above paralyzing emotions and uphold his svadharma (personal duty). When truth and justice are at stake, remaining silent becomes inaction. Perform your duty without ego, attachment, or anger.",
            actionSteps: [
                "Document your contributions and any evidence that the ideas were yours",
                "Privately and respectfully discuss the situation with the colleague first",
                "If unresolved, bring the matter to your manager with factual clarity (focus on the work, not personal attacks)",
                "Stay composed and seek a resolution that upholds truth, not merely personal victory"
            ],
            verse: "\"Considering your specific duty as a warrior, you should know that there is no better engagement for you than fighting on religious principles.\"",
            verseNumber: "Chapter 2, Verse 31",
            stickFigureScene: "work_credit_dilemma",
            tags: ["workplace", "dharma", "truth", "justice", "ego", "karma yoga"]
        ),

        // Scenario 5
        LifeScenario(title: "Social Media Comparison Trap",
            description: "Constantly comparing your life to others' highlight reels on social media is harming your self-worth and peace of mind.",
            category: .personal,
            chapter: 2,
            heartResponse: "Continue scrolling and try to outdo others’ apparent success",
            dutyResponse: "Detach from external validation and focus on your own growth and journey",
            gitaWisdom: "Chapter 2 teaches about the eternal soul versus temporary appearances. Social media presents surface-level illusions, not the deeper reality of people's lives. Chasing those illusions causes attachment and suffering.",
            actionSteps: [
                "Limit social media usage and be mindful when you do engage",
                "Practice gratitude daily for what you have and who you are",
                "Remind yourself that posts are curated highlights, not complete realities",
                "Redirect energy toward your personal goals and progress instead of comparisons"
            ],
            verse: "The soul is never born nor does it die; it is unborn, eternal, permanent, and primeval.",
            verseNumber: "Chapter 2, Verse 20",
            stickFigureScene: "social_media_wisdom",
            tags: ["social media", "comparison", "self-worth", "detachment"]
        ),

        // Scenario 6
        LifeScenario(title: "Working Without Attachment to Outcomes",
            description: "You've put tremendous effort into a project that means a lot to you. Despite your best work, factors beyond your control may determine the result, and you're overwhelmed with anxiety about how it will turn out.",
            category: .work,
            chapter: 2,
            heartResponse: "Worry obsessively about results and try to control every aspect of the outcome",
            dutyResponse: "Focus on giving excellent effort while surrendering attachment to the result",
            gitaWisdom: "Chapter 2 introduces the concept of *nishkama karma*—action without desire for the fruits. Krishna emphasizes we control our efforts, never the outcomes. True peace comes from performing your duty as best as you can, while surrendering the results to the divine.",
            actionSteps: [
                "Redirect focus to the quality of your work in the present moment, rather than future results",
                "Identify what factors are within your control and consciously release worry about what is not",
                "Offer the outcomes mentally to a higher purpose or the greater good, rather than personal gain",
                "Remind yourself that doing your best is success in itself, regardless of external outcome"
            ],
            verse: "You have a right to perform your prescribed duties, but you are not entitled to the fruits of your actions.",
            verseNumber: "Chapter 2, Verse 47",
            stickFigureScene: "nishkama_karma_practice",
            tags: ["Nishkama Karma", "detachment", "effort", "surrender", "anxiety"]
        ),

        // Scenario 7
        LifeScenario(title: "Taking Demanding Role to Support Family",
            description: "You're offered a promotion with much longer hours and travel. The role doesn’t align with your passions, but the higher salary would secure better opportunities for your children.",
            category: .work,
            chapter: 2,
            heartResponse: "Decline the promotion to preserve work-life balance and personal comfort",
            dutyResponse: "Accept the role as a service to your family, finding meaning in the sacrifice",
            gitaWisdom: "Chapter 2 teaches performing action without attachment to personal preferences. Krishna explains that work done as selfless service transforms ordinary labor into spiritual practice. By making career choices for loved ones’ welfare, your sacrifice becomes an act of devotion.",
            actionSteps: [
                "Reframe the new role as an opportunity to serve your family’s needs and future",
                "Identify aspects of the position that align with your strengths or values to stay motivated",
                "Set boundaries to protect some personal time and prevent burnout",
                "Remember that sacrificing for others’ true benefit, done with love, purifies the heart"
            ],
            verse: "You have a right to perform your prescribed duties, but you are not entitled to the fruits of your actions.",
            verseNumber: "Chapter 2, Verse 47",
            stickFigureScene: "career_sacrifice_family",
            tags: ["career sacrifice", "family welfare", "work-life balance", "service", "detachment"]
        ),

        // Scenario 8
        LifeScenario(title: "Spending Priorities Creating Marriage Tension",
            description: "You want to save aggressively for your children’s education and the future, while your spouse believes in enjoying life now through travel and experiences. Financial disagreements are straining your marriage—each of you feels the other doesn’t value what’s important.",
            category: .mentalHealth,
            chapter: 2,
            heartResponse: "Take full control of the finances to ensure your family’s security",
            dutyResponse: "Work with your spouse to find a balance honoring both security and enjoying life, while preserving your partnership",
            gitaWisdom: "Chapter 2 encourages finding equilibrium and not clinging to extreme positions. Krishna emphasizes that true wisdom is a balanced approach considering both present enjoyment and future needs, rather than all-or-nothing thinking.",
            actionSteps: [
                "Discuss the deeper values and fears behind each other’s financial preferences",
                "Create a budget that allocates some resources to savings and some to shared enjoyable activities",
                "Speak openly about money goals and anxieties without blaming or judgment",
                "Make financial decisions together as a team, instead of unilateral moves, so both feel heard and respected"
            ],
            verse: "Treating alike pleasure and pain, gain and loss, victory and defeat, engage in battle for the sake of duty.",
            verseNumber: "Chapter 2, Verse 38",
            stickFigureScene: "marital_financial_conflict",
            tags: ["marriage", "finances", "priorities", "balance", "partnership"]
        ),

        // Scenario 9
        LifeScenario(title: "Friend Group Competition Creating Tension",
            description: "Your friend group has become subtly competitive about careers, relationships, and lifestyle achievements. What used to be supportive friendships now feel like contests of one-upmanship, bragging, and constant comparisons of success.",
            category: .relationships,
            chapter: 2,
            heartResponse: "Join the competition to maintain your status and not be left behind",
            dutyResponse: "Model a non-competitive attitude and encourage mutual support among friends",
            gitaWisdom: "Chapter 2 teaches performing action without attachment to results or comparison with others. Krishna shows that true friendship rejoices in each person’s unique journey rather than competing for superiority. Letting go of the ego’s need to win preserves genuine camaraderie.",
            actionSteps: [
                "Refuse to engage in conversations that center on comparisons or status",
                "Celebrate your friends’ achievements sincerely, without measuring against your own",
                "Share your own news modestly and focus on the experience, not on impressing others",
                "Gently steer group conversations toward encouragement and supporting each other’s goals"
            ],
            verse: "You have a right to perform your prescribed action, but not to the fruits of action.",
            verseNumber: "Chapter 2, Verse 47",
            stickFigureScene: "friend_competition_transcendence",
            tags: ["competition", "friendship", "comparison", "support", "humility"]
        ),

        // Scenario 10
        LifeScenario(title: "Harsh Feedback from Boss Triggering Defensiveness",
            description: "Your manager gave you very critical feedback about your performance in front of your team. Some points may be valid, but the public and harsh delivery left you feeling humiliated. You’re struggling with anger and the urge to lash out or seek payback.",
            category: .mentalHealth,
            chapter: 2,
            heartResponse: "Defend yourself aggressively and make it clear they can’t treat you like that",
            dutyResponse: "Receive the feedback with equanimity and address the delivery privately and professionally",
            gitaWisdom: "Chapter 2 emphasizes maintaining emotional equilibrium amid praise and criticism. Krishna explains that anger clouds judgment and destroys our ability to respond wisely. By remaining composed, you can extract any truth in the feedback without being consumed by the manner it was given.",
            actionSteps: [
                "Separate the useful feedback from the inappropriate way it was delivered",
                "Take time to process your emotional reaction in private before responding",
                "Discuss the feedback and how it was delivered with your boss one-on-one, focusing on solutions and respect",
                "Use this as practice in anger management and resilience, improving how you handle tough situations"
            ],
            verse: "One who is not disturbed by the incessant flow of desires can alone achieve peace.",
            verseNumber: "Chapter 2, Verse 70",
            stickFigureScene: "criticism_without_anger",
            tags: ["criticism", "anger management", "workplace", "emotional control", "feedback"]
        ),

        // Scenario 11
        LifeScenario(title: "Inheritance Dispute Dividing Family",
            description: "After your father’s death, you and your siblings are fighting over how to distribute his property. What began as different interpretations of his wishes has escalated into bitter accusations about who sacrificed more for the family. The conflict is harming your children and tearing apart family relationships.",
            category: .mentalHealth,
            chapter: 2,
            heartResponse: "Fight relentlessly for what you believe is rightfully yours, regardless of family fallout",
            dutyResponse: "Seek a fair resolution that preserves family unity and sets a good example for the next generation",
            gitaWisdom: "Chapter 2 reminds us that material possessions are temporary, whereas relationships and harmony have lasting value. Krishna emphasizes that attachment to worldly gains breeds misery and can destroy what truly matters. Detachment and perspective are key in such conflicts.",
            actionSteps: [
                "Step back from the emotional tug-of-war and ground yourself in principles of fairness and dharma",
                "Propose bringing in a neutral third-party mediator to ensure an unbiased resolution",
                "Remind everyone (and yourself) that family harmony will outlast any property or money",
                "Demonstrate dignity and compassion during discussions, knowing the younger generation is observing how you handle this dispute"
            ],
            verse: "The soul is never born nor does it die; it is unborn, eternal, permanent, and primeval.",
            verseNumber: "Chapter 2, Verse 20",
            stickFigureScene: "sibling_inheritance_dispute",
            tags: ["siblings", "inheritance", "family conflict", "materialism", "fairness"]
        ),

        // Scenario 12
        LifeScenario(title: "Rebuilding Trust After Friend’s Betrayal",
            description: "Your closest friend shared personal secrets you confided in them, and the information got to people who could hurt your reputation. When confronted, the friend apologized but also tried to justify their actions. You feel deeply hurt and unsure whether to forgive and rebuild the friendship or cut ties permanently.",
            category: .relationships,
            chapter: 2,
            heartResponse: "End the friendship immediately to protect yourself from any future betrayal",
            dutyResponse: "Practice forgiveness and work on rebuilding trust gradually, with healthy boundaries",
            gitaWisdom: "Chapter 2 acknowledges the impermanence of emotional pain and the need to see beyond immediate hurt to the bigger picture. Krishna teaches that forgiveness is a spiritual virtue that frees us from the burden of resentment. By forgiving, you help both yourself and your friend grow, even if trust must be re-established over time.",
            actionSteps: [
                "Give yourself time to fully feel and process the hurt before making any decisions",
                "Communicate clearly to your friend about how their actions impacted you",
                "Set new boundaries and expectations if you decide to continue the friendship, and ensure they understand them",
                "Approach forgiveness as a process—letting go of resentment for your own peace, whether or not the friendship fully returns to its old state"
            ],
            verse: "For the soul there is neither birth nor death nor having once existed does it ever cease to be.",
            verseNumber: "Chapter 2, Verse 20",
            stickFigureScene: "friendship_betrayal_forgiveness",
            tags: ["betrayal", "forgiveness", "friendship", "trust", "boundaries"]
        ),

        // Scenario 13
        LifeScenario(title: "Job Rejection After Dream Interview",
            description: "You didn’t get your dream job after several rounds of interviews. The rejection has left you devastated and questioning your self-worth.",
            category: .work,
            chapter: 2,
            heartResponse: "Take it as a personal failure and spiral into self-doubt and depression",
            dutyResponse: "Accept the outcome with equanimity, learn from the experience, and continue your efforts",
            gitaWisdom: "The Gita urges us to perform our duty without attachment to results. Your value isn’t defined by an external outcome like a job offer, but by the sincerity of your efforts. Every experience, even rejection, can be a teacher rather than a verdict on your worth.",
            actionSteps: [
                "Allow yourself to feel disappointment, but avoid identifying entirely with it",
                "Reflect on any feedback or lessons from the interview process to improve for next time",
                "Continue pursuing opportunities with the same dedication and faith, knowing this wasn’t your only chance",
                "Trust that the right role will come in time, and keep your confidence by remembering past achievements and strengths"
            ],
            verse: "You have a right to perform your prescribed action, but not to the fruits of action.",
            verseNumber: "Chapter 2, Verse 47",
            stickFigureScene: "job_rejection_wisdom",
            tags: ["rejection", "career", "detachment", "perseverance"]
        ),

        // Scenario 14
        LifeScenario(title: "Navigating Long-Distance Relationship Challenges",
            description: "Your partner moved abroad for a career opportunity that will last several years. The time difference, infrequent communication, and growing apart are straining the relationship. Friends suggest you should just move on, but your heart still feels deeply connected. You wonder if love can survive such distance and uncertainty.",
            category: .personal,
            chapter: 2,
            heartResponse: "End the relationship now to avoid prolonged pain and uncertainty",
            dutyResponse: "Stay committed and work through the challenges with patience, creativity, and faith",
            gitaWisdom: "Chapter 2 distinguishes the eternal from the temporary. True love is connected to the soul and can transcend physical distance and circumstances. It’s attachment to immediate comfort that causes suffering. By focusing on the enduring spiritual connection, you can find strength to persevere.",
            actionSteps: [
                "Communicate openly and honestly about fears, hopes, and expectations with your partner",
                "Establish meaningful routines or rituals (like regular video calls or shared activities) to maintain connection despite distance",
                "Use the time apart for personal growth, which can enrich the relationship",
                "Practice letting go of rigid expectations of how things ‘should’ be, while maintaining love and faith in the relationship"
            ],
            verse: "For that which is real never ceases to be; that which is unreal never comes into being.",
            verseNumber: "Chapter 2, Verse 16",
            stickFigureScene: "long_distance_love",
            tags: ["long distance", "commitment", "love", "patience", "faith"]
        ),

        // Scenario 15
        LifeScenario(title: "Parents’ Bitter Divorce Dividing Family",
            description: "Your parents are going through a contentious divorce after 25 years of marriage. They each pressure you and your siblings to take sides and share bitter complaints about each other. Family gatherings are impossible, and you feel responsible for maintaining relationships with both parents while shielding your own children from the ugliness.",
            category: .relationships,
            chapter: 2,
            heartResponse: "Align completely with the parent you feel was wronged and cut off the other",
            dutyResponse: "Remain loving to both parents while setting healthy boundaries to avoid being caught in the middle",
            gitaWisdom: "Chapter 2 prepares us for life’s inevitable changes and losses. Krishna emphasizes that relationships can transform or even end, but love itself is eternal. The challenge is to respond with wisdom rather than emotional reactivity. By staying centered in compassion and detachment, you can support both parents through this change without losing yourself in their conflict.",
            actionSteps: [
                "Practice emotional detachment when listening to each parent’s grievances—don’t internalize their anger",
                "Refuse to carry negative messages or fuel the feud; encourage them to communicate directly or through mediators",
                "Focus on maintaining stability and peace within your own immediate family during the turmoil",
                "Seek support (counseling, support groups) to process your own feelings of grief and stress so you can stay balanced"
            ],
            verse: "For that which is real never ceases to be; that which is unreal never comes into being.",
            verseNumber: "Chapter 2, Verse 16",
            stickFigureScene: "family_divorce_navigation",
            tags: ["divorce", "family separation", "boundaries", "emotional healing"]
        ),

        // Scenario 16
        LifeScenario(title: "Quarterly Pressure vs Team Development",
            description: "You’re under intense pressure to meet aggressive quarterly targets at work, but you know your team desperately needs training and development to succeed in the long run. Investing time now in their growth might hurt short-term results, but neglecting it could harm future performance and morale.",
            category: .work,
            chapter: 2,
            heartResponse: "Focus only on hitting this quarter’s numbers and worry about team development later",
            dutyResponse: "Find creative ways to balance immediate results with long-term team growth",
            gitaWisdom: "Chapter 2 teaches the importance of seeing both the immediate and the eternal perspective. Krishna helps Arjuna understand that wise action considers not just short-term gains but long-term well-being. In practice, a leader must sometimes sacrifice instant gratification to fulfill a higher duty to their team’s future.",
            actionSteps: [
                "Identify on-the-job development opportunities that can be integrated into current projects so learning and delivery happen together",
                "Communicate with upper management about the importance of sustainable performance and what you’re doing to ensure it",
                "Create a plan that addresses both quick wins and skill-building, showing that team growth will drive future results",
                "Define success using both short-term metrics and long-term improvements (so development work is seen as valuable progress, not a distraction)"
            ],
            verse: "For that which is real never ceases to be; that which is unreal never comes into being.",
            verseNumber: "Chapter 2, Verse 16",
            stickFigureScene: "short_long_term_balance",
            tags: ["strategic thinking", "development", "sustainability", "balance", "planning"]
        ),

        // Scenario 17
        LifeScenario(title: "Implementing Mandatory Weekend Work",
            description: "Your project is behind schedule due to last-minute client changes. Meeting the deadline now requires asking your team to work weekends. You know this will be very unpopular and hurt work-life balance, but failing to deliver could cost your company a major client and even result in layoffs.",
            category: .work,
            chapter: 2,
            heartResponse: "Avoid making the hard decision to force overtime, hoping to dodge the team’s anger",
            dutyResponse: "Make the tough call for weekend work, taking responsibility and doing your best to support the team through it",
            gitaWisdom: "Chapter 2 underscores doing one’s duty without attachment to personal comfort or popularity. Krishna shows Arjuna that a leader must sometimes take difficult actions based on dharma rather than what feels good. Standing firm for the greater good, even at personal cost, is part of righteous leadership.",
            actionSteps: [
                "Explain openly to the team why the extra work is necessary, outlining the stakes and acknowledging the burden",
                "Take full responsibility for the decision instead of blaming upper management or clients, earning team respect for your honesty",
                "Provide as much support as possible—like catering meals or comp time later—to show you value their sacrifice",
                "Frame the sacrifice in terms of a larger purpose (saving the client relationship, protecting jobs) so the team finds meaning in the extra effort"
            ],
            verse: "Treating alike pleasure and pain, gain and loss, victory and defeat, engage in battle for the sake of duty.",
            verseNumber: "Chapter 2, Verse 38",
            stickFigureScene: "unpopular_decisions",
            tags: ["difficult decisions", "responsibility", "team management", "duty", "leadership courage"]
        ),

        // Scenario 18
        LifeScenario(title: "Family Dinner Political Debate Getting Hostile",
            description: "What started as a casual discussion about current events has blown up into a heated political argument at a family dinner. Voices are raised, personal attacks are flying, and relatives are taking sides. You feel your own anger rising and are torn between exploding to make your point or just walking away to escape the conflict.",
            category: .mentalHealth,
            chapter: 2,
            heartResponse: "Let your anger loose and argue aggressively so your viewpoint isn’t drowned out",
            dutyResponse: "Maintain your composure and try to steer the conversation back toward respect and understanding",
            gitaWisdom: "Chapter 2 outlines how unchecked anger leads to clouded judgment and broken relationships. Krishna teaches that remaining calm amidst provocation is essential for wise action. By controlling your anger, you can preserve family bonds and elevate the discussion instead of degrading it.",
            actionSteps: [
                "Pause and take deep breaths when you feel anger surging, giving yourself a moment before responding",
                "Listen actively and acknowledge others’ points to reduce the feeling of being on opposing teams",
                "Gently remind everyone of shared values or common ground to refocus the conversation",
                "If tempers remain high, suggest taking a break or changing the topic, modeling that relationships matter more than ‘winning’ the argument"
            ],
            verse: "Anger leads to clouding of judgment, which results in bewilderment of memory.",
            verseNumber: "Chapter 2, Verse 63",
            stickFigureScene: "heated_discussion_control",
            tags: ["anger management", "family discussions", "emotional control", "dialogue", "peace"]
        ),

        // Scenario 19
        LifeScenario(title: "Challenging Popular but Unjust Policy",
            description: "Your organization implemented a policy that benefits the majority but unfairly harms a vulnerable minority group. Speaking up against it will be unpopular and might hurt your standing, yet staying silent feels morally wrong.",
            category: .work,
            chapter: 2,
            heartResponse: "Stay quiet to avoid conflict and protect your position and reputation",
            dutyResponse: "Advocate for justice despite the potential backlash or personal cost",
            gitaWisdom: "Chapter 2 urges action based on duty rather than attachment to outcomes. Krishna explains that righteous action must be taken regardless of whether it’s comfortable or popular. Standing up for *dharma* (righteousness) may mean opposing the majority’s view when it’s unjust, trusting that upholding truth is the higher principle.",
            actionSteps: [
                "Gather facts and specific examples of how the policy harms the minority group to build a solid case",
                "Raise your concern through the proper channels calmly and respectfully, focusing on principles and impacts rather than blaming individuals",
                "Propose constructive alternatives or compromises that could address the injustice",
                "Accept that doing the right thing might not be immediately rewarded, but know that your integrity is intact"
            ],
            verse: "Treating alike pleasure and pain, gain and loss, victory and defeat, engage in battle for the sake of duty.",
            verseNumber: "Chapter 2, Verse 38",
            stickFigureScene: "standing_for_justice",
            tags: ["justice", "moral courage", "unpopular stance", "advocacy", "righteousness"]
        ),

        // Scenario 20
        LifeScenario(title: "Major Project Failure Under Your Leadership",
            description: "A significant project you led failed to meet its objectives, resulting in financial losses and disappointed stakeholders. Your team is demoralized, and you’re facing criticism from upper management. You need to take responsibility while rebuilding your team’s confidence and learning from the mistakes.",
            category: .work,
            chapter: 2,
            heartResponse: "Protect yourself by blaming external factors or team members for the failure",
            dutyResponse: "Own up to the failure completely, using it as an opportunity to learn and help the team grow stronger",
            gitaWisdom: "Chapter 2 teaches equanimity in success and failure. Krishna explains that true leaders are not attached to outcomes but to the integrity of their effort. They view failures not as humiliations, but as chances for growth and wisdom. By responding without ego, you can transform a setback into a stepping stone.",
            actionSteps: [
                "Acknowledge the failure openly and take full responsibility without making excuses or shifting blame",
                "Analyze what went wrong objectively and share these insights with the team as lessons learned",
                "Highlight any positives—skills developed, effort invested, or small wins—that occurred during the project, to rebuild morale",
                "Use the insights to implement changes in planning or risk management for future projects, demonstrating that you’ve learned and will improve"
            ],
            verse: "Treating alike pleasure and pain, gain and loss, victory and defeat, engage in battle for the sake of duty.",
            verseNumber: "Chapter 2, Verse 38",
            stickFigureScene: "leadership_failure",
            tags: ["failure", "responsibility", "learning", "resilience", "accountability"]
        ),

        // Scenario 21
        LifeScenario(title: "Best Friend’s Romantic Betrayal",
            description: "You discover that your best friend has been secretly dating your ex-partner, whom you still have feelings for. They hid this relationship for months. You feel a deep sense of betrayal from the person you trusted the most.",
            category: .relationships,
            chapter: 2,
            heartResponse: "Cut them both out of your life and perhaps seek ways to get back at them",
            dutyResponse: "Process the pain and eventually work toward forgiveness and understanding of their perspective",
            gitaWisdom: "Chapter 2 reminds us that intense emotions, however painful, are impermanent. Krishna’s wisdom encourages looking beyond immediate emotional reactions. Betrayal often reflects the other person’s confusion rather than our unworthiness. By responding with forgiveness (in time) and understanding, we uphold our own peace and dignity.",
            actionSteps: [
                "Allow yourself to fully feel the hurt and anger without rushing to forgive—acknowledge your emotions",
                "Recognize that their actions reflect their own choices and flaws, not your value as a person",
                "Seek support from other close friends or a counselor to help process your feelings constructively",
                "When ready, have an honest conversation with your friend (and ex) about how their actions affected you, and set any boundaries needed for future interactions"
            ],
            verse: "For that which is real never ceases to be; that which is unreal never comes into being.",
            verseNumber: "Chapter 2, Verse 16",
            stickFigureScene: "close_friend_betrayal",
            tags: ["betrayal", "friendship", "trust", "healing", "forgiveness"]
        ),

        // Scenario 22
        LifeScenario(title: "Family Business Partnership Conflict",
            description: "You and your brother co-own the family business but have clashing visions. He wants aggressive expansion financed by big loans; you prefer steady, conservative growth. The rift in strategy is causing personal friction between your families and deadlock in business decisions.",
            category: .relationships,
            chapter: 2,
            heartResponse: "Fight to impose your vision and prove your brother’s approach is reckless and wrong",
            dutyResponse: "Seek a harmonious middle path through dialogue, ensuring the business and family relationships both thrive",
            gitaWisdom: "Chapter 2 emphasizes equanimity and wise decision-making beyond ego. Krishna teaches that clinging to being “right” is an ego trap. By practicing detachment from one’s own rigid stance, you can collaborate to find a balanced solution. Approaching the conflict with a calm mind leads to sustainable outcomes and preserves family unity.",
            actionSteps: [
                "Remind yourself that the goal is the welfare of the business *and* the family, not personal victory",
                "Invite an unbiased advisor or elder to facilitate a discussion so all ideas are fairly heard",
                "Agree on objective criteria (financial data, market research) to evaluate both approaches without personal bias",
                "Be willing to compromise: perhaps pilot a smaller expansion that tests your brother’s idea while safeguarding against worst-case scenarios"
            ],
            verse: "A person who is not disturbed by the incessant flow of desires can alone achieve peace.",
            verseNumber: "Chapter 2, Verse 70",
            stickFigureScene: "family_business_dispute",
            tags: ["business", "siblings", "conflict resolution", "family harmony"]
        ),

        // Scenario 23
        LifeScenario(title: "Sudden Death of Beloved Parent",
            description: "Your mother passed away unexpectedly from a heart attack. The grief is overwhelming, and you’re full of regrets about things you wish you had said or done. Each family member is grieving differently—some with anger, others with denial—and you feel you must hold everyone together while processing your own pain.",
            category: .relationships,
            chapter: 2,
            heartResponse: "Withdraw from everyone and focus only on your own grief, since it’s too hard to cope with others’ emotions",
            dutyResponse: "Honor your mother’s memory by supporting your family through this loss, while also giving yourself space to grieve",
            gitaWisdom: "Chapter 2 provides profound wisdom on the eternal nature of the soul and the temporary nature of life. Krishna teaches that while grief is a natural response to loss, we find solace in understanding that the soul lives on beyond the death of the body. By focusing on that higher reality, you can navigate sorrow with a measure of peace and purpose.",
            actionSteps: [
                "Allow yourself to mourn and express sadness—cry, journal, pray—knowing that grief is a healing process",
                "Be present for family members’ emotional needs in whatever way you can (listening, organizing memorials, etc.), as an act of love for your mother’s legacy",
                "Think of ways to honor your mother’s values and lessons by living them in your own life, giving her passing a deeper meaning",
                "Seek spiritual practices (reading scripture, meditation, prayer) that reinforce the understanding that her soul is eternal and still connected with you"
            ],
            verse: "The material body of the indestructible, immeasurable and eternal living entity is sure to come to an end.",
            verseNumber: "Chapter 2, Verse 18",
            stickFigureScene: "family_loss_grief",
            tags: ["grief", "loss", "death", "family support", "healing"]
        ),

        // Scenario 24
        LifeScenario(title: "Parents’ Clear Favoritism Toward ‘Golden Child’",
            description: "Your parents consistently favor your older sister, praising her every achievement while downplaying or ignoring yours. She receives more financial support and family attention. This long-standing dynamic has caused you deep resentment and self-doubt, making family interactions painful.",
            category: .relationships,
            chapter: 2,
            heartResponse: "Confront your parents angrily about their unfair treatment and demand equal recognition",
            dutyResponse: "Focus on your own growth and self-worth, maintaining respect for your parents while not letting their bias define you",
            gitaWisdom: "Chapter 2 teaches that our true value comes from the eternal soul, not from external validation or others’ opinions. Krishna reminds us that family situations like this test our ability to stay centered in our real identity. By detaching from the need for parental approval, you affirm that you are whole and worthy regardless of how others treat you.",
            actionSteps: [
                "Acknowledge and affirm to yourself that your worth isn’t determined by anyone’s praise or comparison—list your strengths and accomplishments privately",
                "Practice self-compassion: engage in activities that build your confidence independent of family (hobbies, supportive friend groups, therapy, etc.)",
                "When calm, have a respectful conversation with your parents about how you feel, using “I” statements and without attacking them",
                "Avoid bitter comparisons with your sibling; instead, focus on pursuing your own dharma (purpose) and let your achievements speak for themselves over time"
            ],
            verse: "For the soul there is neither birth nor death, nor having once existed does it cease to be.",
            verseNumber: "Chapter 2, Verse 20",
            stickFigureScene: "sibling_favoritism",
            tags: ["favoritism", "self-worth", "siblings", "family dynamics"]
        ),

        // Scenario 25
        LifeScenario(title: "Junior Team Member’s Idea Succeeds Over Yours",
            description: "A junior team member proposed a solution you initially dismissed. They pursued it independently, and now senior management is praising their results. You feel embarrassed and even threatened, wondering if others see you as outdated or incompetent because you were wrong.",
            category: .work,
            chapter: 2,
            heartResponse: "Downplay or undermine their contribution, and emphasize how you guided them to protect your ego",
            dutyResponse: "Wholeheartedly celebrate their success and use it as a chance to learn and improve yourself",
            gitaWisdom: "Chapter 2 addresses the ego’s attachment to being right and looking good. Krishna explains that true leaders transcend personal ego to serve a larger purpose. Rejoicing in others’ success instead of feeling threatened by it is a sign of spiritual growth and humility, which ultimately benefits the entire team.",
            actionSteps: [
                "Publicly acknowledge and commend your colleague’s innovative thinking and success",
                "Privately reflect on what you can learn from their approach or idea that you initially overlooked",
                "Use this experience to model a growth mindset—show your team it’s okay to be wrong and that learning is continuous",
                "Focus on how their success contributes to overall team and company goals, rather than how it impacts your image"
            ],
            verse: "The humble sage, by virtue of true knowledge, sees with equal vision a learned brāhmaṇa, a cow, an elephant, a dog, and an outcaste.",
            verseNumber: "Chapter 5, Verse 18",
            stickFigureScene: "ego_management",
            tags: ["ego", "humility", "recognition", "learning", "growth mindset"]
        ),

        // CHAPTER 3: KARMA YOGA – SELFLESS ACTION (12 scenarios)
        // Scenario 26
        LifeScenario(title: "Volunteering vs Personal Time",
            description: "Your community needs volunteers for an important cause, but you’re already overwhelmed with work and personal commitments.",
            category: .personal,
            chapter: 3,
            heartResponse: "Focus on your own needs and responsibilities first; let someone else step up",
            dutyResponse: "Make time to serve others despite personal inconvenience, viewing it as a sacred duty",
            gitaWisdom: "Karma Yoga teaches that selfless service (seva) purifies the heart and connects us to our higher purpose. Krishna reminds us that serving others is indirectly serving the Divine present in all. By dedicating a portion of our time to helping those in need, we grow spiritually and fulfill our societal dharma.",
            actionSteps: [
                "Assess your schedule honestly and carve out even a small, manageable amount of time to contribute",
                "Recall that when done in the right spirit, service can energize rather than drain you",
                "Start with a volunteering commitment you can sustain (even if modest) and gradually increase if possible",
                "Shift your perspective to see service as a form of spiritual practice or offering, rather than a burden"
            ],
            verse: "One who performs action without attachment, offering the results to the Supreme, is not affected by sin.",
            verseNumber: "Chapter 3, Verse 13",
            stickFigureScene: "volunteering_service",
            tags: ["volunteering", "service", "time management", "selflessness"]
        ),

        // Scenario 27
        LifeScenario(title: "Making Time for Civic Engagement",
            description: "Local elections and community meetings are approaching, requiring you to research issues and participate. You’re already busy with work and family responsibilities, and it’s tempting to skip these civic duties as ‘someone else’s problem’.",
            category: .work,
            chapter: 3,
            heartResponse: "Focus on personal and family obligations and skip civic participation entirely",
            dutyResponse: "Allocate time for civic duties as part of your broader responsibility to society",
            gitaWisdom: "Chapter 3 introduces the concept of *lokasangraha*—working for the welfare of the world. Krishna teaches that we each have obligations not only to ourselves and family, but also to the larger community. Civic participation can be seen as a form of *yajna* (sacrifice) that maintains social order and well-being. By performing our civic duties selflessly, we contribute to the harmony of society.",
            actionSteps: [
                "Schedule a specific time slot to read about candidates and issues so you’re informed without last-minute stress",
                "Prioritize voting day and key community meetings as non-negotiable commitments in your calendar",
                "Where possible, involve your family in civic activities (like bringing your kids when you vote or attend a community event) to share the responsibility and teach by example",
                "Remember that a healthy society depends on individuals doing their part—your contribution, however small, matters"
            ],
            verse: "Whatever action a great man performs, common men follow. Whatever standards he sets, the world pursues.",
            verseNumber: "Chapter 3, Verse 21",
            stickFigureScene: "civic_duty_participation",
            tags: ["civic duty", "voting", "community", "social responsibility", "citizenship"]
        ),

        // Scenario 28
        LifeScenario(title: "Juggling Competing Life Responsibilities",
            description: "In a single day, you face a critical work deadline, your child’s important school event, and a community meeting where your input is needed. You physically cannot be in three places at once and must prioritize, knowing some obligations will have to be postponed or delegated.",
            category: .work,
            chapter: 3,
            heartResponse: "Choose based on what feels most urgent or personally appealing in the moment, and hope for the best",
            dutyResponse: "Make a dharmic decision by clearly ranking your responsibilities and doing what’s most essential for the greater good",
            gitaWisdom: "Chapter 3 addresses the complexity of performing multiple duties. Krishna teaches Arjuna to understand the hierarchy of responsibilities and choose based on dharma (right duty) rather than impulse or preference. Sometimes fulfilling a higher duty means accepting shortcomings elsewhere. The key is intention and doing one’s best in each role without guilt.",
            actionSteps: [
                "Calmly evaluate which responsibility has the most serious consequences if neglected (prioritize by dharma and who relies on you most in each case)",
                "Communicate transparently with all parties — inform your boss, family, and community group about your situation and decision",
                "Find alternate ways to cover the duties you cannot attend (e.g., ask a colleague to represent you at the meeting, or see if the school can record the event)",
                "Accept that you cannot please everyone; focus on doing your duty where you are most irreplaceable, and practice self-compassion for the things you have to miss"
            ],
            verse: "All beings follow their nature; even the wise act according to their own nature. What can repression accomplish?",
            verseNumber: "Chapter 3, Verse 33",
            stickFigureScene: "multiple_roles_balance",
            tags: ["balance", "priorities", "multiple roles", "dharma", "difficult choices"]
        ),

        // Scenario 29
        LifeScenario(title: "Serving Others Through Exhaustion",
            description: "You volunteer weekly at a homeless shelter, but after a grueling work week, you’re physically and mentally drained. The shelter is understaffed and counting on your help this weekend, yet you feel you have nothing left to give.",
            category: .work,
            chapter: 3,
            heartResponse: "Skip volunteering this time to rest; you need to take care of yourself first",
            dutyResponse: "Honor your commitment despite fatigue, seeking strength through the very act of service",
            gitaWisdom: "Chapter 3 explains Karma Yoga—the path of action offered to the divine without selfish motive. Krishna teaches that service performed as duty, rather than for personal satisfaction, can tap into a spiritual strength beyond our usual limits. When we serve others even amid personal discomfort, we transcend the body-mind’s limitations and feel a deeper vitality.",
            actionSteps: [
                "Reframe your volunteering as a spiritual practice or duty, not just another obligation—this shift in mindset can reduce fatigue",
                "Before going, do a short self-care ritual (rest, a healthy meal, a brief meditation) to gather energy",
                "While serving, focus on the immediate human connection and the purpose behind the work, rather than on your tiredness",
                "After completing your commitment, allow yourself to recuperate, acknowledging that pushing through difficulty for a noble cause strengthens your spirit"
            ],
            verse: "One who performs action without attachment, offering the results to the Supreme, is not affected by sin.",
            verseNumber: "Chapter 3, Verse 13",
            stickFigureScene: "service_despite_fatigue",
            tags: ["service", "fatigue", "commitment", "karma yoga", "perseverance"]
        ),

        // Scenario 30
        LifeScenario(title: "Setting Example for Impressionable Siblings",
            description: "As the eldest sibling, you’re aware that your younger brothers and sisters closely observe and imitate your behavior. You’re tempted to engage in certain adult activities (like partying or risky behavior) that you feel are your personal choice, but you worry it might set a bad example for them.",
            category: .work,
            chapter: 3,
            heartResponse: "Live your life freely and tell them, “Do as I say, not as I do”—it’s not your responsibility to be their role model",
            dutyResponse: "Recognize your influence and strive to make choices that set a positive example for them to follow",
            gitaWisdom: "Chapter 3 emphasizes *lokasangraha* (welfare of the world) and that leaders must set the standard. Krishna tells Arjuna that whatever a great person does, others imitate. Knowing others look up to you imposes a dharmic duty to act responsibly. Your actions create a template for those who follow, so living by higher principles helps guide them too.",
            actionSteps: [
                "Before making decisions, consider the impact on your younger siblings if they were to emulate you",
                "Find ways to enjoy your youth that are fun yet align with the values you’d want them to learn",
                "Have honest conversations with them about choices, explaining why you do or don’t do certain things",
                "Embrace your role as an elder sibling mentor—encourage them in positive activities and sometimes involve them in what you do to teach by example"
            ],
            verse: "Whatever action a great man performs, common men follow. Whatever standards he sets, the world pursues.",
            verseNumber: "Chapter 3, Verse 21",
            stickFigureScene: "example_for_siblings",
            tags: ["influence", "role model", "responsibility", "family", "leadership"]
        ),

        // Scenario 31
        LifeScenario(title: "Guilt Over Saying ‘No’ to Others",
            description: "You’re known as the helpful person at work and among friends. Lately, you’re stretched thin, but you still agree to every request—helping on projects, covering shifts, lending an ear at any hour. You feel burnout creeping in, but anytime you consider saying ‘no’, you feel guilty and worry you’ll disappoint people.",
            category: .personal,
            chapter: 3,
            heartResponse: "Keep saying yes to maintain your image as reliable, even at the cost of your own well-being",
            dutyResponse: "Practice self-care by sometimes saying no or setting limits, so you can sustainably serve others in the long run",
            gitaWisdom: "Chapter 3 teaches about performing one’s duty selflessly, but not at the expense of wisdom. Krishna advocates balance and understanding the purpose of action. Over-attachment to being seen as the “helper” is still attachment. By learning to care for yourself, you uphold *dharma* because you cannot pour from an empty cup. Self-care ensures your service remains genuine and effective.",
            actionSteps: [
                "Prioritize your duties: distinguish between what others truly need from you versus what they could do for themselves",
                "Start with small boundaries—perhaps decline one request per week and observe that the world doesn’t collapse",
                "Communicate honestly when you’re at capacity, offering alternative solutions if possible (like “I can’t do that tonight, but maybe try X…”)",
                "Remind yourself that saying no when necessary is an act of honesty and preserves your ability to serve in the future without resentment"
            ],
            verse: "One who does not help to maintain the common good, and eats sinfully only for themselves, lives in vain.",
            verseNumber: "Chapter 3, Verse 16",
            stickFigureScene: "balance_service_selfcare",
            tags: ["boundaries", "burnout", "self-care", "service", "guilt"]
        ),

        // Scenario 32
        LifeScenario(title: "Navigating Career Change Later in Life",
            description: "After decades in one profession, you feel a calling to switch to a completely different field that aligns more with your passion and values. However, you worry about societal expectations, financial stability, and what your family will say about ‘starting over’ in midlife.",
            category: .work,
            chapter: 3,
            heartResponse: "Stay in the current path until retirement, even if unfulfilling, to avoid risk and judgment",
            dutyResponse: "Pursue your authentic calling with careful planning, seeing your work as service rather than just a career",
            gitaWisdom: "Chapter 3 encourages acting according to one’s own nature (svadharma). Krishna would advise that it’s better to perform your own duty, even imperfectly, than to do another’s perfectly. Changing careers later in life can be a form of following your true purpose. By viewing the new work as service and part of your dharma, you align with what the Gita teaches about meaningful action.",
            actionSteps: [
                "Research and educate yourself on the new field and possible transitional steps (perhaps start as a side project or part-time)",
                "Discuss your plans with family honestly, highlighting why this change is important to your sense of purpose",
                "Create a financial plan or safety net to manage the risk, showing responsibility even as you follow your passion",
                "Remind yourself regularly that life isn’t a straight line; fulfillment in serving your true calling can bring renewed energy and success at any age"
            ],
            verse: "Better is one's own duty (dharma), though imperfectly performed, than the duty of another well performed.",
            verseNumber: "Chapter 3, Verse 35",
            stickFigureScene: "midlife_career_change",
            tags: ["career change", "purpose", "authenticity", "age", "dharma"]
        ),

        // Scenario 33
        LifeScenario(title: "Managing Success Without Ego",
            description: "Your startup business took off and is now a market leader. You’re proud of what you achieved through hard work, but you notice yourself becoming more arrogant and dismissive of others’ ideas. Former peers find you less approachable, and you realize success might be going to your head.",
            category: .work,
            chapter: 3,
            heartResponse: "Enjoy the perks of success and assert your superiority—after all, you earned it and you know best",
            dutyResponse: "Remain humble and use your success as a platform to uplift others, recognizing that leadership is a responsibility",
            gitaWisdom: "Krishna warns in Chapter 3 that even the wise can be led astray by ego. Karma Yoga means continuing to work selflessly even after achieving results, remembering that all talents and opportunities ultimately come from the Divine. By keeping humility, you prevent ego from undoing the spiritual merit of your work and you set a positive example for others.",
            actionSteps: [
                "Consciously practice gratitude each day, acknowledging all the people and factors that contributed to your success",
                "Invite feedback and ideas from your team and peers actively, to remind yourself that you don’t have all the answers",
                "Mentor someone who is starting out—sharing your knowledge keeps you grounded in the reality that you were once a beginner",
                "Reflect on any spiritual or personal values that guided you early on and ensure you’re still aligned with them, rather than being driven by pride"
            ],
            verse: "One who is not motivated by false ego, whose intelligence is not entangled, even if he kills (performs his duty), does not kill; nor is he bound by his actions.",
            verseNumber: "Chapter 3, Verse 27",
            stickFigureScene: "success_without_ego",
            tags: ["success", "humility", "leadership", "ego", "responsibility"]
        ),

        // Scenario 34
        LifeScenario(title: "Difficulty Delegating Tasks",
            description: "You’re a team leader used to doing everything yourself to ensure quality. Now your responsibilities have grown, and you must delegate to team members. However, you struggle to trust others’ work and often end up micromanaging or doing tasks yourself, leading to burnout and a frustrated team.",
            category: .work,
            chapter: 3,
            heartResponse: "Continue doing things yourself or overseeing every detail closely so nothing goes wrong",
            dutyResponse: "Empower your team by delegating meaningfully and trusting them, focusing instead on guiding and supporting",
            gitaWisdom: "In Chapter 3, Krishna explains the importance of performing one’s prescribed duties and also not over-identifying as the sole doer. Good leadership in karma yoga means recognizing the talents of others and engaging them according to their nature. By relinquishing the ego that says “Only I can do this right,” you fulfill your duty as a leader to nurture others’ abilities, and you free yourself from unsustainable workloads.",
            actionSteps: [
                "Identify tasks that others can do (even if not exactly how you would) and delegate them with clear instructions and expectations",
                "Resist the urge to “take over” unless absolutely necessary; allow team members to learn even if they make small mistakes",
                "Communicate to your team that you trust them and are available for support, which builds their confidence",
                "Remind yourself that your role is to manage and mentor, not to be the hero—by developing your team, you multiply what can be accomplished"
            ],
            verse: "Let not the wise disrupt the minds of the ignorant who are attached to action. They should engage them in all actions, while themselves acting with understanding.",
            verseNumber: "Chapter 3, Verse 26",
            stickFigureScene: "effective_delegation",
            tags: ["delegation", "leadership", "trust", "teamwork", "micromanagement"]
        ),

        // Scenario 35
        LifeScenario(title: "Struggling to Find Motivation in Routine Work",
            description: "Your job has become routine and monotonous, and you find it hard to stay motivated or enthusiastic. Every day feels like going through the motions solely for a paycheck, and you worry that you’re wasting your life on work that doesn’t inspire you.",
            category: .work,
            chapter: 3,
            heartResponse: "Do the bare minimum to get by, since your heart isn’t in it, and use free time to seek enjoyment elsewhere",
            dutyResponse: "Infuse your work with a sense of service or higher purpose, and perform it diligently as a practice of discipline and devotion",
            gitaWisdom: "Krishna teaches in Chapter 3 that no work is insignificant when done in the spirit of Yoga. By offering the fruits of your labor to something beyond yourself (your family’s well-being, service to society, or God), even routine tasks gain meaning. Duty performed with the right attitude purifies the mind and eventually leads to higher fulfillment. The key is not what you do, but the consciousness with which you do it.",
            actionSteps: [
                "Identify who or what benefits from your work—focus on those beneficiaries as you work (e.g., you’re supporting your family or contributing to a larger project)",
                "Set small challenges or goals for yourself within the job to make it engaging (like learning a new skill or improving efficiency)",
                "Create a ritual of mentally dedicating your day’s work to a higher ideal each morning, transforming mundane work into a form of service",
                "Use free time outside work to pursue passions or volunteer, which can make your whole day feel more purposeful and balanced"
            ],
            verse: "Work done as a sacrifice for Vishnu has to be performed; otherwise work causes bondage in this material world.",
            verseNumber: "Chapter 3, Verse 9",
            stickFigureScene: "finding_purpose_in_work",
            tags: ["motivation", "purpose", "duty", "service", "burnout"]
        ),

        // Scenario 36
        LifeScenario(title: "Facing Criticism for Being ‘Too Ethical’ at Work",
            description: "Your coworkers sometimes tease or criticize you for insisting on ethical practices (like not cutting corners or refusing to fudge numbers). They say your high standards slow things down. You’re starting to feel isolated and wonder if you should relax your principles to fit in better and make work easier.",
            category: .work,
            chapter: 3,
            heartResponse: "Compromise on some ethics to avoid standing out; do what others do so you’re not labeled self-righteous",
            dutyResponse: "Hold firm to your ethical practices and lead by example, trusting that doing the right thing is more important than popularity",
            gitaWisdom: "Krishna tells Arjuna in Chapter 3 that great souls lead by example. By sticking to dharma (righteous action) even when it’s inconvenient, you uphold the moral fabric that others may eventually follow. It is better to endure some criticism than to abandon righteousness. In time, your integrity can inspire respect and positive change.",
            actionSteps: [
                "Stay informed about the official policies and regulations in your industry—knowing the rules bolsters your confidence in following them",
                "Politely explain the rationale for doing things the right way when pushed—frame it as protecting the company or everyone’s long-term interest, not as a personal moral high ground",
                "Seek out like-minded colleagues or a mentor who values integrity, so you don’t feel alone and can gain support",
                "Remember past instances where cutting corners led to problems; use those examples (if they exist) to gently remind the team why ethics matter"
            ],
            verse: "If I did not perform prescribed duties, all these worlds would be put to ruination. I would be the cause of unwanted population and would destroy the peace of all beings.",
            verseNumber: "Chapter 3, Verse 24",
            stickFigureScene: "ethics_over_approval",
            tags: ["ethics", "integrity", "peer pressure", "lead by example", "values"]
        ),

        // Scenario 37
        LifeScenario(title: "Transitioning from Individual Contributor to Manager",
            description: "You were a high-performing individual contributor and have now been promoted to manage a team. You’re used to doing the work yourself, and you find it hard to step back and let your team handle tasks. You also miss the recognition you got for your personal achievements now that you have to share credit.",
            category: .work,
            chapter: 3,
            heartResponse: "Continue acting like an individual star—take on key tasks yourself and directly compete with your team for accolades",
            dutyResponse: "Embrace your new role by facilitating your team’s success, finding satisfaction in guiding others and collective achievements",
            gitaWisdom: "Chapter 3 emphasizes performing one’s duty according to their role in life. Krishna would advise that your dharma has now shifted from doing the work to enabling others to do it. By relinquishing personal glory and working for the welfare of your team (*lokasangraha*), you align with selfless action. True success for a leader comes from raising others up, a lesson in humility and service.",
            actionSteps: [
                "Redefine success in your mind: it’s no longer about what *you* accomplish, but what your team does under your guidance",
                "Delegate meaningful tasks to team members and trust them, intervening only to mentor or if they truly need help",
                "Give credit generously to your team in front of higher-ups; as they shine, it ultimately reflects well on your leadership too",
                "Seek mentorship or training in management skills to help shift your mindset from “doer” to “coach”"
            ],
            verse: "Do your duty, O Arjuna, as prescribed, for action is better than inaction.",
            verseNumber: "Chapter 3, Verse 8",
            stickFigureScene: "individual_to_manager",
            tags: ["leadership", "management", "ego", "team success", "coaching"]
        ),

        // CHAPTER 4: TRANSCENDENTAL KNOWLEDGE (X scenarios)
        // (Assume existing scenarios for Chapter 4 are refined here)
        // ...

        // CHAPTER 5: KARMA–SANNYASA YOGA – ACTION AND RENUNCIATION (25 scenarios)
        LifeScenario(title: "Teen Navigating Gender Identity",
            description: "You feel different from the gender assigned to you and struggle to understand your identity. You’re scared that your family or society won’t accept you if you express how you truly feel.",
            category: .mentalHealth,
            chapter: 5,
            heartResponse: "Hide your feelings and try to deal with the pain alone, to avoid rejection or judgment",
            dutyResponse: "Embrace your true self with courage and seek supportive allies, practicing compassion toward yourself",
            gitaWisdom: "The Gita describes the soul as beyond the body and labels. Your true identity is eternal, spiritual, and not confined by external categories like gender. Recognizing this can give you inner strength. Also, the equal-vision of a wise person (Gita 5.18) reminds us that everyone is divine at heart. By living authentically and with respect, you fulfill your duty to honor the divine within you, and compassionate understanding will follow.",
            actionSteps: [
                "Confide in a trusted friend, family member, counselor or support group—someone who will listen without judgment",
                "Explore your feelings through journaling, art, or therapy to understand yourself better without self-criticism",
                "Affirm daily that your worth comes from your soul’s qualities (kindness, creativity, etc.), beyond any labels",
                "Find or create a community (online or in person) where people share similar experiences, so you remember you are not alone and can gain strength from others’ journeys"
            ],
            verse: "The humble sage, by virtue of true knowledge, sees with equal vision a learned brāhmaṇa, a cow, an elephant, a dog, and a dog-eater.",
            verseNumber: "Chapter 5, Verse 18",
            stickFigureScene: "gender_identity_struggle",
            tags: ["identity", "gender", "acceptance", "spiritual equality"]
        ),

        // Scenario 2
        LifeScenario(title: "Renunciation vs Responsibility Dilemma",
            description: "You are drawn to leave your hectic job and live a simple life in a spiritual retreat. However, you have a family to support and community obligations. You feel torn between renouncing worldly duties for personal peace versus staying and fulfilling your responsibilities.",
            category: .spiritual,
            chapter: 5,
            heartResponse: "Abandon your current life and responsibilities to seek personal spiritual growth in seclusion",
            dutyResponse: "Continue to fulfill your responsibilities while incorporating spiritual practices, seeing your duties as part of your spiritual path",
            gitaWisdom: "In Chapter 5, Arjuna asks Krishna whether renouncing action or working in devotion is better. Krishna replies that performing one’s duty with detachment is superior for most. True renunciation is mental detachment, not physical withdrawal. By seeing your work and family duties as service to God and part of your yoga, you can attain the same spiritual growth without abandoning your responsibilities.",
            actionSteps: [
                "Integrate daily spiritual practices (meditation, prayer, study) into your routine to create an ‘ashram’ mindset at home",
                "Take short retreats or breaks when possible to recharge spiritually, rather than a permanent exit",
                "Reframe your job and family care as acts of service and devotion, offering their outcomes to the divine",
                "Seek guidance from a spiritual mentor on balancing inner renunciation with active life; follow examples of householders who led spiritual lives"
            ],
            verse: "Renunciation of action and working in devotion both lead to liberation, but of the two, work in devotion is better.",
            verseNumber: "Chapter 5, Verse 2",
            stickFigureScene: "renunciation_vs_duty",
            tags: ["renunciation", "duty", "spiritual path", "balance", "detachment"]
        ),

        // Scenario 3
        LifeScenario(title: "Staying Honest in a Corrupt Environment",
            description: "You work in an industry where shady practices are common and nearly everyone bends rules to get ahead. You pride yourself on honesty, but lately you feel pressure to compromise your ethics to meet targets and keep up with colleagues who cut corners.",
            category: .work,
            chapter: 5,
            heartResponse: "Adopt the common dishonest practices so you don’t fall behind or become a target; after all, 'everyone is doing it'",
            dutyResponse: "Remain ethically pure like a lotus in muddy water, focusing on your work quality and letting go of attachment to outcomes",
            gitaWisdom: "Krishna teaches in Chapter 5 that one who is internally renounced remains untouched by sin, like a lotus leaf by water. By offering all actions to the Divine and refusing to be dragged down by surrounding negativity, you stay unsullied. True success is maintaining integrity. Even if you face setbacks for being honest, spiritually you are progressing, and ultimately truth prevails over temporary gains from corruption.",
            actionSteps: [
                "Set personal non-negotiable ethical standards and remind yourself of them daily before work",
                "Find like-minded colleagues (even one ally) who also want to do things right, so you can support each other",
                "Document your work carefully to protect yourself, and calmly refuse to participate in fraud—sometimes quiet firmness earns respect",
                "Keep the long view: reputations built on integrity often outlast and outperform short-term gains from dishonesty; trust that your honest efforts will bear fruit in time"
            ],
            verse: "One who performs his duty without attachment, surrendering the results unto the Supreme, is not affected by sinful action, as the lotus leaf is untouched by water.",
            verseNumber: "Chapter 5, Verse 10",
            stickFigureScene: "lotus_in_mud_ethics",
            tags: ["integrity", "corruption", "pressure", "purity", "lotus effect"]
        ),

        // Scenario 4
        LifeScenario(title: "Balancing Ambition and Detachment",
            description: "You have big career ambitions and work tirelessly for promotions and accolades. However, the stress of chasing success is affecting your health and personal life. You wonder if it’s possible to strive for greatness without becoming consumed by the results.",
            category: .personal,
            chapter: 5,
            heartResponse: "Double down on work and achievements at any cost—your worth is defined by your success and you can’t slow down now",
            dutyResponse: "Pursue your goals diligently but practice inner detachment, understanding that the outcomes are not ultimately in your hands",
            gitaWisdom: "Chapter 5 teaches action in Krishna consciousness: doing one’s best work while renouncing attachment to the rewards. Krishna says the wise see success and failure equally. This means you can still aim high, but keep a mindset that accolades and failures are temporary and external to your true self. By dedicating your efforts to the divine or a higher purpose, you remain centered and peaceful whether or not worldly success comes.",
            actionSteps: [
                "Set realistic boundaries for work (hours, availability) to protect your health and relationships, knowing life is larger than one metric of success",
                "Before beginning work each day, take a moment to dedicate your effort to a higher ideal (service, family well-being, God, etc.) to remember why you work",
                "After an important project, consciously practice letting go: tell yourself ‘I’ve done my part, the result is beyond me,’ perhaps engaging in a relaxing or spiritual activity",
                "Cultivate interests and relationships outside of work that give you joy and identity, so your sense of self isn’t 100% tied to career achievements"
            ],
            verse: "The yogis, abandoning attachment, act with body, mind, intelligence and senses, only for the sake of purification.",
            verseNumber: "Chapter 5, Verse 11",
            stickFigureScene: "ambition_without_attachment",
            tags: ["ambition", "success", "detachment", "balance", "stress management"]
        ),

        // Scenario 5
        LifeScenario(title: "Seeing God in All – Overcoming Prejudice",
            description: "You were raised with certain prejudices toward people of a different race/religion/social class. Intellectually you know it’s wrong, but remnants of bias still surface. Now, your new colleague comes from the background you were biased against. You feel uneasy working closely with them, despite them doing nothing wrong.",
            category: .relationships,
            chapter: 5,
            heartResponse: "Keep your distance and stick to your preconceived notions, even subtly treating them differently due to your internal discomfort",
            dutyResponse: "Recognize the Divine spark in them and treat them with equal respect and friendship, consciously unlearning your bias through positive interaction",
            gitaWisdom: "In Chapter 5, Krishna describes the enlightened person as seeing all with an equal eye – brāhmaṇa, outcaste, animal – all are seen as souls. This spiritual vision is the antidote to prejudice. By reminding yourself that the same God resides in the heart of every being, you can break conditioned biases. The Gita’s wisdom urges us to act with compassion and equality, seeing beyond externals to the spirit soul within.",
            actionSteps: [
                "Educate yourself about your colleague’s background/culture to replace fear of the unknown with understanding",
                "Make an effort to genuinely get to know them as an individual—find common interests or values through conversation",
                "Whenever a biased thought arises, counter it by recalling the Gita’s teaching that they too are a beloved child of the Divine, just like you",
                "Treat them in small ways with kindness and normalcy (invite them to lunch, include them in conversations) until it becomes natural and the prejudice fades"
            ],
            verse: "The humble sages, by virtue of true knowledge, see with equal vision a learned brāhmaṇa, a cow, an elephant, a dog, and a dog-eater (outcaste).",
            verseNumber: "Chapter 5, Verse 18",
            stickFigureScene: "equal_vision_friendship",
            tags: ["equality", "prejudice", "diversity", "respect", "spiritual vision"]
        ),

        // Scenario 6
        LifeScenario(title: "Resisting Temptation Through Spiritual Strength",
            description: "You are trying to quit an addictive habit (smoking, junk food, etc.), but the urge becomes very strong whenever you are stressed or see others indulging. You often feel your willpower is not enough.",
            category: .personal,
            chapter: 5,
            heartResponse: "Give in to the temptation ‘just this once’—life is short and maybe you can’t realistically change this habit",
            dutyResponse: "Exercise self-control by remembering higher principles and the long-term welfare of your body and soul, recognizing you are not a slave to your senses",
            gitaWisdom: "Krishna acknowledges in Chapter 5 and later that one who can tolerate the urges of the senses and anger is a yogi who is happy in this world (5.23). The soul is meant to be the master of the senses, not their servant. By identifying with your higher self and calling on divine help (through prayer or mantra), you strengthen your resolve. Each small victory in self-control is a step toward real inner peace and freedom.",
            actionSteps: [
                "Use a simple meditation or deep breathing technique when cravings hit, to ride the wave of urge without succumbing immediately",
                "Remind yourself of your deeper reason for quitting (better health, clear mind, family, spiritual growth) and visualize the benefit",
                "Change your environment when temptation strikes—take a walk, drink water, or call a supportive friend to disrupt the automatic pattern",
                "Celebrate each day or instance of self-control as a spiritual win, reinforcing your identity as someone stronger than the impulse"
            ],
            verse: "Before giving up this present body, if one is able to tolerate the urges of the material senses and check the force of desire and anger, he is well-situated and happy in this world.",
            verseNumber: "Chapter 5, Verse 23",
            stickFigureScene: "tolerating_temptation",
            tags: ["self-control", "temptation", "addiction", "willpower", "senses"]
        ),

        // Scenario 7
        LifeScenario(title: "Finding Equanimity Amid Praise and Criticism",
            description: "In your new leadership role, some people heap praise on you hoping to get favors, while others criticize your every move. The roller coaster of flattery and criticism is stressful: you either get puffed up when praised or distraught when criticized.",
            category: .work,
            chapter: 5,
            heartResponse: "Chase more praise and avoid criticism at all costs—base your decisions on what makes you look good",
            dutyResponse: "Practice equanimity by staying steady in self-knowledge, taking both praise and blame lightly while focusing on doing what’s right",
            gitaWisdom: "Chapter 5 and related verses extol the virtue of *samatvam*—equanimity. The true yogi is not elated by praise nor disturbed by blame, understanding both are temporary and often superficial. Krishna encourages operating from the soul level: know your true self and duty, and do not be swayed by public opinion. In spiritual consciousness, you see praise and criticism as simply two imposters, to be received with equal calm.",
            actionSteps: [
                "When praised, silently remind yourself of any team members or mentors who helped—this keeps you humble and grounds the praise in perspective",
                "When criticized, look objectively for any truth in it without taking it as a personal attack—correct what’s valid, and disregard what’s just negativity",
                "Establish an internal compass of values and goals. Regularly check decisions against those rather than the shifting winds of others’ opinions",
                "Engage in a centering practice (like meditation or affirmations) each morning, affirming that your worth is inherent and not dependent on outside validation"
            ],
            verse: "One who neither rejoices upon achieving something pleasant nor laments upon obtaining something unpleasant, who is self-intelligent, unbewildered, and who knows the science of God, is to be understood as already situated in transcendence.",
            verseNumber: "Chapter 5, Verse 20",
            stickFigureScene: "praise_and_blame_balance",
            tags: ["equanimity", "ego", "humility", "leadership", "stability"]
        ),

        // Scenario 8
        LifeScenario(title: "Mindfulness in Mundane Chores",
            description: "You find daily chores like washing dishes, cleaning, or commuting incredibly tedious and frustrating. You often do them begrudgingly or distractedly, just to get them over with, which sometimes causes mistakes or accidents. You wonder if there’s a way to not hate these necessary tasks so much.",
            category: .personal,
            chapter: 5,
            heartResponse: "Rush through chores mindlessly or avoid them, using entertainment or multitasking to distract yourself from how boring they are",
            dutyResponse: "Transform these simple duties into a form of mindful practice or even devotion, by being present in the moment and offering the work mentally as service",
            gitaWisdom: "Chapter 5 highlights that inner renunciation and seeing the divine in all actions can bring peace. Krishna’s teaching implies that no action is inherently high or low when done in consciousness of God. By practicing *karma yoga* in even small tasks, you purify your mind. This means performing your necessary duties with full attention and a spirit of offering – this mindfulness turns mundane work into meditation and frees you from resentment.",
            actionSteps: [
                "Instead of playing loud music or TV in the background, occasionally do chores in silence or with gentle music, focusing on your breath and the sensations of the task",
                "While performing a chore, try to keep your mind fully on it – notice the water on your hands, the movement of the broom, etc., as if each act is significant",
                "Experiment with mentally repeating a mantra or positive affirmation during chores, effectively turning the time into contemplative practice",
                "Remind yourself that caring for your living space or belongings is an act of gratitude for having them; reframe a “boring” chore as taking loving responsibility"
            ],
            verse: "By performing his duties, one worships the Creator… Through such worship, a person attains perfection.",
            verseNumber: "Chapter 5, Verse 29",
            stickFigureScene: "mindful_chores",
            tags: ["mindfulness", "karma yoga", "chores", "attitude", "presence"]
        ),

        // Scenario 9
        LifeScenario(title: "Handling Anger Without Aggression",
            description: "You have a quick temper and find yourself snapping at family or coworkers when things go wrong. Though you regret it later, in the moment anger feels overwhelming. You want to control your anger, but suppressing it entirely makes you feel like a doormat.",
            category: .mentalHealth,
            chapter: 5,
            heartResponse: "Vent your anger freely whenever provoked, since holding it in feels impossible—people should just deal with it",
            dutyResponse: "Regulate your anger through understanding and detached observation, expressing your needs firmly but without harmful aggression",
            gitaWisdom: "Krishna explains that anger arises from unsatisfied desire and leads to confusion (as earlier in 2.63). In Chapter 5, a person established in wisdom manages impulses and remains tranquil. The key is internal renunciation of the ego that demands others and the world be a certain way. By seeing yourself as the soul and others as souls too, you naturally become more compassionate and less reactive. Anger can be transformed into calm strength when governed by the higher self rather than the ego.",
            actionSteps: [
                "When you feel anger rising, take a break if possible—physically step away to cool down and observe the feeling rather than immediately acting on it",
                "Practice breathing techniques or count to ten; this interrupts the anger response and gives your intelligence a chance to step in",
                "Reflect on what unmet need or fear underlies your anger (e.g., feeling disrespected or out of control) and address that need through calm communication instead of shouting",
                "After calming down, assert your perspective or boundaries to others in a firm but respectful tone, focusing on solutions (this way your valid points are heard without the distracting force of rage)"
            ],
            verse: "One who can check the force of desire and anger is a yogi and can truly enjoy the nectar of life.",
            verseNumber: "Chapter 5, Verse 23",
            stickFigureScene: "anger_management_yoga",
            tags: ["anger", "impulse control", "emotional intelligence", "calm", "communication"]
        ),

        // Scenario 10
        LifeScenario(title: "Navigating Wealth Ethically",
            description: "Your business has started generating significant wealth. With more money comes more choices: investments, luxury purchases, philanthropy. You notice temptation to cut ethical corners for even more gain, and also indulgence in expensive comforts that conflict with your simpler values from before. You’re at a crossroads on how to handle prosperity.",
            category: .work,
            chapter: 5,
            heartResponse: "Maximize personal enjoyment—after working hard, you deserve luxury. Also, use clever tactics (even if grey-area) to keep growing wealth; others would in your position",
            dutyResponse: "Enjoy the fruits of your work in moderation and with gratitude, but use a good portion for the welfare of others, keeping your life principled and balanced",
            gitaWisdom: "Chapter 5 concludes with the ‘peace formula’ (5.29) that recognizing God as the true proprietor and benefactor leads to peace. The Gita encourages neither hoarding nor renouncing wealth blindly, but using it in service. The wise understand that wealth is a tool and a responsibility. By acting as a trustee of your prosperity—enjoying what is appropriate and dedicating the rest to beneficial causes—you stay detached and ensure wealth doesn’t own you.",
            actionSteps: [
                "Create a clear personal code of ethics for business deals—commit to honesty and fairness, and consult this code when dilemmas arise to avoid slippery slopes",
                "Set aside a fixed percentage of profits for charity or community projects that matter to you; build giving into your financial plan",
                "Treat yourself and your family to comforts mindfully, but practice moderation—try not to dramatically change your lifestyle overnight; ease in with gratitude",
                "Regularly reflect (through journaling or discussions with a mentor) on whether your relationship with money is healthy or if it's starting to control you, and adjust accordingly"
            ],
            verse: "The person who is fully satisfied and conversant in knowledge, who has subdued the senses, and to whom dirt, stones, and gold are the same, is said to be established in self-realization.",
            verseNumber: "Chapter 5, Verse 20",
            stickFigureScene: "ethical_wealth_management",
            tags: ["wealth", "ethics", "charity", "detachment", "moderation"]
        ),

        // ... (Add scenarios up to 25 for Chapter 5)

        // CHAPTER 8: ATTAINING THE SUPREME – DEATH AND DEVOTION (25 scenarios)
        LifeScenario(title: "Facing End-of-Life Decisions for a Loved One",
            description: "A beloved family member is terminally ill, and you are involved in their care decisions. Doctors present difficult choices about life support and interventions. You feel emotionally overwhelmed, avoiding the reality of the situation because it’s painful to confront.",
            category: .spiritual,
            chapter: 8,
            heartResponse: "React purely out of emotion, either clinging to false hope or avoiding the situation, because it’s too painful to face",
            dutyResponse: "Engage with the decisions thoughtfully and spiritually, seeking guidance within and from wise counsel, and keeping the loved one’s dignity and spiritual comfort in mind",
            gitaWisdom: "Krishna says in Chapter 8 that our consciousness at the time of death is critical. Approaching end-of-life as a sacred transition rather than merely a medical crisis can change our perspective. The Gita reminds us that the soul is eternal; thus, making decisions guided by compassion, duty, and spiritual wisdom will best serve your loved one. By remembering the divine (Krishna) throughout this process, you bring peace to yourself and them. Ultimately, we are instruments of the Divine’s mercy in easing another’s passing.",
            actionSteps: [
                "Educate yourself on the medical aspects so that fear of the unknown doesn’t cloud your judgment; knowledge can replace some anxiety with clarity",
                "Consult not only with doctors but also with a spiritual mentor or counselor to discuss the end-of-life options in light of your loved one’s values and beliefs",
                "Have honest, compassionate conversations with family (and the loved one, if possible) about their wishes and fears, so decisions honor their perspective",
                "Amidst discussions, take time to pray or meditate for inner guidance, and perhaps chant or play soothing spiritual music for your loved one to create a peaceful atmosphere"
            ],
            verse: "And whoever, at the end of his life, quits his body remembering Me alone at once attains My nature.",
            verseNumber: "Chapter 8, Verse 5",
            stickFigureScene: "end_of_life_decisions",
            tags: ["terminal illness", "compassion", "guidance", "family", "dignity"]
        ),

        // Scenario 2
        LifeScenario(title: "Reflecting on Mortality After a Friend’s Death",
            description: "A close friend of your age passed away suddenly. This shock makes you question the purpose of life and what might happen after death. You feel anxiety about your own mortality and are unsure how to process these existential questions.",
            category: .spiritual,
            chapter: 8,
            heartResponse: "Shut down emotionally or distract yourself to avoid confronting these scary thoughts about death",
            dutyResponse: "Face the deeper questions head-on by exploring spiritual teachings and practices that address the nature of the soul and afterlife",
            gitaWisdom: "Krishna teaches that whatever state of being one remembers at death, one attains that state (8.6). This implies the importance of our consciousness throughout life, not just at the end. The Gita provides reassurance that the soul is immortal and death is a transition. By reflecting on mortality, you have an opportunity to realign your life with eternal values. Rather than fear, let this awareness inspire you to live with purpose and spiritual focus, as the Gita guides.",
            actionSteps: [
                "Read the Bhagavad Gita (especially Chapters 2 and 8) or other spiritual texts to understand what they say about the soul and death—knowledge can replace fear with clarity",
                "Talk about your feelings and questions with a spiritually-minded friend, counselor or join a discussion group; expressing these thoughts can lighten the burden",
                "Attend a memorial or ritual for your friend that honors their life and the continuity of the soul, which can provide emotional catharsis and meaning",
                "Start a daily practice like meditation, journaling, or prayer reflecting on the temporary nature of life and the eternal nature of the soul, helping you gradually find peace with mortality"
            ],
            verse: "Whatever state of being one remembers when he quits his body, O son of Kunti, that state he will attain without fail.",
            verseNumber: "Chapter 8, Verse 6",
            stickFigureScene: "mortality_reflection",
            tags: ["mortality", "purpose", "afterlife", "soul", "fear"]
        ),

        // Scenario 3
        LifeScenario(title: "Devotion at Time of Death",
            description: "You have a deep desire to ensure that when your time comes, you pass away in a peaceful and spiritually conscious state. You worry because you see many people pass in distress or confusion, and you want to prepare yourself to remember God at that crucial moment.",
            category: .spiritual,
            chapter: 8,
            heartResponse: "Avoid thinking about death entirely, assuming things will take care of themselves when the time comes",
            dutyResponse: "Cultivate devotion and remembrance of God daily, training your mind and heart so that remembering the Divine becomes natural, even at life’s end",
            gitaWisdom: "Krishna promises in Chapter 8 that for one who always remembers Him without deviation, He is easy to attain (8.14). Preparing for death in the Gita’s view means practicing constant devotion now. By integrating prayer, kirtan (chanting), or japa (mantra repetition) into your routine, you are likely to recall God when it matters most. The Gita assures that death for a devotee is a doorway to the Supreme, not something to be feared. Your duty is to live in such a way that your final thought will naturally be of Krishna.",
            actionSteps: [
                "Establish a simple daily devotional practice—like chanting a holy name or praying each morning—so remembrance of God becomes a habit",
                "Keep visual or auditory reminders of the Divine in your environment (images, verses, soft spiritual music) to trigger loving remembrance throughout the day",
                "Cultivate an attitude of seeing God’s presence in the people and nature around you; the more you see the Divine everywhere now, the more you’ll feel that presence when departing",
                "Periodically imagine the moment of leaving the body (without morbid fear) as a meditation, and practice mentally offering yourself to God. This can remove the sting of fear and replace it with sweet surrender"
            ],
            verse: "For one who always remembers Me without deviation, I am easy to obtain, O Arjuna, because of his constant engagement in devotional service.",
            verseNumber: "Chapter 8, Verse 14",
            stickFigureScene: "devotion_at_death",
            tags: ["death", "devotion", "practice", "remembrance", "preparation"]
        ),

        // Scenario 4
        LifeScenario(title: "Letting Go of Attachment to a Dying Loved One",
            description: "Your beloved grandmother is nearing the end of her life. You are extremely attached to her and the thought of losing her is terrifying. You find yourself emotionally clinging, insisting doctors do everything, and struggling to accept the natural course of life.",
            category: .spiritual,
            chapter: 8,
            heartResponse: "Resist and deny the reality of her condition, holding on desperately and unable to imagine life without her",
            dutyResponse: "Lovingly support her through this transition, focusing on quality time and spiritual comfort, while accepting that every soul must pass on when it’s time",
            gitaWisdom: "Krishna teaches that from the highest planet down to the lowest, all places involve repeated birth and death (8.16). Mortality is the nature of this world. By accepting this truth, we can approach a loved one’s passing with more grace. The Gita encourages remembering that the soul doesn’t die; your grandmother’s essence is eternal and will continue its journey. True love means wanting the soul’s peace and liberation, not holding it back due to our own attachment. Letting go with love and prayers is a final act of service to her.",
            actionSteps: [
                "Spend present, quality moments with her—listen to her stories, express your gratitude and love—making the most of the time you have",
                "If she is open to it, share prayers, hymns or gentle spiritual discussions that can bring peace to her mind (and yours) about what lies ahead",
                "Privately, do your grieving (it’s okay to cry and feel) but also practice a ritual of mentally offering her into God’s hands, affirming that her soul is guided and protected",
                "Remind yourself daily that your love for her will continue beyond this life. Channel that love into praying or wishing for her smooth journey onward, rather than only into fear of your loss"
            ],
            verse: "From the highest planet in the material world down to the lowest, all are places of misery wherein repeated birth and death take place.",
            verseNumber: "Chapter 8, Verse 16",
            stickFigureScene: "letting_go_attachment",
            tags: ["death", "attachment", "soul", "grief", "acceptance"]
        ),

        // Scenario 5
        LifeScenario(title: "Guiding a Terminally Ill Family Member Spiritually",
            description: "Your father, who has not been particularly religious, is terminally ill and now looks to you for comfort and spiritual reassurance. He’s scared of what comes next. You feel pressure and uncertainty about how to guide him in faith when time is short.",
            category: .spiritual,
            chapter: 8,
            heartResponse: "Avoid deep spiritual conversations because it feels awkward or you fear saying the wrong thing; just stick to small talk",
            dutyResponse: "Gently encourage and facilitate spiritual remembrance and peace for him, meeting him where he is and assuring him of your love and God’s love",
            gitaWisdom: "Krishna advises Arjuna to always think of Him and carry out duties (8.7). In practice, helping someone fix their mind on God at the end is a great act of love. The Gita says those who remember God at death attain Him (8.5). So your role can be to help create an environment of devotion: simple prayers, playing holy music, reminding him of loving memories and forgiveness. Krishna’s presence is merciful, and even a little sincere remembrance at the end can uplift the soul tremendously. Your compassion and steadiness will reflect God’s compassion to him.",
            actionSteps: [
                "Ask your father if he would like you to pray with him or read some comforting verses; follow his cues and be respectful if he’s hesitant at first",
                "Share simple, positive spiritual ideas (like “You are loved by God,” “Your soul is eternal”) rather than complex theology—keep it about reassurance and hope",
                "Make the atmosphere peaceful: play soft devotional songs or keep a spiritual book by his bedside; even if he’s quiet, these can soothe and inspire internally",
                "Encourage him to speak about any fears or regrets, and listen without judgment. Offer forgiveness (if needed) and affirm that it’s never too late to turn to the Divine, who is ever-forgiving and kind"
            ],
            verse: "Therefore, Arjuna, you should always think of Me in the form of Krishna and at the same time do your duty.",
            verseNumber: "Chapter 8, Verse 7",
            stickFigureScene: "terminal_spiritual_guidance",
            tags: ["deathbed", "support", "faith", "forgiveness", "compassion"]
        ),

        // ... (Add scenarios up to 25 for Chapter 8)

        // CHAPTER 11: THE UNIVERSAL FORM – DIVINE VISION (25 scenarios)
        LifeScenario(title: "Developing Underperforming Team Member",
            description: "One of your team members is consistently underperforming. Other team members are frustrated because they have to pick up the slack. You see potential in this person, but helping them improve will require significant time and energy from you as a leader.",
            category: .work,
            chapter: 11,
            heartResponse: "Ignore their issues and focus only on your top performers; let the struggling member fend for themselves or eventually get fired",
            dutyResponse: "Invest in this person’s development with patience and encouragement, while being fair to the whole team’s needs",
            gitaWisdom: "Chapter 11 reveals Krishna’s universal form, symbolizing the divine presence and potential in all beings. A leader with divine vision recognizes the latent spark in everyone. Krishna teaches by example that nurturing the good in others is a sacred responsibility. By seeing your team member not just as “problematic” but as a soul with untapped ability, you fulfill a higher duty of compassion and mentorship, reflecting the divine quality of seeing beyond surface limitations.",
            actionSteps: [
                "Identify specific skill gaps or obstacles the team member faces and create a clear improvement plan together",
                "Offer mentoring or additional training sessions personally, showing you believe in their potential",
                "Set gradual milestones and give regular, constructive feedback, celebrating improvements to boost their confidence",
                "Communicate to the team that you are addressing the issue; redistribute tasks fairly during the improvement period so others don’t feel overburdened, thereby maintaining overall fairness"
            ],
            verse: "I am the Self, O Gudakesha, seated in the hearts of all creatures. I am the beginning, the middle, and the end of all beings.",
            verseNumber: "Chapter 10, Verse 20",
            stickFigureScene: "team_development",
            tags: ["development", "mentoring", "potential", "growth", "support"]
        ),

        LifeScenario(title: "Rebuilding Friendship After Hurtful Argument",
            description: "You and your best friend had a major argument where you both said hurtful things. Now, both of you are too proud and hurt to apologize first. You miss your friend deeply, but each of you thinks the other should make the first move to reconcile.",
            category: .relationships,
            chapter: 11,
            heartResponse: "Wait indefinitely for them to apologize first, convincing yourself they were more at fault",
            dutyResponse: "Swallow your pride and take the first step toward reconciliation with humility and love",
            gitaWisdom: "Chapter 11, by revealing the Divine in all forms, suggests that even in conflict, the eternal essence of your friendship remains. Krishna teaches that someone must rise above the ego’s demands. Seeing your friend as a soul dear to God (and to you) rather than an ‘opponent’ in pride, you realize preserving love is more important than winning the standoff. In doing so, you emulate the divine quality of forgiveness and magnanimity.",
            actionSteps: [
                "Reflect on the value of the friendship and remind yourself of their good qualities, which transcend this one conflict",
                "Approach them with a sincere heart—perhaps send a thoughtful message or arrange to meet in person—and acknowledge your role in what went wrong",
                "Listen to their side without defensiveness if they need to express hurt, validating their feelings",
                "Focus on the long history and love you share, expressing that you want to move forward and are willing to let go of the past argument"
            ],
            verse: "Among all created beings, I am the beginning and the end and also the middle, O Arjuna (meaning: Krishna is the bond uniting all relationships).",
            verseNumber: "Chapter 10, Verse 32",
            stickFigureScene: "friendship_reconciliation",
            tags: ["reconciliation", "conflict resolution", "pride", "forgiveness", "humility"]
        ),

        LifeScenario(title: "Friend’s Mental Health Crisis",
            description: "Your close friend is in the depths of severe depression. They have withdrawn from everyone and sometimes express dark, hopeless thoughts. While you want to support them, the emotional toll on you is heavy, and you sometimes feel overwhelmed and helpless, even considering distancing yourself to protect your own mental health.",
            category: .relationships,
            chapter: 11,
            heartResponse: "Pull back or cut contact to protect your own emotional state, rationalizing that you can’t save them",
            dutyResponse: "Be a steady supportive presence while encouraging professional help, and simultaneously maintain your own emotional and spiritual strength",
            gitaWisdom: "Chapter 11 shows the Divine present even in the darkest situations. Krishna in His universal form is with all beings. Supporting a suffering friend is a sacred service—*karuna* (compassion) is a divine quality. Krishna would encourage helping others through their darkness but without ego (“I am the sole doer”). Recognize the Supersoul (God) in your friend’s heart is ultimately guiding them; you are an instrument of support, not the entire solution. This perspective helps you stay compassionate without feeling solely responsible.",
            actionSteps: [
                "Regularly reach out with messages or short calls to remind them they’re not alone, even if they don’t always respond positively",
                "Encourage and help them connect with a mental health professional or support group; offer to help with logistics if needed",
                "Set small boundaries for yourself: it’s okay to take an evening to recharge or seek counsel for your own feelings, so you can continue to be there for them",
                "Pray or meditate on their behalf, visualizing them surrounded by light and comfort—this not only can help them subtly, but also gives you strength and calm to continue supporting"
            ],
            verse: "I am the Self seated in the hearts of all creatures… (implying God is with your friend even in their darkness, and you are not alone in helping them).",
            verseNumber: "Chapter 10, Verse 20",
            stickFigureScene: "depression_friend_support",
            tags: ["depression", "mental health", "support", "compassion", "boundaries"]
        ),

        // ... (Add scenarios up to 25 for Chapter 11)
        
        LifeScenario(
            title: "Facing the Loss of a Loved One",
            description: "A parent just passed. You're overwhelmed by grief and fear of moving on.",
            category: .mentalHealth,
            chapter: 2,
            heartResponse: "My world has ended—I’ll never recover.",
            dutyResponse: "Understand death as a natural change; honor memories without clinging.",
            gitaWisdom: "Death is certain and part of life. The soul moves beyond the body as one changes garments.",
            actionSteps: [
                "Create a ritual or small ceremony to honor them.",
                "Read or reflect on verses about soul’s eternity.",
                "Express feelings through art, prayer, or journaling.",
                "Seek support from friends or groups as you adjust."
            ],
            verse: "\"As a person sheds worn‑out garments and takes new ones, likewise the soul casts off worn bodies." ,
            verseNumber: "2.22",
            stickFigureScene: "depression_friend_support",
            tags: ["grief", "loss", "death", "acceptance"]
        ),
        LifeScenario(
            title: "Devastated by a Breach of Trust",
            description: "A close friend betrayed your confidence. You feel lost, resentful, and unsure how to trust again.",
            category: .relationships,
            chapter: 2,
            heartResponse: "Can’t forgive. Trust nobody ever.",
            dutyResponse: "Acknowledge your pain, but allow understanding and detachment to restore inner peace.",
            gitaWisdom: "Treat loss and gain alike; maintain inner steadiness as your mind purifies.",
            actionSteps: [
                "Journal feelings to separate emotion from fact.",
                "Talk with the friend, express hurt, seek closure.",
                "Practice acceptance that people are fallible.",
                "Protect your heart but remain open to future trust."
            ],
            verse: "\"Be steadfast in your duty, abandoning attachment to success and failure." ,
            verseNumber: "2.48",
            stickFigureScene: "depression_friend_support",
            tags: ["betrayal", "healing", "trust"]
        ),
        LifeScenario(
            title: "Torn Between Family Obligations and Personal Goals",
            description: "You’re caring for aging parents but also want to pursue further studies. You feel guilt and frustration.",
           //nishant  category: .family,
            category: .mentalHealth,
            chapter: 3,
            heartResponse: "I’m selfish for wanting more—I should just sacrifice my dreams.",
            dutyResponse: "Fulfill family duties responsibly while dedicating focused time to your personal growth—offer both as service.",
            gitaWisdom: "Selfless action, without attachment to results, leads to peace and advancement.",
            actionSteps: [
                "Create a balanced schedule—study blocks and caregiving time.",
                "Share responsibility or seek support where possible.",
                "Offer your personal pursuits as devotion, not selfish ambition.",
                "Reflect weekly on progress and recalibrate if needed."
            ],
            verse: "\"When you perform actions without attachment to results, you attain the Supreme." ,
            verseNumber: "3.19",
            stickFigureScene: "obligation",
            tags: ["caretaking", "balance", "duty"]
        ),

        LifeScenario(
            title: "Struggling to Control Racing Thoughts",
            description: "Your mind keeps preoccupied with worries—work deadlines, family issues—you struggle to sleep.",
            category: .mentalHealth,
            chapter: 6,
            heartResponse: "My mind is broken—I’ll never get peace.",
            dutyResponse: "Train your mind through meditation, pulling it back from distractions again and again.",
            gitaWisdom: "Withdraw the mind from distractions and control it. A disciplined mind remains steady like a lamp without wind.",
            actionSteps: [
                "Practice a daily 10‑minute breathing meditation.",
                "Use guided apps to gently bring your focus home.",
                "Limit screens before bed to reduce wandering thoughts.",
                "Journal to empty worries before sleep."
            ],
            verse: "\"Wherever the flickering mind wanders, withdraw it and make it fixed." ,
            verseNumber: "6.26",
            stickFigureScene: "obligation",
            tags: ["mindfulness", "sleep", "anxiety"]
        ),



        // CHAPTER 13: NATURE, THE SELF, AND CONSCIOUSNESS (25 scenarios)
        LifeScenario(title: "Recurring Misunderstandings with Partner",
            description: "You and your romantic partner keep having the same argument over and over because your communication styles are completely different. A simple discussion often escalates into hurt feelings and confusion. It’s creating distance between you despite both of you having good intentions.",
            category: .relationships,
            chapter: 13,
            heartResponse: "Insist that your way of communicating is correct and that they need to change to understand you",
            dutyResponse: "Learn about and adapt to each other’s communication styles to foster mutual understanding, seeing this effort as an act of love",
            gitaWisdom: "Chapter 13 teaches about the field (body/mind) and the knower of the field (soul). Each person has a unique nature and conditioning. Krishna shows that wisdom includes humility, adaptability, and understanding others’ perspectives. Insisting on our own way is a sign of ego. By recognizing your partner’s mind works differently (their 'field' is different) but their soul is equally divine, you can approach conflicts more empathetically. Adapting your approach to reach their heart is a service to the divine in them.",
            actionSteps: [
                "Study or discuss with your partner what each of your communication preferences are (for example, one might need time to process, the other prefers to talk immediately)",
                "Practice active listening: repeat back what you heard to confirm you understand them, even if you don’t agree initially",
                "Use ‘I’ statements about your feelings instead of accusatory ‘you’ statements, and invite them to do the same, to reduce defensiveness",
                "Agree on some rules for difficult conversations (like taking breaks if voices get raised, or writing things down if talking fails) to manage misunderstandings better"
            ],
            verse: "The humble sage, by true knowledge, sees that the different natures in all these bodies are created by Nature, and that the self is beyond these variations.",
            verseNumber: "Chapter 13, Verse 2 (concept applied)",
            stickFigureScene: "communication_breakdown_resolution",
            tags: ["communication", "misunderstandings", "relationship", "adaptation", "clarity"]
        )

        // ... (Add scenarios including the "Fear of Not Being Good Enough" from user_files snippet, body image, boundaries, humility, unique path, etc., up to 25 for Chapter 13)

        // CHAPTER 18: LIBERATION (8 scenarios)
        // ... (Assume existing scenarios for Chapter 18 refined here)
    ]
}

*/
