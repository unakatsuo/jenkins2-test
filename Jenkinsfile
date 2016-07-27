node {
    stage "Checkout"
    sh "pwd"
    checkout scm
    //git url: 'https://github.com/axsh/openvnet.git', branch: 'master'
    stage "Build"
    //sh "pwd"
    sh '/usr/bin/env'
    sh "./build.sh"
}