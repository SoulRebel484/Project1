# Project1
project 1 submission


## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.


https://github.com/SoulRebel484/Project1/blob/73cb5193574609e15680cb5b79718de72e6dc887/Diagrams/projectdiagram.PNG

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the YML file may be used to install only certain pieces of it, such as Filebeat.

 
https://github.com/SoulRebel484/Project1/blob/73cb5193574609e15680cb5b79718de72e6dc887/Ansible/filebeat-playbook.yml
https://github.com/SoulRebel484/Project1/blob/73cb5193574609e15680cb5b79718de72e6dc887/Ansible/install-elk.yml
https://github.com/SoulRebel484/Project1/blob/73cb5193574609e15680cb5b79718de72e6dc887/Ansible/metricbeat-playbook.yml
https://github.com/SoulRebel484/Project1/blob/73cb5193574609e15680cb5b79718de72e6dc887/Ansible/my-playbook.yml


This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?_
- Load balancers protect against DDos attacks in regards to security. Since all admins must first connect to the jump box, as a monitored device
- that spans two security zones which provides a secure and controlled bridge of access. Also they are rarely used for non-administrative tasks

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.
- _TODO: What does Filebeat watch for?_
- Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing
- _TODO: What does Metricbeat record?_
- Metricbeat helps you monitor your servers by collecting metrics from the system and services running on the server, such as: Apache. HAProxy.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux            |
| Web-1    | VM       | 10.0.0.5   | Linux V1         |
| Web-2    | VM       | 10.0.0.6   | Linux V1         |
| Web-3    | VM       | 10.0.0.8   | Linux V1         |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: Add whitelisted IP addresses_
- 71.224.235.30/32

Machines within the network can only be accessed by SSH.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?
- Home Computer
- IP:71.224.235.30/32

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | yes                 | 71.224.235.30/32     |
| Web-1    | no                  | 10.0.0.4             |
| Web-2    | no                  | 10.0.0.4             |
| Web-3    | no                  | 10.0.0.4             |
| Elk      | no                  | 71.224.235.30/32

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?
- The main advantage would be that all actions are performed equally correct and at one time._

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...With hosts being elk, become being true, tasks would be apt and command modules.
-    Each apt shows a install and commands show the names.
-    Configuring the VM's memory and setting the port mapping are essential.
-    Downloading and launchig the elk docker container along with enabled for boot would finish the script.
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
