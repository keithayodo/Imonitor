<?php
error_reporting( E_ALL & ~E_DEPRECATED & ~E_NOTICE );
if(!mysql_connect("localhost", "brandspe_tms", "cpulga1155", "brandspe_data"))
{
	die('oops connection problem ! --> '.mysql_error());
}
if(!mysql_select_db("brandspe_data"))
{
	die('oops database selection problem ! --> '.mysql_error());
}

?>