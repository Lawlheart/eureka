user = User.create(email: 'krieger@example.com', password: 'guest')

tribute = Blueprint.create(
    name: 'Build a Tribute Page',
    description: 'Objective: Build a CodePen.io app that is functionally similar to the demo application. Fulfill the below user stories. Use whichever libraries you need. Give it your own personal style.',
    demo_url: 'https://codepen.io/FreeCodeCamp/full/NNvBQW',
    source: 'FreeCodeCamp',
    source_url: 'https://www.freecodecamp.com/challenges/build-a-tribute-page',
    user_id: user.id)

tribute.stories.push(Story.new(content: 'I can view a tribute page with an image and text.'))
tribute.stories.push(Story.new(content: 'I can click on a link that will take me to an external website with further information on the topic.'))

portfolio = Blueprint.create(
    name: 'Personal Portfolio Webpage',
    description: 'Objective: Build a CodePen.io app that is functionally similar to the demo application. Fulfill the below user stories. Use whichever libraries you need. Give it your own personal style.',
    demo_url: ' https://codepen.io/FreeCodeCamp/full/YqLyXB',
    source: 'FreeCodeCamp',
    source_url: 'https://www.freecodecamp.com/challenges/build-a-personal-portfolio-webpage',
    user_id: user.id)

portfolio.stories.push(Story.new(content: 'I can access all of the portfolio webpage\'s content just by scrolling.'))
portfolio.stories.push(Story.new(content: 'I can click different buttons that will take me to the portfolio creator\'s different social media pages.'))
portfolio.stories.push(Story.new(content: 'I can see thumbnail images of different projects the portfolio creator has built (if you haven\'t built any websites before, use placeholders.)'))
portfolio.stories.push(Story.new(content: 'I navigate to different sections of the webpage by clicking buttons in the navigation.'))
