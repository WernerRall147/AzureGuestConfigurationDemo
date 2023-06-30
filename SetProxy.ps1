Configuration SetProxy {
    Import-DscResource -ModuleName PSDesiredStateConfiguration

    Node localhost {
        Registry 'SetProxy' {
            Ensure = 'Present'
            Key = 'HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings'
            ValueName = 'ProxyServer'
            ValueData = 'http://proxy.example.com:8080'
            ValueType = 'String'
            Force = $true
        }
    }
}