function Invoke-ModuleA {
    [CmdletBinding()]
    param()

    Write-Host "Module A: Host"
    Write-Verbose "Module A: Verbose"
    Write-Debug "Module A: Debug"
}