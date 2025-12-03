### Step 1: Stop and remove all containers
- sudo docker stop $(sudo docker ps -aq)
- sudo docker rm $(sudo docker ps -aq)


### Step 2: Remove all images (optional but recommended for a fresh start)
- sudo docker rmi $(sudo docker images -q)

### Step 3: Remove any leftover volumes (especially for MySQL)
- sudo docker volume prune -f

### Step 4: Delete the old build cache
- sudo docker system prune -af



### If any virtual machine is not working
sudo modprobe -r kvm_amd && sudo modprobe -r kvm

