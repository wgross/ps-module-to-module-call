function Invoke-ModuleB {
    [CmdletBinding()]
    param()

    Write-Host "Module B: Host"
    Write-Verbose "Module B: Verbose"
    Write-Debug "Module B: Debug"

    # propagete Debug/Verbose
    # $dv = @{Debug = $DebugPreference; Verbose = $VerbosePreference} 
    # module-a\Invoke-ModuleA @dv

    # won't propagate Debug/Verbose
    module-a\Invoke-ModuleA
}