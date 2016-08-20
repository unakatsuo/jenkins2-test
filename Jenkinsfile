node {
    stage "Checkout"
    sh "pwd"
    env.WORKSPACE = env.PWD
    checkout scm
    stage "Build"
    //sh "pwd"
    sh '/usr/bin/env'
    step([
        $class: 'ExecuteDslScripts',
        scriptText: 'job("example-2")'
    ])
    //sh "./build.sh"
}