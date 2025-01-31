#Edit .zshrc
#source ~/.zsh/custom-aliases.zsh
#alias nuget-login='aws_codeartifact_login'
#alias credit='credit'

# ****************************************
# Definition for custom-aliases.zsh
# ****************************************

# AWS CodArtifact login function for NuGet
login-nuget() {
    export AWS_ENDPOINT_URL=""
    aws codeartifact login \
        --tool nuget \
        --repository nuget \
        --domain netdocuments \
        --domain-owner 767398054748 \
        --profile 767398054748_AWSCodeArtifactReadOnly
    dotnet restore --interactive
}

# Edit AWS credentials
credit() {
    nvim ~/.aws/credentials
}
