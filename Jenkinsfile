// pipeline {
//     agent {

//     label "NODES"
//     }
//     stages {
//         stage ('Download dependencies and go build') {
//          steps {
//             sh '''
//             go mod tidy
//             go build -o login
//             '''
//          }
//         }

//         stage ('make artifacts') {
//          steps {
//             sh '''
//             zip -r login.zip login
//             '''
//          }
//         }
//      stage ('upload the Artifact to Nexus') {
//         steps {
//          sh'''
//             curl -v -u admin:nexus123 --upload-file login.zip  http://13.222.207.100:8081/repository/login/login.zip

//          '''
//         }
//      }
//     }
// }


@Library('Todo-App') _

todo (

   Service : 'login',
   Slave   : 'GO',
   App_type: 'Go'

)