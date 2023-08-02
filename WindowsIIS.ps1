Configuration WindowsIIS{

Import-DscResource -ModuleName PSDscResources

Node localhost {

#Helps to install IIS
WindowsFeature IIS{
    Ensure = "Present"
    Name = "Web-Server"
    }
}
}