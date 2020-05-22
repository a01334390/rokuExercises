
function init() 
    ' Every Scenegraph component must define an init() function
    ? "[home_scene] init"
    'm.top is the reference of the object that runs this code.
    m.top.backgroundURI = ""
    m.top.backgroundColor = "0xFFFFFFFF"
    m.center_square.setFocus(true)
end function

sub main()
    ' Core component of Scene Graph, there should be only one.
    screen = CreateObject("roSGScreen")
    ' Creates an instance of the component declared in the xml
    scene = screen.createScene("home_scene")
    ' Triggers component rendering
    screen.Show()

    port = CreateObject(m.port)
    screen.setMessagePort(m.port)
    ' A loop has to be kept running to keep the app alive
    while(true)
        ' Nothing really
    end while
end sub