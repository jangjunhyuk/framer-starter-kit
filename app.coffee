# deviceType can be either "phone" or "desktop"
Framer.DeviceView.Devices["apple-iphone-15"] =
  deviceType: "phone"
  screenWidth: 393*3
  screenHeight: 852*3
  deviceImage: "images/iphone15.png"
  deviceImageWidth: 1311
  deviceImageHeight: 2664
  devicePixelRatio: 1

# default settings
Framer.Device.deviceType = "apple-iphone-15"
Framer.Device.screen.borderRadius = 50*3
Framer.Device.background.backgroundColor = "#000"
Framer.Device.contentScale = 3
Framer.Extras.Hints.disable()	

screen_width = Screen.width 
screen_height = Screen.height

default_w = 393
default_h = 852

ratio = screen_width / default_w

Framer.Defaults.Layer.force2d = true

All = new Layer
  width: default_w  
  height: default_h 
  scale: ratio   
  originY: 0   
  y: 0  
All.centerX() 

Content = new Layer
	parent: All
	width: All.width
	height: All.height
	backgroundColor: '#fff'

# put your content below
# parent: Content 


# This is the layer located at the very front
notification = new Layer
  parent: Content
  width: 393
  height: 54
  image: "images/statusbar.png"
  index: 9
notification.bringToFront()

indicator = new Layer
  parent: Content
  width: 393
  height: 21
  image: "images/indicator.png"
  maxY: Content.height
indicator.bringToFront()