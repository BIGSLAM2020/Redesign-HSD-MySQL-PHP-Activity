<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Employers PHP Page</title>
		<style type="text/css">
		body { background-color: ="#efefef" }
		h1 {
			color: #F90B6D;
			font-family: 'Open Sans', sans-serif;
			font-size: 34px;
			font-weight: 300;
			line-height: 40px;
			margin: 0 0 16px;
			text-align: center;
		}

		h2 {
			font-family: 'Open Sans', sans-serif;
			font-weight: 300;
			text-align: center;
			color: #b48608;
		}

			p.footer {text-align: center}
			table.output {font-family: Ariel, sans-serif}
											 table {
												 border-collapse: collapse;
												 width: 100%;
												 color: #d96459;
												 font-family: monospace;
												 font-size: 25px;
												 text-align: left;
														 }
											 th {
												 background-color: #588c7e;
												 color: white;
											 }
											 tr:nth-last-child(even) {background-origin: #f2f2f2}

											 hr {
												 height: 12px;
												 border: 0;
												 box-shadow: inset 0 12px 12px -12px rgba(0, 0, 0, 0.5);
											 }

											 a {
								         color: red;
								         font-family: helvetica;
								         text-decoration: none;
								         text-transform: uppercase;
								       }

								       a:hover {
								         text-decoration: underline;
								       }

								       a:active {
								         color: black;
								       }

								       a:visited {
								         color: purple;
								       }

		</style>
	</head>
	<body>
	<?php
		// Get connection
		//$Conn = odbc_connect('sabdul','sabdul','pp2018');
	  $Conn = odbc_connect('HSD','HSD-User','HSD-User+password');

		// Test connection
		if (!$Conn)
	    	{
	        	exit ("ODBC Connection Failed: " . $Conn);
	    	}
		// Create SQL statement
    	$SQL = "SELECT * FROM EMPLOYERS" ;

    	// Execute SQL statement
    	$RecordSet = odbc_exec($Conn,$SQL);

    	// Test existence of recordset
    	if (!$RecordSet)
	    	{
	        	exit ("SQL Statement Error: " . $SQL);
	    	}
	?>
	    <!--  Page Headers -->
	    <h1>
	   		Sammy's Project
		</h1>
	    <hr />
	    <h2>
	        Employers
		</h2>
	<?php
		// Table headers
	    echo "<table class='output' border='1'>
	    		<tr>
            <th>EmployerID</th>
	    			<th>LastName</th>
	    			<th>FirstName</th>
	    		</tr>";

	    // Table data
	    while($RecordSetRow = odbc_fetch_array($RecordSet))
	    	{
	    	echo "<tr>";
        echo "<td>" . $RecordSetRow['EmployerID'] . "</td>";
	    	echo "<td>" . $RecordSetRow['LastName'] . "</td>";
	    	echo "<td>" . $RecordSetRow['FirstName'] . "</td>";
	    	echo "</tr>";
	    	}
	    echo "</table>";

	    // Close connection
	    odbc_close($Conn);
	?>
		<br />
		<hr />
		<p class="footer">
			<a href="../HSD/index.html">Return to Heather Sweeney Designs Home Page</a>
		</p>
		<hr />
    </body>
</html>
