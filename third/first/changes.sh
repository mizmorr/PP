sudo su&&mysql&&use Students;
echo select argument from mysql.general_log where argument REGEXP 'INSERT';
