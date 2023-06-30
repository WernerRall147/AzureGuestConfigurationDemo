Configuration WindowsIIS{

Import-Module -Name PSDesiredStateConfiguration

Node localhost {

#Helps to install IIS
WindowsFeature IIS {
    Ensure = "Present"
    Name = "Web-Server"
    }
}
}