node {
    stage "Checkout"
    sh "pwd"
    checkout scm
    //git url: 'https://github.com/axsh/openvnet.git', branch: 'master'
    //stage "Build"
    //sh "pwd"
    sh '/usr/bin/env'
    withEnv(["PATH+WORKSPACE=${env.WORKSPACE}"]) {
        sh "build.sh"
    }
}