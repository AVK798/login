# install golang 
sudo apt install golang -y

cd ../login

# initialize if needed
go mod tidy

# build binary
go build -o login-service

# run
./login-service
