node {
    stage "Checkout"
    sh "pwd"
    env.WORKSPACE = env.PWD
    checkout scm
    stage "Build"
    //sh "pwd"
    sh '/usr/bin/env'
    sh "./build.sh"
}