//
//  Articles.swift
//  
//
//  Created by Antonio Palomba on 19/04/23.
//

import SwiftUI

struct Articles: Identifiable {
    let id = UUID()
    var title: String
    var subtitle: String
    var text: String
    var image: String
    var background: String
    var articleBody: String
}

var articles = [

    // The internal clock
    Articles(
        title: "The Internal Clock",
        subtitle: "3 minutes",
        text: "How does your body know when it’s time to sleep? The Circadian Rhythm.",
        image: "Clock1",
        background: "Desert1",
        articleBody: """
One of the most important things affecting our sleep and wakefulness is our internal clock, which is located deep in our brain and follows a 24-hour cycle. This cycle, called the circadian rhythm, controls our feelings of tiredness and alertness at different times of the day and night. It's not just humans who have this rhythm - all living creatures with a lifespan of more than several days have it too!

Our circadian rhythm also affects other patterns in our bodies, such as our appetite, mood, and body temperature. It even influences the release of hormones and the amount of urine we produce! Interestingly, research shows that breaking an Olympic record is most likely to happen in the early afternoon when our circadian rhythm is at its peak.

Studies have shown that the average length of our internal clock is 24 hours and 15 minutes. Fortunately, our bodies use sunlight to help reset our internal clock every day, ensuring that it stays accurate. But sunlight isn't the only signal that our brain can use to reset our biological clock. Other external cues, like exercise, regular meals, and social interaction can also help.

As we approach bedtime, our body temperature drops and our biological clock coordinates this process. This drop in temperature is usually at its lowest point about two hours after we fall asleep. So, it's important to listen to our body's natural signals and try to maintain a regular sleep schedule.
"""
    ),

    // The Chronotypes
    Articles(
        title: "The Chronotypes",
        subtitle: "4 minutes",
        text: "Are you a Lark or a Owl? Discover how genetics influence sleep.",
        image: "Owl1",
        background: "Jungle1",
        articleBody: """
Some people feel more awake in the morning and sleepy in the evening, while others are the opposite. These two types of people are sometimes called "morning larks" and "night owls." About 40 percent of people are morning larks, while 30 percent are night owls. The remaining 30 percent are somewhere in between. If you're a night owl, you probably have a hard time falling asleep early at night. Instead, you tend to drift off in the early-morning hours. Because of this, you don't like waking up early and may have trouble functioning well in the morning. This is because your brain remains in a more sleep-like state, especially in a region called the prefrontal cortex.

Whether you're a morning lark or a night owl is largely determined by genetics. Unfortunately, society often treats night owls unfairly. For example, people may label you as lazy because you prefer to wake up later in the day. However, being a night owl isn't a choice; it's determined by your DNA. Additionally, many jobs start early in the morning, which can be difficult for night owls. This can lead to chronic sleep deprivation and reduced job performance.

As a society, we need to be more accommodating to different chronotypes. Just like we make accommodations for people with physical disabilities, we should offer more flexible work schedules that adapt to everyone's needs. This would benefit both morning larks and night owls and allow them to perform at their best.

You may wonder why Mother Nature has programmed this variability across people. Shouldn't we all be awake at the same time for optimal human interaction? However, humans likely evolved to co-sleep in groups, not alone or as couples. Night owls and morning larks can coexist in the same group and ensure that the group as a whole is only collectively vulnerable for a shorter period, potentially increasing survival fitness.
"""
    ),

    // Solar powered humans
    Articles(
        title: "Solar powered humans",
        subtitle: "5 minutes",
        text: "Discover how solar light influence melatonin and adenosine production.",
        image: "Solar1",
        background: "Desert2",
        articleBody: """
Another factor that determines when we feel sleepy and should go to bed is a chemical substance that builds up in our brain and creates what scientists call “sleep pressure”. This chemical is called adenosine, and it increases in concentration with every minute we are awake. The longer we stay awake, the more adenosine accumulates in our brain.

Adenosine is a natural byproduct of the body’s energy consumption, and it is produced when we use up adenosine triphosphate (ATP), a molecule that is involved in energy transfer between cells. When adenosine levels in the brain increase, it acts as a signal to the body that it’s time to rest.

As adenosine levels increase, they simultaneously turn down the “volume” of wake-promoting regions in the brain and turn up the dial on sleep-inducing regions. This is why we feel sleepier as the day wears on, and why we tend to get more and more tired the longer we stay awake.

The first factor that determines when we feel sleepy is our twenty-four-hour circadian rhythm. This rhythm is a biological process that regulates many physiological functions in our body, including sleep and wakefulness. The rhythm is controlled by a small group of nerve cells in the brain called the suprachiasmatic nucleus (SCN). The SCN receives signals from our eyes that tell it when it’s light outside and when it’s dark, and it uses this information to regulate the timing of our sleep and wake cycles.

As the day wears on and the sun starts to set, the SCN signals the pineal gland, an area situated deep in the back of our brain, to release a hormone called melatonin into our bloodstream. Melatonin acts like a powerful bullhorn, shouting out a clear message to the brain and body: “It’s dark, it’s dark!”. In this way, melatonin helps regulate the timing of when sleep occurs by signaling darkness throughout the organism.

However, melatonin has little influence on the generation of sleep itself. It simply provides the official instruction to commence the event of sleep, but does not participate in the sleep race itself. For these reasons, melatonin is not a powerful sleeping aid in and of itself, at least not for healthy, non-jet-lagged individuals.

That said, there is a significant sleep placebo effect of melatonin, which should not be underestimated.

Melatonin slowly decreases in concentration across the night and into the morning hours. With dawn, as sunlight enters the brain through the eyes (even through the closed lids), a brake pedal is applied to the pineal gland, thereby shutting off the release of melatonin. The absence of circulating melatonin now informs the brain and body that the finish line of sleep has been reached.
"""
    ),

    // Tricking your organism
    Articles(
        title: "Tricking your organism",
        subtitle: "5 minutes",
        text: "All the truth about your favourite psychoactive stimulant: the caffeine.",
        image: "Coffee1",
        background: "City2",
        articleBody: """
You can trick your brain into feeling more alert and awake by consuming caffeine, a chemical that blocks the sleep signal of adenosine. However, caffeine can persist in your system for a long time, leading to a phenomenon known as a "caffeine crash" when the liver successfully removes the caffeine from your body.

Caffeine is a widely used psychoactive stimulant that is not a food supplement. It is the second most traded commodity in the world after oil. When you consume caffeine, it battles with adenosine for the privilege of latching onto adenosine receptors in your brain. Once caffeine occupies these receptors, it effectively blocks and inactivates them, acting as a masking agent.

Caffeine does not stimulate these receptors like adenosine does, which makes you sleepy. Instead, caffeine tricks your brain into feeling alert and awake, despite the high levels of adenosine that would otherwise seduce you into sleep. Circulating caffeine levels peak around thirty minutes after oral administration.

However, caffeine's persistence in your system is problematic. In pharmacology, the term "half-life" refers to the length of time it takes for the body to remove 50 percent of a drug's concentration. Caffeine has an average half-life of five to seven hours, which means that 50 percent of the caffeine you consume may still be active and circulating throughout your brain tissue by 1:30 a.m. if you have a cup of coffee after your evening dinner, around 7:30 p.m.

Half a shot of caffeine is still powerful, and much more decomposition work lies ahead throughout the night before caffeine disappears. Additionally, decaffeinated does not mean non-caffeinated. One cup of decaf usually contains 15 to 30 percent of the dose of a regular cup of coffee, which is far from caffeine-free.

Your liver removes caffeine from your system by degrading it over time using an enzyme. Based on genetics, some people have a more efficient version of the enzyme that degrades caffeine, allowing the liver to rapidly clear it from the bloodstream. Others have a slower-acting version of the enzyme, which takes far longer for their system to eliminate the same amount of caffeine. As a result, they are very sensitive to caffeine's effects.

If you are trying to stay awake late into the night by drinking coffee, you should be prepared for a nasty consequence when your liver successfully removes the caffeine from your system: a caffeine crash. Your energy levels plummet rapidly, and you find it difficult to function and concentrate, with a strong sense of sleepiness once again.

For the entire time that caffeine is in your system, the sleepiness chemical it blocks (adenosine) nevertheless continues to build up. However, your brain is not aware of this rising tide of sleep-encouraging adenosine because the wall of caffeine you've created is holding it back from your perception. But once your liver dismantles that barricade of caffeine, you feel a vicious backlash: you are hit with the sleepiness you had experienced two or three hours ago before you drank that cup coffee, plus all the extra adenosine that has accumulated in the hours in between, impatiently waiting for caffeine to leave.

When the receptors become vacant by way of caffeine decomposition, adenosine rushes back in and smothers the receptors. When this happens, you are assaulted with a most forceful adenosine-trigger urge to sleep.
"""
    ),

    // Getting enough sleep?
    Articles(
        title: "Getting enough sleep?",
        subtitle: "5 minutes",
        text: "How do you know whether you’re routinely getting enough sleep?",
        image: "Girl1",
        background: "City1",
        articleBody: """
If you wake up in the morning and can fall back asleep at ten or eleven a.m., it could indicate that you are not getting enough quality sleep.
This means that your body is still tired and craving more rest even after a full night's sleep. It's important to pay attention to your body's signals and adjust your sleep schedule accordingly to ensure you are getting enough rest. This may involve going to bed earlier, creating a bedtime routine, or seeking help from a healthcare professional if necessary.

If you need caffeine to function optimally before noon, it could indicate that you are chronically sleep-deprived.
Caffeine is a stimulant that can temporarily improve alertness and focus, but it is not a substitute for quality sleep. If you find yourself relying on caffeine to get through the morning, it may be time to reevaluate your sleep habits and make changes to prioritize rest. This could include adjusting your sleep schedule, limiting caffeine intake, or seeking medical advice if you have trouble sleeping.

If you would sleep past your usual wake-up time without an alarm clock, it could indicate that you need more sleep.
This means that your body is naturally inclined to sleep for longer than you are allowing it to. It's important to listen to your body's signals and give it the rest it needs. This may involve adjusting your sleep schedule or making changes to your sleep environment to ensure optimal sleep conditions.

If you find yourself struggling to concentrate and rereading the same sentence multiple times, it could be a sign of fatigue and lack of sleep.
When your brain is tired and fatigued, it can be difficult to focus and retain information. This can result in the need to reread material multiple times in order to understand it. If this is a common occurrence, it may be a sign that you are not getting enough quality sleep and need to adjust your sleep habits.

If you sometimes forget what color the last few traffic lights were while driving, it could be a sign of distraction or lack of sleep.
While distraction is a common cause of forgetting details while driving, a lack of sleep can also be a contributing factor. It's important to ensure that you are getting enough rest to avoid any potential dangers associated with sleep-deprivation and driving.

If you are experiencing daytime fatigue, impairment, or distress, it's important to seek help from a healthcare professional to determine if there is an underlying sleep disorder that needs to be addressed. It's important to avoid relying on sleeping pills as a first option, as there may be other factors contributing to your sleep issues that can be addressed with lifestyle changes or other treatments.
"""
    ),

    // Sleep or Coma?
    Articles(
        title: "Sleep or Coma?",
        subtitle: "3 minutes",
        text: "How do we know that someone is sleeping.",
        image: "Sloth1",
        background: "Jungle2",
        articleBody: """
As human beings, we have developed an innate ability to recognize when someone is sleeping. We have become incredibly skilled at detecting a number of signals that indicate that an individual is in a state of slumber. These signals are consistent across different species and are the result of millions of years of evolution.

One of the most obvious signs of sleep is the way in which sleeping organisms position their bodies. Land animals, for example, often adopt a horizontal position when they are sleeping. This is a stereotypical position that is common across different species.

Another signal that someone is sleeping is the relaxation of postural skeletal muscles. These are the muscles that keep you upright and prevent you from collapsing to the floor. When you are sleeping, these muscles become relaxed, allowing your body to sink into a state of rest.

Sleeping individuals also show no overt displays of communication or responsivity. They are unresponsive to external stimuli and do not engage in any kind of verbal or physical communication. This is because the brain is in a state of rest and is not actively processing information.

It is important to note that sleep is easily reversible. Unlike other states, such as coma, anesthesia, hibernation, and death, sleep can be easily disrupted. If someone is sleeping and is exposed to external stimuli, they will quickly awaken. This is an important distinction that differentiates sleep from other states.

Finally, sleep adheres to a reliable timed pattern. Our bodies have an internal clock that regulates our sleep-wake cycle. This clock is responsible for determining when we feel sleepy and when we feel alert. When we are sleeping, we follow a specific pattern of sleep stages that occur in a predictable sequence.

Given all of these signals, how do we know when we ourselves have slept? The answer is that we rely on our own experiences and sensations. When we wake up in the morning, we often feel refreshed and energized, which is a clear indication that we have had a good night's sleep. On the other hand, if we wake up feeling groggy or fatigued, it is a sign that we may not have slept well. We also rely on the feedback of others, who may notice if we are snoring or tossing and turning during the night. All of these signals help us to determine if we have slept and if we are getting the rest we need to function at our best.
"""
    ),

    // The sleep cycle
    Articles(
        title: "The sleep cycle",
        subtitle: "3 minutes",
        text: "What happens when you close your eyes.",
        image: "Man1",
        background: "Mountain2",
        articleBody: """
The battle between two types of sleep, NREM and REM, rages on every night, with each type taking turns to dominate for approximately ninety minutes. During the first half of the night, deep NREM sleep prevails, while REM sleep takes over during the latter half. This shift in dominance between the two types of sleep is crucial for maintaining our physical and mental health.

Deep NREM sleep, which dominates early in the night, is responsible for removing unnecessary neural connections in the brain. This process is essential for improving cognitive function and memory recall. During this phase of sleep, the brain also consolidates memories and processes information, leading to better learning outcomes.

On the other hand, REM sleep is prevalent during the latter half of the night and plays a vital role in strengthening neural connections in the brain. This phase of sleep is responsible for enhancing cognitive function and creativity by enabling the brain to make connections between seemingly unrelated ideas. Additionally, REM sleep is essential for emotional regulation and mental health, as it allows the brain to process emotions and experiences.

Aside from these cognitive benefits, both types of sleep provide critical physical benefits as well. NREM sleep is a time when the body repairs and regrows tissues, builds bone and muscle, and strengthens the immune system. REM sleep, on the other hand, is essential for the maintenance of healthy bodily functions, including regulating blood sugar levels and preventing cardiovascular disease.

It is important to note that the quality of our sleep is just as crucial as the quantity. The timing and duration of our sleep play a critical role in determining the amount of NREM and REM sleep we experience. Therefore, it is essential to prioritize good sleep hygiene practices to optimize the quality of our sleep.

In conclusion, the battle between NREM and REM sleep is essential for maintaining both our physical and mental health. While NREM sleep helps remove unnecessary neural connections in the brain, improving cognitive function, REM sleep is responsible for strengthening neural connections, leading to better creativity and emotional regulation. Therefore, to optimize the benefits of both types of sleep, it is essential to prioritize good sleep hygiene practices to achieve better sleep quality.
"""
    ),

    // Dreams and their role
    Articles(
        title: "Dreams and their role",
        subtitle: "4 minutes",
        text: "Does the dreams have a real function.",
        image: "Portal1",
        background: "Mountain3",
        articleBody: """
Dreams are a fundamental aspect of our sleep cycle, but the precise purpose of dreaming is still a topic of debate among researchers. Many theories have been proposed over the years to explain the function of dreams and their significance in our lives.

One theory suggests that dreams are a product of random neural activity that takes place in the brain during sleep. This theory, known as the "continual-activation theory of dreaming," posits that the brain is constantly active, even during sleep, and that dreams are a way for the brain to make sense of this activity. Dreams allow the brain to process and integrate new information, emotions, and experiences from our waking lives.

Another theory, the "threat simulation theory," suggests that dreams may serve as a means for individuals to prepare for potential dangers or challenges in waking life. Dreams, according to this theory, may function as a kind of virtual reality, enabling individuals to explore and rehearse various scenarios and outcomes in a safe and controlled environment.

Other researchers have suggested that dreams may have more specific functions, such as helping people to process and regulate their emotions or to problem-solve by considering different scenarios and outcomes. For instance, someone who is going through a difficult emotional situation in their waking life may have dreams that allow them to work through those emotions in a symbolic or metaphorical way.

While the exact function of dreams is not fully understood, they are an essential aspect of our sleep cycle and may serve a variety of purposes. By paying attention to our dreams and exploring their meaning and significance, we may gain valuable insights into our thoughts, emotions, and experiences.

Many people report having vivid and memorable dreams, while others may not remember their dreams at all. Some individuals may experience recurring dreams or nightmares, which can be distressing and disruptive to their sleep. Others may engage in lucid dreaming, a phenomenon where a person becomes aware that they are dreaming and may be able to control their dreams to some degree.

Dreams are thought to occur during the REM (rapid eye movement) stage of sleep, which typically occurs several times throughout the night. During REM sleep, the brain is highly active, and the body is in a state of paralysis. This paralysis prevents individuals from acting out their dreams, which can be dangerous or disruptive.

While dreaming may serve a variety of functions, it is clear that dreams can be an important source of insight and inspiration for many people. Some individuals may find that their dreams help them to solve problems or make important decisions in their waking lives. Others may use dreams as a means of exploring their creativity or spirituality.

For some individuals, dreams may also be a source of anxiety or distress. Nightmares, for instance, can be frightening and may leave individuals feeling shaken or traumatized. Sleep disorders such as sleep apnea or insomnia can also disrupt the normal sleep cycle, which may result in a lack of dreaming or disrupted dreaming patterns.

Despite the many mysteries surrounding dreams and their function, they remain an integral part of the human experience. Whether we remember our dreams or not, they can have a profound impact on our thoughts, emotions, and behavior. By paying attention to our dreams and exploring their significance, we may be able to unlock new insights into ourselves and our lives.
"""
    ),

    // Hearth and sleep
    Articles(
        title: "Hearth and sleep",
        subtitle: "3 minutes",
        text: "Sleep Deprivation: an heart-breaking news.",
        image: "Hearth1",
        background: "Sea1",
        articleBody: """
People who are over the age of 45 and sleep less than six hours per night are two times more likely to experience a heart attack or stroke during their lifetime compared to those who sleep seven to eight hours per night.

Even a small reduction in sleep time, such as one or two hours, can lead to a faster heart rate and increased blood pressure, which can put a person at risk for heart attack, heart failure, and stroke. Deep NREM sleep is important because it sends a calming signal to the body's fight-or-flight response, which helps to prevent physiological stress that can lead to these health problems. This type of sleep also helps to manage blood pressure and prevent hypertension.

When the Northern Hemisphere switches to daylight savings time in March, most people lose an hour of sleep. Studies have shown that this small reduction in sleep time leads to a significant increase in heart attacks the following day. This effect is also seen in the number of traffic accidents. When the clocks move forward in the fall and people gain an hour of sleep opportunity, rates of heart attacks decrease the following day.

People often underestimate the importance of losing just one hour of sleep, but it can have a significant impact on their health. The brain is just as sensitive as the heart to small changes in sleep, which can lead to attention lapses and microsleeps that increase the risk of health problems.
"""
    ),

    // Weight and sleep
    Articles(
        title: "Weight and sleep",
        subtitle: "4 minutes",
        text: "How sleep can influence Weight and eating habits.",
        image: "Food1",
        background: "Jungle3",
        articleBody: """
Have you ever noticed that when you don't sleep well, you tend to eat more? Some people think it's because when you stay awake longer, you burn more calories and your body needs more food to keep going. But that's not actually true. In experiments where people were sleep-deprived, they didn't burn any more calories than when they got a full night's sleep.

One study, conducted by Van Cauter, had participants spend four nights getting eight and a half hours of sleep and then four nights getting only four and a half hours of sleep. The participants were given the same level of physical activity each day and had free access to food. The researchers found that when the participants were sleep-deprived, they ate an extra 300 calories each day compared to when they were getting enough sleep. Over the course of the experiment, that added up to more than 1,000 extra calories. If you give people only five to six hours of sleep over a ten-day period, they will still eat more than they need to. Over the course of a year, that could add up to 10 to 15 pounds of weight gain.

In another experiment, Van Cauter had participants go through the same sleep conditions but added a twist. On the last day of each condition, the participants were offered a buffet of food that included meats, vegetables, bread, potatoes, salad, fruit, and ice cream. There was also a snack bar filled with cookies, chocolate bars, chips, and pretzels. The participants could eat as much as they wanted during the four-hour period, and they ate alone to avoid any social or stigmatizing influences.

Despite eating almost 2,000 calories during the buffet lunch, the sleep-deprived participants still went to the snack bar and ate an additional 330 calories of snack foods. This shows that when people don't get enough sleep, they tend to crave unhealthy foods like sweets, carbohydrate-rich foods, and salty snacks.

The reason why people crave unhealthy foods when they don't get enough sleep is because of changes in hormones that regulate hunger and fullness. When you don't sleep enough, your body produces more of the hormone ghrelin, which makes you feel hungry, and less of the hormone leptin, which makes you feel full. This makes it harder to resist unhealthy foods and causes you to eat more than you need to.
"""
    ),

    // Education and sleep
    Articles(
        title: "Education and sleep",
        subtitle: "4 minutes",
        text: "How school and society can influence sleep deprivation.",
        image: "School1",
        background: "City1",
        articleBody: """
Have you ever noticed that when you don't sleep well, you tend to eat more? Some people think it's because when you stay awake longer, you burn more calories and your body needs more food to keep going. But that's not actually true. In experiments where people were sleep-deprived, they didn't burn any more calories than when they got a full night's sleep.

One study, conducted by Van Cauter, had participants spend four nights getting eight and a half hours of sleep and then four nights getting only four and a half hours of sleep. The participants were given the same level of physical activity each day and had free access to food. The researchers found that when the participants were sleep-deprived, they ate an extra 300 calories each day compared to when they were getting enough sleep. Over the course of the experiment, that added up to more than 1,000 extra calories. If you give people only five to six hours of sleep over a ten-day period, they will still eat more than they need to. Over the course of a year, that could add up to 10 to 15 pounds of weight gain.

In another experiment, Van Cauter had participants go through the same sleep conditions but added a twist. On the last day of each condition, the participants were offered a buffet of food that included meats, vegetables, bread, potatoes, salad, fruit, and ice cream. There was also a snack bar filled with cookies, chocolate bars, chips, and pretzels. The participants could eat as much as they wanted during the four-hour period, and they ate alone to avoid any social or stigmatizing influences.

Despite eating almost 2,000 calories during the buffet lunch, the sleep-deprived participants still went to the snack bar and ate an additional 330 calories of snack foods. This shows that when people don't get enough sleep, they tend to crave unhealthy foods like sweets, carbohydrate-rich foods, and salty snacks.

The reason why people crave unhealthy foods when they don't get enough sleep is because of changes in hormones that regulate hunger and fullness. When you don't sleep enough, your body produces more of the hormone ghrelin, which makes you feel hungry, and less of the hormone leptin, which makes you feel full. This makes it harder to resist unhealthy foods and causes you to eat more than you need to.
"""
    ),

    // The 12 golden tips
    Articles(
        title: "The 12 golden tips",
        subtitle: "3 minutes",
        text: "Tips on how to improve sleep quality and feel more rested and energized during the day.",
        image: "Golden1",
        background: "Mountain3",
        articleBody: """
To sleep better and improve the quality of your sleep, you can follow these 12 tips:

1. Try to go to bed and wake up at the same time every day. Going to bed and waking up at the same time every day helps regulate the body's internal clock, making it easier to fall asleep and wake up.
2. Do something relaxing before bed like reading a book or taking a warm bath.
3. Make sure your sleeping environment is cool, dark, and quiet.
4. Invest in a comfortable bed and pillows.
5. Avoid using electronic devices that emit blue light before bed: blue light emitted by electronic devices can disrupt the body's natural sleep-wake cycle, so avoiding these devices before bed is best.
6. Don't drink caffeine, smoke, or drink alcohol close to bedtime.
7. Eat healthily and exercise regularly.
8. Try not to take long naps during the day or limit naps to no more than 30 minutes. Also, try to not nap after 3 p.m.
9. Practice relaxation techniques like deep breathing or meditation to manage stress.
10. Seek medical help if you have trouble sleeping for a long time.
11. Cognitive-behavioural therapy (CBT) can be helpful in treating insomnia, for example, if you are having the thought "I'll never be able to fall asleep," you might examine evidence that contradicts this thought, such as times when you have been able to fall asleep in the past.
12. Learn about the importance of sleep and how it affects your health.

Following these tips can improve your sleep quality and feel more rested and energised during the day.
"""
    ),

]
