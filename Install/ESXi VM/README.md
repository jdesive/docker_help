# Installing Docker in ESXi VM

*Note: I used ESXi 6.5 but the process should be more or less the same with any version*

Here we will be installing Ubuntu as a VM in a VMware ESXi host. There are many reasons why you might still want to run Docker/Rancher inside of a VMware environment. This is not the place to discuss that topic but snapshots/replication & migration come to mind quickly. In my case, I just simply do not want to buy multiple machines to do these projects so I built ESXi hosts to virtualize my environments. 

To start off I assume you have already have and ESXi host built and running and your host has enough space for your docker instance. 

1. Login to your ESXi host or VCenter host and click on *Virtual Machines*
2. Click on the *Create/Register VM* button
3. Click *Create a new virtual machine* and then click *Next*
4. Enter the name of the VM, in the *Compatibility* field select **ESXi 6.5 virtual machine**
5. Select **Linux** for the *Guest OS family* field and **Ubuntu Linux (64-bit)** for the *Guest OS version*
6. Then click *Next* and select the drive you want to use. Then click *Next*
7. Fill out the VM specs however you wish. I typically do *4 cpus*, *8gb RAM*, *50gb HDD*. Then select **Datastore ISO** for the *CD/DVD Drive 1* and select your ubuntu.iso
8. Click *Next* and then *Finish*

Now you have created the machine that Docker will run on. You need to select you VM in the *Virtual Machines* list and click the *Power on* button. Now you can [install Ubuntu](https://tutorials.ubuntu.com/tutorial/tutorial-install-ubuntu-desktop#2) like normal. Create a default user that you will sign into normally, we will create the docker user later.

Once you have reached the Ubuntu Desktop:
1. Right click and select *Open Terminal*
2. Enter this command `sudo apt-get install open-vm-tools -y` and then `reboot`

We now have a working Ubuntu machine with open-vm-tools installed. From here you can follow the instructions under [.../Ubuntu/README.md]().
