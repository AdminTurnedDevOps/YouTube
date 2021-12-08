function create_sp {
    [cmdletbinding(ConfirmImpact='low')]
    param(
        [string]$appName = 'githubactionssrecourse',
        [string]$subID = ''
    )
    
    az ad sp create-for-rbac -n $appName --role Contributor --scopes /subscriptions/$subID
}