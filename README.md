



# Project1 Exploring Kibana
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
| Jump Box | Gateway  | 10.0.0.1   | Linux V1         |
| Web-1    | VM       | 10.0.0.5   | Linux V1         |
| Web-2    | VM       | 10.0.0.6   | Linux V1         |
| Web-3    | VM       | 10.0.0.8   | Linux V1         |
| Elk      | VM       | 10.1.0.5   | Linux V1         |
### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: Add whitelisted IP addresses_
- 71.224.235.30/32

Machines within the network can only be accessed by SSH.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?
- Jump Box
- IP: 13.88.0.137
-     10.0.0.4

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | yes                 | 71.224.235.30/32     |
| Web-1    | no                  | 13.88.0.137          |
| Web-2    | no                  | 13.88.0.137          |
| Web-3    | no                  | 13.88.0.137          |
| Elk      | no                  | 13.88.0.137          |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?
- The main advantage would be that all actions are performed equally correct and at one time._

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc.
- 
- ...With hosts being elk, become being true, tasks would be apt and command modules.
-    Each apt shows a install and commands show the names.
-    Configuring the VM's memory and setting the port mapping are essential.
-    Downloading and launchig the elk docker container along with enabled for boot would finish the script.
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)
(https://user-images.githubusercontent.com/79461915/120575175-8e2eda00-c3ee-11eb-8f49-5a11ae77350d.PNG)
### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_
Web-1, Web-2, Web-3
We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_
- Filebeats, Metricbeats

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._
- Filebeats: It collects log file, locations, and events, when collecting events, a timeline and action is established for review.
- Metricbeats: Metrics and Statistics are collected to monitor a server, Apache would be a example of running service monitored.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- the playbook is filebeat-playbook.yml
- copy:
       src: /etc/ansible/files/filebeat-config.yml
       dest: /etc/filebeat/filebeat.yml
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_

Updating the etc/ansible/hosts file and adding the elk ip info under its own section is the first step. Afterward running a .YML playbook with the matching hosts of elk will only apply to that machine.
- _Which URL do you navigate to in order to check that the ELK server is running?
http://20.85.245.227:5601/app/kibana
(public IP keeps changing)
_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._







Exploring Kibana

Add the sample web log data to Kibana.


Answer the following questions:


In the last 7 days, how many unique visitors were located in India?
226

In the last 24 hours, of the visitors from China, how many were using Mac OSX?
7

In the last 2 days, what percentage of visitors received 404 errors? How about 503 errors?
503-100%
404-0%
In the last 7 days, what country produced the majority of the traffic on the website?
china

Of the traffic that's coming from that country, what time of day had the highest amount of activity?

12 noon

List all the types of downloaded files that have been identified for the last 7 days, along with a short description of each file type (use Google if you aren't sure about a particular file type).

gz: Archive file compressed by gzip
css: Cascading sheet file used to format contents of a web page
zip: Used to compress one or more files into one location
deb: A Unix archive with 2 bzipped or gzipped archives, one has installer control data and other installable data.
rpm: Used for installing programs on linux



Now that you have a feel for the data, Let's dive a bit deeper. Look at the chart that shows Unique Visitors Vs. Average Bytes.

Locate the time frame in the last 7 days with the most amount of bytes (activity).
In your own words, is there anything that seems potentially strange about this activity?

Only one visitor is generating a higher than normal amount of activity

Filter the data by this event.

What is the timestamp for this event? 22:55
What kind of file was downloaded? RPM
From what country did this activity originate? India
What HTTP response codes were encountered by this visitor? 200



Switch to the Kibana Discover page to see more details about this activity.

What is the source IP address of this activity? 35.143.166.159
What are the geo coordinates of this activity? {
  "lat": 43.34121,
  "lon": -73.6103075
}
What OS was the source machine running? Win 8
What is the full URL that was accessed? https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-6.3.2-i686.rpm
From what website did the visitor's traffic originate? http://facebook.com/success/jay-c-buckey



Finish your investigation with a short overview of your insights.

What do you think the user was doing? It appears to be a program download of metricbeat
Was the file they downloaded malicious? If not, what is the file used for? files from that source are usually not malicous but it depends on intent, and it could be for a update.
Is there anything that seems suspicious about this activity? not right away
Is any of the traffic you inspected potentially outside of compliance guidlines? Usually this type of file is not associated with facebook





![elk day 1 kibana](https://user-images.githubusercontent.com/79461915/120697237-794c5800-c47b-11eb-889e-bf9b35168121.PNG)
![elk day 2 filebeat proof kibana](https://user-images.githubusercontent.com/79461915/120697476-c3353e00-c47b-11eb-93d0-834c02ac3f1e.PNG)![elk day 2 metric beat proof](https://user-images.githubusercontent.com/79461915/120697520-d3e5b400-c47b-11eb-89af-a445a32454bb.PNG)




INTERVIEW PAGE ESSAYS TOTAL 3

[Containers.docx](https://github.com/SoulRebel484/Project1/files/6594257/Containers.docx)

[Challenges of Collecting Large Amounts of Log Data.docx](https://github.com/SoulRebel484/Project1/files/6594266/Challenges.of.Collecting.Large.Amounts.of.Log.Data.docx)

[Escalating Security Events.docx](https://github.com/SoulRebel484/Project1/files/6594267/Escalating.Security.Events.docx)


