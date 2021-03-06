@{
ModuleVersion = '0.0.0.1'
GUID = '830f083d-dc04-4cd5-bf87-f739ae9bb747'
Author = 'Caleb Frederickson'
Copyright = '(c) 2020 Caleb Frederickson. All rights reserved.'
Description = 'Offline Files management via the CIM APIs.'
NestedModules = @(
                  'PSSharp.OfflineFiles.psm1'
                  ,'OFCache.cdxml'
                  ,'OFUserConfiguration.cdxml'
                  ,'OFMachineConfiguration.cdxml'
                  ,'OFItem.cdxml'
                )
FunctionsToExport = '*'
CmdletsToExport = @()
VariablesToExport = @()
PrivateData = @{
    PSData = @{
    }
}
}

