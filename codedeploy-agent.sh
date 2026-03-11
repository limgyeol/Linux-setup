dnf install -y ruby wget
wget https://aws-codedeploy-ap-northeast-2.s3.amazonaws.com/latest/install
chmod +x ./install
./install auto
systemctl start codedeploy-agent
systemctl enable codedeploy-agent

dnf update -y
dnf install ruby wget -y
cd /home/ec2-user
# 서울 리전 기준 설치 파일 다운로드
wget https://aws-codedeploy-ap-northeast-2.s3.ap-northeast-2.amazonaws.com/latest/install
chmod +x ./install
./install auto
# 상태 확인 (active/running이 떠야 함)
service codedeploy-agent status