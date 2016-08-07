node {
    stage "Checkout"
    sh "pwd"
    env.WORKSPACE = env.PWD
    checkout scm
    sh "rm -rf ovn"
    sh 'git --depth=1 https://github.com/axsh/openvnet.git ovn'
    stage "Build"
    //sh "pwd"
    sh '/usr/bin/env'
    sh "./build.sh"
}