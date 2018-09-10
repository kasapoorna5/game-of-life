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
     sh 'docker build -t kasapoorna5/kpc .'
}
stage('PUSHDOCKERIMAGE') {
       withCredentials([string(credentialsId: 'docker-pwd', variable: 'password1')]) {
        sh "docker login -u kasapoorna5 -p ${password1}"  
       }
	   sh 'docker push kasapoorna5/kpc'
	   }
}


