#
# OpenAPI Petstore
# This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create user

.DESCRIPTION

No description available.

.PARAMETER User
Created user object

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function New-PSUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${User},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-PSUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-PSConfiguration
        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/user'

        if (!$User) {
            throw "Error! The required parameter `User` missing when calling createUser."
        }

        $LocalVarBodyParameter = $User | ConvertTo-Json -Depth 100

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['auth_cookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `auth_cookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-PSApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Creates list of users with given input array

.DESCRIPTION

No description available.

.PARAMETER User
List of user object

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function New-PSUsersWithArrayInput {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${User},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-PSUsersWithArrayInput' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-PSConfiguration
        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/user/createWithArray'

        if (!$User) {
            throw "Error! The required parameter `User` missing when calling createUsersWithArrayInput."
        }

        $LocalVarBodyParameter = $User | ConvertTo-Json -Depth 100

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['auth_cookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `auth_cookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-PSApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Creates list of users with given input array

.DESCRIPTION

No description available.

.PARAMETER User
List of user object

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function New-PSUsersWithListInput {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${User},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-PSUsersWithListInput' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-PSConfiguration
        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/user/createWithList'

        if (!$User) {
            throw "Error! The required parameter `User` missing when calling createUsersWithListInput."
        }

        $LocalVarBodyParameter = $User | ConvertTo-Json -Depth 100

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['auth_cookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `auth_cookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-PSApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Delete user

.DESCRIPTION

No description available.

.PARAMETER Username
The name that needs to be deleted

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Remove-PSUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Remove-PSUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-PSConfiguration
        $LocalVarUri = '/user/{username}'
        if (!$Username) {
            throw "Error! The required parameter `Username` missing when calling deleteUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{username}', $Username)

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['auth_cookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `auth_cookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-PSApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Get user by user name

.DESCRIPTION

No description available.

.PARAMETER Username
The name that needs to be fetched. Use user1 for testing.

.PARAMETER ReturnType

Select the return type (optional): application/xml, application/json

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

User
#>
function Get-PSUserByName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username},
        [String]
        [ValidateSet("application/xml", "application/json")]
        $ReturnType,
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-PSUserByName' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-PSConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/xml', 'application/json')

        if ($ReturnType) {
            # use the return type (MIME) provided by the user
            $LocalVarAccepts = @($ReturnType)
        }

        $LocalVarUri = '/user/{username}'
        if (!$Username) {
            throw "Error! The required parameter `Username` missing when calling getUserByName."
        }
        $LocalVarUri = $LocalVarUri.replace('{username}', $Username)

        $LocalVarResult = Invoke-PSApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "User" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Logs user into the system

.DESCRIPTION

No description available.

.PARAMETER Username
The user name for login

.PARAMETER Password
The password for login in clear text

.PARAMETER ReturnType

Select the return type (optional): application/xml, application/json

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

String
#>
function Invoke-PSLoginUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Password},
        [String]
        [ValidateSet("application/xml", "application/json")]
        $ReturnType,
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-PSLoginUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-PSConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/xml', 'application/json')

        if ($ReturnType) {
            # use the return type (MIME) provided by the user
            $LocalVarAccepts = @($ReturnType)
        }

        $LocalVarUri = '/user/login'

        if (!$Username) {
            throw "Error! The required parameter `Username` missing when calling loginUser."
        }
        $LocalVarQueryParameters['username'] = $Username

        if (!$Password) {
            throw "Error! The required parameter `Password` missing when calling loginUser."
        }
        $LocalVarQueryParameters['password'] = $Password

        $LocalVarResult = Invoke-PSApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "String" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Logs out current logged in user session

.DESCRIPTION

No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-PSLogoutUser {
    [CmdletBinding()]
    Param (
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-PSLogoutUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-PSConfiguration
        $LocalVarUri = '/user/logout'

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['auth_cookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `auth_cookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-PSApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Updated user

.DESCRIPTION

No description available.

.PARAMETER Username
name that need to be deleted

.PARAMETER User
Updated user object

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Update-PSUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${User},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-PSUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-PSConfiguration
        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/user/{username}'
        if (!$Username) {
            throw "Error! The required parameter `Username` missing when calling updateUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{username}', $Username)

        if (!$User) {
            throw "Error! The required parameter `User` missing when calling updateUser."
        }

        $LocalVarBodyParameter = $User | ConvertTo-Json -Depth 100

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['auth_cookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `auth_cookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-PSApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

