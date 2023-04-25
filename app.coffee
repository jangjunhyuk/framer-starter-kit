# default settings
Framer.Device.deviceType = "apple-iphone-x-space-gray"
Framer.Extras.Hints.disable()	

screen_width = Screen.width 
screen_height = Screen.height

default_w = 375
default_h = 812

ratio = screen_width / default_w

Framer.Defaults.Layer.force2d = true

All = new Layer
  width: default_w  
  height: default_h 
  scale: ratio   
  originY: 0   
  y: 0  
All.centerX() 

SafeAreaTop = new Layer
	parent: All
	backgroundColor: '#fff'
	width: All.width
	height: 47

SafeAreaBottom = new Layer
  parent: All
  maxY: All.height
  backgroundColor: '#fff'
  width: All.width
  height: 34

Content = new Layer
	parent: All
	width: All.width
	height: All.height - SafeAreaTop.height - SafeAreaBottom.height
	y: SafeAreaTop.maxY
	backgroundColor: '#fff'

# put your content below
# parent: Content
