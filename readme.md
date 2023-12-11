```powershell
PS> ipmo .\module-a
PS> ipmo .\module-b
PS> Invoke-ModuleB 

Module B: Host
Module A: Host

PS> Invoke-ModuleB -Debug -Verbose

Module B: Host
VERBOSE: Module B: Verbose
DEBUG: Module B: Debug
Module A: Host
```

Now I'm enabling the progation code in module-b and reload the module:

```powershell
PS> ipmo .\module-b -Force
PS> Invoke-ModuleB -Debug -Verbose

Module B: Host
VERBOSE: Module B: Verbose
DEBUG: Module B: Debug
Module A: Host
VERBOSE: Module A: Verbose
DEBUG: Module A: Debug
```
