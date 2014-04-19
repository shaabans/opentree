# Opentree

## Problem
Measuring tree growth over time provides incredibly valuable environmental data, but is very difficult to collect.  Even professionally collected urban tree inventories (such as [this](http://www2.daveytreekeeper.com/mytreekeeper/index.html?ds=14)) rarely house much, if any, data on tree size over time. 

## Approach
Opentree responds to the Tree Factor challenge with three big ideas:

1. Opentree leverages existing tools to collect tree growth data instead of inventing every aspect of the system. We are using Flickr to capture, catalog, index, store and share data. This is cheaper, better, faster than building our own system (by a long shot) and familiar to a wide range of people.

2. Opentree solves a tough image recognition problem by using familiar objects in a novel way. We have our citizen scientists put an 8.5" x 11" piece of paper on a tree, then crop their images to the size of the tree, which gives us everything we need to figure out the tree's size accurately using computer vision techniques.

3. Real scientific data can be collected by any citizen scientists old enough to use a smartphone. Crowdsourcing has been done well [time](http://setiathome.ssl.berkeley.edu/) and [time again](https://www.duolingo.com/) in the past, and finds a perfect application here.

## Solution
Opentree enlists citizen scientists to take pictures of trees in their neighborhoods. By pinning an 8.5" x 11" piece of white paper to a tree, they provide a reference that computer vision algorithms can use to figure out the real size of the tree. By cropping the image to the tree's height and width, they do the hard work of distinguishing the tree from the background.  Our citizen scientists upload their images to Flickr, tagged with "opentree." Opentree does the rest.  It collects properly tagged images using the Flickr API, calculates tree sizes using computer vision algorithms, and stores everything (including location and time taken from the image) in a database.  The [website we built](http://www.opentree.info) gamifies further data collection by engaging visitors and providing "badges" for achievements such as collecting the most images in the area, or "owning" the image of the tallest tree in the region.

## Next Steps
We just conceived this idea over a weekend hackathon, but are excited about the potential and developing strategic partnerships to help us test / develop ideas / gather data, building the computer vision algorithms needed to analyze images, and building the website and database of results.

### Recruiting Local Organizations
[Tree Pittsburgh](http://treepittsburgh.org/) has helped us confirm the challenge associated with current methods of estimating tree height with current methods.  Tree Pittsburgh's Director of Urban Forestry said "In previous inventories that I have worked on, professionals use a clinometer and once trained are able to estimate heights. In NYC, volunteers were used but with extensive training and utilized pacing and triangulation to estimate tree height."  He is interested in methods that would simplify this process and is willing to assist in recruiting volunteers or interns to help gather initial data for [Opentree](http://www.opentree.info).

We are also reaching out to the [Pittsburgh Parks Conservancy](http://www.pittsburghparks.org/), [The Environmental Charter School](http://www.environmentalcharterschool.org/), and [South Side Tree](http://sstreeproject.com/).

### Computer Vision Techniques
Meanwhile, we are working on the computer vision and machine learning algorithms required to analyze images.  We are starting by building a feature detection system that can recognize an 8.5" x 11" piece of paper within an image, which will allow us to estimate the size of trees in properly cropped images. We will gather and label sample data, utilizing machine learning techniques to get better with time.

### Opentree Website
Users will upload images via [Flickr](https://www.flickr.com/), but will interact with the system via [the Opentree website](http://www.opentree.info).

We built the current version of the website over the weekend of the Space Apps Challenge using [Ruby on Rails](http://rubyonrails.org/) and a number of open source Gems such as [flickraw](http://hanklords.github.io/flickraw/) and [Gmaps4rails](https://github.com/apneadiving/Google-Maps-for-Rails).   [The current Opentree website](http://www.opentree.info) pulls images from Flickr that are tagged with "opentree" and displays them on a map using the location data they contain.

The next website iteration will store tree data (using fields defined by experts such as folks at [Tree Pittsburgh](http://treepittsburgh.org/)), and will prototype the gamification that will be essential to make Opentree fun.  Visiting the website will prompt a user with challenges requiring varying levels of engagement: for example, to help identify the species of a nearby tree, or to take a new picture of a tree in their neighborhood which had an image taken last year, or to look at a few images to confirm if they are cropped properly and if the 8.5" x 11" paper is properly identified. Website visitors will earn points and badges for these things.
