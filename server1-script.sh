#!/bin/bash

# Updating the ubuntu package manager and installing apache server
apt update
apt install -y apache2

# Installing aws cli on ec2 instance
apt install -y awscli

# Creating a sample html file with some usefull contents

cat <<EOF > var/www/html/index.html
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terraform-VPC Project Server</title>
    <style>
        body {
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            font-family: Arial, sans-serif;
            color: #ffffff;
            text-align: center;
            padding: 50px;
        }
        h1 {
            font-size: 4em;
            margin-bottom: 20px;
            color: #434eab;
            text-shadow: 2px 2px #000000;
        }
        p {
            font-size: 1.5em;
            font-style: italic;
            margin-bottom: 30px;
        }
        ul {
            list-style-type: disc;
            padding-left: 20px;
            text-align: left;
            color: #000000;
        }
        li {
            font-size: 1.2em;
            margin: 10px 0;
            text-shadow: 1px 1px 3px #FFFFFF;
        }
    </style>
</head>
<body>
    <h1>Terraform-VPC Project Server 1</h1>
    <p>Here are some useful points about AWS VPC:</p>
    <ul>
        <li><strong>VPC</strong>: Virtual Private Cloud, a logically isolated network in AWS.</li>
        <li><strong>Subnets</strong>: Segments of a VPC to isolate resources.</li>
    </ul>
</body>
</html>
EOF

# Start an apache server and enable it on boot
systemctl start apache2
systemctl enable apache2
