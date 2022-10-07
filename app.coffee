# default settings
Framer.DeviceComponent.Devices["my-device"] =
	name: "My Device"
	deviceType: "mobile"
	deviceImage: "/images/device.png"
	deviceImageWidth: 432	
	deviceImageHeight: 926
	screenWidth: 
		if Utils.isDesktop()
			390
		else if Utils.isMobile()
			390 * (Screen.width/390)
	screenHeight:
		if Utils.isDesktop()
			844
		else if Utils.isMobile()
			844 * (Screen.width/390)
Framer.Device.deviceType = "my-device"

Framer.Extras.Hints.disable()	

screen_width = Screen.width 
screen_height = Screen.height

default_w = 390
default_h = 844

ratio = screen_width / default_w

Framer.Defaults.Layer.force2d = true

all = new Layer
  width: default_w  
  height: default_h 
  scale: ratio   
  originY: 0   
  y: 0  
all.centerX() 

notificationbar = new Layer
	parent: all
	backgroundColor: '#fff'
	width: all.width
	height: 25

content = new Layer
	parent: all
	width: all.width
	height: all.height - notificationbar.height
	y: notificationbar.maxY
	backgroundColor: '#bbded6'

# put your content below
# parent: content

