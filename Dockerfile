FROM jenkins/jenkins:lts
USER root

# Install Docker and basic tools
RUN apt-get update && \
    apt-get install -y docker.io curl wget sudo iputils-ping gnupg2 software-properties-common && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
# Install Node.js 18
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get update && \
    apt-get install -y nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
# Add jenkins user to docker group
RUN usermod -aG docker jenkins
    
USER jenkins