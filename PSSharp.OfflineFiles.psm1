function Get-OFDiskSpaceLimit {
	[CmdletBinding()]
	param (
		[Parameter(ParameterSetName="DefaultSet")]
		[Alias("Session")]
		[CimSession]$CimSession,

		[Parameter(ParameterSetName="DefaultSet")]
		[int]$ThrottleLimit,

		[Parameter(ParameterSetName="DefaultSet")]
		[switch]$AsJob
	)
	process {
		Get-OFMachineConfig @PSBoundParameters | Select-Object -ExpandProperty DiskSpaceLimitParams
	}
}

function Get-OFBackgroundSync {
	[CmdletBinding()]
	param (
		[Alias("Session")]
		[Parameter(ParameterSetName="DefaultSet")]
		[CimSession]$CimSession,

		[Parameter(ParameterSetName="DefaultSet")]
		[int]$ThrottleLimit,

		[Parameter(ParameterSetName="DefaultSet")]
		[switch]$AsJob
	)
	process {
		Get-OFMachineConfig @PSBoundParameters | Select-Object -ExpandProperty BackgroundSyncParams
	}
}

function Get-OFChangeInfo {
	[CmdletBinding()]
	param (
		[Alias("Session")]
		[Parameter(ParameterSetName="DefaultSet")]
		[CimSession]$CimSession,

		[Parameter(ParameterSetName="DefaultSet")]
		[int]$ThrottleLimit,

		[Parameter(ParameterSetName="DefaultSet")]
		[switch]$AsJob,

		[Parameter(ParameterSetName="PipelineSet",Mandatory,ValueFromPipeline)]
		[Alias("OfflineFilesItem","OFItem")]
		[Microsoft.Management.Infrastructure.CimInstance]
		#[Microsoft.Management.Infrastructure.CimInstance#Win32_OfflineFilesItem]
		$Item
	)
	process {
		if ($Item) {
			$Item | Select-Object -ExpandProperty ChangeInfo
		}
		else {
			Get-OFItem @PSBoundParameters | Select-Object -ExpandProperty ChangeInfo
		}
	}
}

function Get-OFConnectionInfo {
	[CmdletBinding()]
	param (
		[Alias("Session")]
		[Parameter(ParameterSetName="DefaultSet")]
		[CimSession]$CimSession,

		[Parameter(ParameterSetName="DefaultSet")]
		[int]$ThrottleLimit,

		[Parameter(ParameterSetName="DefaultSet")]
		[switch]$AsJob,

		[Parameter(ParameterSetName="PipelineSet",Mandatory,ValueFromPipeline)]
		[Alias("OfflineFilesItem","OFItem")]
		[Microsoft.Management.Infrastructure.CimInstance]
		#[Microsoft.Management.Infrastructure.CimInstance#root/cimv2/Win32_OfflineFilesItem]
		$Item
	)
	process {
		if ($Item) {
			$Item | Select-Object -ExpandProperty ConnectionInfo
		}
		else {
			Get-OFItem @PSBoundParameters | Select-Object -ExpandProperty ConnectionInfo
		}
	}
}

function Get-OFDirtyInfo {
	[CmdletBinding()]
	param (
		[Parameter(ParameterSetName="DefaultSet",Mandatory)]
		[Alias("Session")]
		[CimSession]$CimSession,

		[Parameter(ParameterSetName="DefaultSet")]
		[int]$ThrottleLimit,

		[Parameter(ParameterSetName="DefaultSet")]
		[switch]$AsJob,

		[Parameter(ParameterSetName="PipelineSet",Mandatory,ValueFromPipeline)]
		[Alias("OfflineFilesItem","OFItem")]
		[Microsoft.Management.Infrastructure.CimInstance]
		#[Microsoft.Management.Infrastructure.CimInstance#root/cimv2/Win32_OfflineFilesItem]
		$Item
	)
	process {
		if ($Item) {
			$Item | Select-Object -ExpandProperty DirtyInfo
		}
		else {
			Get-OFItem @PSBoundParameters | Select-Object -ExpandProperty DirtyInfo
		}
	}
}

function Get-OFFileSysInfo {
	[CmdletBinding()]
	param (
		[Parameter(ParameterSetName="DefaultSet")]
		[Alias("Session")]
		[CimSession]$CimSession,

		[Parameter(ParameterSetName="DefaultSet")]
		[int]$ThrottleLimit,

		[Parameter(ParameterSetName="DefaultSet")]
		[switch]$AsJob,

		[Parameter(ParameterSetName="PipelineSet",Mandatory,ValueFromPipeline)]
		[Alias("OfflineFilesItem","OFItem")]
		[Microsoft.Management.Infrastructure.CimInstance]
		#[Microsoft.Management.Infrastructure.CimInstance#root/cimv2/Win32_OfflineFilesItem]
		$Item
	)
	process {
		if ($Item) {
			$Item | Select-Object -ExpandProperty FileSysInfo
		}
		else {
			Get-OFItem @PSBoundParameters | Select-Object -ExpandProperty FileSysInfo
		}
	}
}

function Get-OFPinInfo {
	[CmdletBinding()]
	param (
		[Parameter(ParameterSetName="DefaultSet")]
		[Alias("Session")]
		[CimSession]$CimSession,

		[Parameter(ParameterSetName="DefaultSet")]
		[int]$ThrottleLimit,

		[Parameter(ParameterSetName="DefaultSet")]
		[switch]$AsJob,

		[Parameter(ParameterSetName="PipelineSet",Mandatory,ValueFromPipeline)]
		[Alias("OfflineFilesItem","OFItem")]
		[Microsoft.Management.Infrastructure.CimInstance]
		#[Microsoft.Management.Infrastructure.CimInstance#root/cimv2/Win32_OfflineFilesItem]
		$Item
	)
	process {
		if ($Item) {
			$Item | Select-Object -ExpandProperty PinInfo
		}
		else {
			Get-OFItem @PSBoundParameters | Select-Object -ExpandProperty PinInfo
		}
	}
}

function Get-OFSuspendInfo {
	[CmdletBinding()]
	param (
		[Parameter(ParameterSetName="DefaultSet")]
		[Alias("Session")]
		[CimSession]$CimSession,

		[Parameter(ParameterSetName="DefaultSet")]
		[int]$ThrottleLimit,

		[Parameter(ParameterSetName="DefaultSet")]
		[switch]$AsJob,

		[Parameter(ParameterSetName="PipelineSet",Mandatory,ValueFromPipeline)]
		[Alias("OfflineFilesItem","OFItem")]
		[Microsoft.Management.Infrastructure.CimInstance]
		#[Microsoft.Management.Infrastructure.CimInstance#root/cimv2/Win32_OfflineFilesItem]
		$Item
	)
	process {
		if ($Item) {
			$Item | Select-Object -ExpandProperty SuspendInfo
		}
		else {
			Get-OFItem @PSBoundParameters | Select-Object -ExpandProperty SuspendInfo
		}
	}
}