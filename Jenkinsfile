node {
    stage "Checkout"
    //checkout scm
    git url: 'https://github.com/axsh/openvnet.git', branch: 'master'

    stage "Build"
    sh "pwd"
    sh "./build.sh"
}