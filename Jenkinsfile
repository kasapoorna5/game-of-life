node {
    stage('SCM') {
    git 'https://github.com/kasapoorna5/game-of-life.git'
}

stage('BUILD') {
    sh 'mvn package'
}
stage('TESTCASE') {
    junit 'gameoflife-web/target/surefire-reports/*.xml'
}
stage('ARCHIVE') {
    archiveArtifacts 'gameoflife-web/target/gameoflife.war'
}

stage('DOCKERIMAGE') {
     sh 'docker build -t kasapoorna5/poorna1:1.0 .'
}
}
