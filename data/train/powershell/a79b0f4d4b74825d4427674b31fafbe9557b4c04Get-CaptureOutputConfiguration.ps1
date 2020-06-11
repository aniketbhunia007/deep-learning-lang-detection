﻿<#############################################################################
HistoryPx uses proxy commands to add extended history information to
PowerShell. This includes the duration of a command, a flag indicating whether
a command was successful or not, the output generated by a command (limited to
a configurable maximum value), the error generated by a command, and the
actual number of objects returned as output and as error records.  HistoryPx
also adds a "__" variable to PowerShell that captures the last output that you
may have wanted to capture, and includes commands to configure how it decides
when output should be captured.  Lastly, HistoryPx includes commands to manage
the memory footprint that is used by extended history information.

Copyright 2016 Kirk Munro

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
#############################################################################>

<#
.SYNOPSIS
    Gets the capture output configuration for the session.
.DESCRIPTION
    The Get-CaptureOutputConfiguration command gets the capture output configuration for the session.
.INPUTS
    None
.OUTPUTS
    HistoryPx.CaptureOutputConfiguration
.NOTES
    By default, HistoryPx is configured with the following settings:
      VariableName: __
      MaximumItemCount: 1000
      CaptureValueTypes: false
      CaptureNull: $false
      ExcludedTypes:
        HistoryPx.ExtendedHistoryConfiguration
        HistoryPx.CaptureOutputConfiguration
        System.String
        System.Management.Automation.Runspaces.ConsolidatedString
        HelpInfoShort
        MamlCommandHelpInfo
        System.Management.Automation.CommandInfo
        Microsoft.PowerShell.Commands.GenericMeasureInfo
        System.Management.Automation.PSMemberInfo
        Microsoft.PowerShell.Commands.MemberDefinition
        System.Type
        System.Management.Automation.PSVariable
.EXAMPLE
    PS C:\> Get-CaptureOutputConfiguration

    Get the capture output configuration for the session.
.LINK
    Set-CaptureOutputConfiguration
#>
function Get-CaptureOutputConfiguration {
    [CmdletBinding()]
    [OutputType('HistoryPx.CaptureOutputConfiguration')]
    param()
    try {
        #region Return a custom object representing the capture output configuration to the caller.

        [pscustomobject]@{
                   PSTypeName = 'HistoryPx.CaptureOutputConfiguration'
                 VariableName = [HistoryPx.CaptureOutputConfiguration]::VariableName
             MaximumItemCount = [HistoryPx.CaptureOutputConfiguration]::MaximumItemCount
                ExcludedTypes = [HistoryPx.CaptureOutputConfiguration]::ExcludedTypes
            CaptureValueTypes = [HistoryPX.CaptureOutputConfiguration]::CaptureValueTypes
                  CaptureNull = [HistoryPX.CaptureOutputConfiguration]::CaptureNull
        }

        #endregion
    } catch {
        $PSCmdlet.ThrowTerminatingError($_)
    }
}

Export-ModuleMember -Function Get-CaptureOutputConfiguration