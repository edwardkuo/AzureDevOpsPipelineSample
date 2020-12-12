#Download Container
$DockerHost=$args[0]
$DockerComposefile=$args[1]
"Docker Host :"+$DockerHost
"Docker File :"+$DockerComposefile
$dockercomposepull='docker-compose -H '+$DockerHost+':2375 -f '+$DockerComposefile+' pull'
"Docker-compose pull :"+$dockercomposepull
Invoke-Expression $dockercomposepull

#Stop Container
$DockerHost=$args[0]
$DockerComposefile=$args[1]
"Docker Host :"+$DockerHost
"Docker File :"+$DockerComposefile
$dockercomposepull='docker-compose -H '+$DockerHost+':2375 -f '+$DockerComposefile+'  down'
"Docker-compose pull :"+$dockercomposepull
Invoke-Expression $dockercomposepull

#Run Container
$DockerHost=$args[0]
$DockerComposefile=$args[1]
"Docker Host :"+$DockerHost
"Docker File :"+$DockerComposefile
$dockercomposepull='docker-compose -H '+$DockerHost+':2375 -f '+$DockerComposefile+' up -d'
"Docker-compose pull :"+$dockercomposepull
Invoke-Expression $dockercomposepull
