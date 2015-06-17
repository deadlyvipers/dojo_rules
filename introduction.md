Hello my name is Jr Pribs!

##The Big Idea
The Physical Web extends the web we know into the physical world around us. This involves creating an open ecosystem where smart devices can broadcast URLs into the area around them. Any nearby display such as a phone or tablet can then see these URLs and offer them up to the user. It mirrors the basic behavior we have today with a search engine:

* The user requests a list of what's nearby.
* A ranked list of URLs is shown.
* The user picks one.
* The URL is opened in a full screen browser window.

<img src="https://raw.githubusercontent.com/google/physical-web/master/documentation/images/example.png" width="60%">

Even though this is a fairly simple idea, it immediately generates lots of questions:

##0. Wait, why are you an app?
This is an early prototype. We are trying to get people to experiment with this at an early stage. Of course, this should be built into all smartphones (and tablets and anything with a screen really). We are building an app for now that tries to not feel like an app. It works in the background so you don't need to use it actively. It just silently monitors beacons that you can browse when you're interested.

##1. Will you be pestering people with alarms?
A core principle of this system is **no proactive notifications**. The user will only see a list of nearby devices when they ask. If your phone were to be buzzing constantly as you walked through the mall, it would be very frustrating. Push notifications in general are too easily abused. Of course, the user can opt-in to notifications, we are just saying that by default, the user must ask to see anything nearby.

In addition, we only scan when the screen is on: there is no scanning that goes on when the phone is in your pocket. This is consistent with our 'no interruptions' goal but it also has a large positive impact on power usage. Using this app should have very little impact on your phone's battery life.

##2. Isn't there going to be a big list to choose from?
At first, the nearby smart devices will be small but if we're successful, there will be many to choose from and that raises an important UX issue. This is where ranking comes in. Today, we are perfectly happy typing "tennis" into a search engine and getting millions of results back, we trust that the first 10 are the best ones. The same applies here. The phone agent can sort by both signal strength as well as personal preference and history, among many other possible factors. Clearly there is lots of work to be done here. We don't want to minimize this task, but we feel that this simple signal strength ranking can get us very far for the first few versions of this project.

##3. Is this secure/private?
URLs broadcast in the clear so anyone can see them. This is by design. That is why we're initially suggesting this to be used in public spaces. This does raise issues for home use where it would be possible for neighbors to intercept beacons. However, one of the big advantages of URLs is that there are so many ways they can be used to increase their security:

* The URL could be obfuscated (e.g. using a non-branded domain)
* The web page could require a login
* A rotating token on the beacon would constantly change the URL
* The URL could reference an IP address that is only accessible when connected to a local network

