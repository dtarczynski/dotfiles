Invoke-Expression (&starship init powershell)

# ::: FUNCTIONS ::::

function Invoke-CodeArtifactLogin {
    $env:AWS_ENDPOINT_URL = ""
    aws codeartifact login --tool nuget --repository nuget --domain netdocuments --domain-owner 767398054748 --profile 767398054748_AWSCodeArtifactReadOnly
    dotnet restore --interactive
}

# Helper to CD into Transformers folder
function Invoke-CdTrans {
    cd c:\Users\Darek\DEV\NETDOCUMENTS\TRANSFORMER\
}

function Invoke-AwsCredentialsEdit {
	nvim C:\Users\Darek\.aws\credentials
}

# :::: ALIASES ::::

Set-Alias login-nuget Invoke-CodeArtifactLogin
Set-Alias cdtrans Invoke-CdTrans
Set-Alias credit Invoke-AwsCredentialsEdit


