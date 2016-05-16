#!/bin/bash

tomcat-users() {
cat << _EOF_
<?xml version='1.0' encoding='utf-8'?> <!--  Licensed to the Apache Software Foundation (ASF) under one or more contributor license agreements.  See the NOTICE file distributed with this work for additional$
The ASF licenses this file to You under the Apache License, Version 2.0
(the "License"); you may not use this file except in compliance with
the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-->
<tomcat-users>
<!--
NOTE:  By default, no user is included in the "manager-gui" role required
to operate the "/manager/html" web application.  If you wish to use this app,
you must define such a user - the username and password are arbitrary.
-->
<!--
NOTE:  The sample user and role entries below are wrapped in a comment
and thus are ignored when reading this file. Do not forget to remove
<!.. ..> that surrounds them.
-->
<!--
<role rolename="tomcat"/>
<role rolename="role1"/>
<user username="tomcat" password="tomcat" roles="tomcat"/>
<user username="both" password="tomcat" roles="tomcat,role1"/>
<user username="role1" password="tomcat" roles="role1"/>
-->

<!-- <role rolename="admin"/> -->
<!-- <role rolename="admin-gui"/> -->
<!-- <role rolename="admin-script"/> -->
<!-- <role rolename="manager"/> -->
<!-- <role rolename="manager-gui"/> -->
<!-- <role rolename="manager-script"/> -->
<!-- <role rolename="manager-jmx"/> -->
<!-- <role rolename="manager-status"/> -->
<!-- <user name="admin" password="adminadmin" roles="admin,manager,admin-gui,admin-script,manager-gui,manager-script,manager-jmx,manager-status" /> -->
<user name="cisco1" password="cisco123" roles="admin,manager,admin-gui,admin-script,manager-gui,manager-script,manager-jmx,manager-status" />
</tomcat-users>

_EOF_
}

tomcat-users > /etc/tomcat/tomcat-users.xml

sudo systemctl restart tomcat
echo "cisco1 cisco123"