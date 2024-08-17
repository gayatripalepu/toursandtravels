<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,
					initial-scale=1, shrink-to-fit=no">
		
		<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="container">
			<h3>Table with sortable headings and global search</h3>
			<table id="tableID" class="table table-striped">
				<thead>
				<tr>
					<th data-sortas="case-insensitive">Firstname</th>
					<th>Lastname</th>
					<th>Profession</th>
					<th data-sortas="numeric">Age</th>
					<th>City</th>
					</tr>
				</thead>
				<tbody>
					<tr>
					<td>John</td>
					<td>Caprio</td>
					<td>Engineer</td>
					<td>37</td>
					<td>Hyderabad</td>
					</tr>
					<tr>
					<td>Bikram</td>
					<td>Sharma</td>
					<td>Businessman</td>
					<td>42</td>
					<td>Delhi</td>
					</tr>
					<tr>
					<td>Amit</td>
					<td>Chowdhary</td>
					<td>Engineer</td>
					<td>58</td>
					<td>Chennai</td>
					</tr>
					<tr>
					<td>Thomas</td>
					<td>Einstein</td>
					<td>Scientist</td>
					<td>35</td>
					<td>Mumbai</td>
					</tr>
					
            <tr>
                <td>Priya</td>
                <td>Sharma</td>
                <td>24</td>
            </tr>
            <tr>
                <td>Arun</td>
                <td>Singh</td>
                <td>32</td>
            </tr>
            <tr>
                <td>Samy</td>
                <td>Watson</td>
                <td>41</td>
            </tr>
            <tr>
                <td>Samsamder</td>
                <td>Watra</td>
                <td>42</td>
            </tr>
            <tr>
                <td>Samantha</td>
                <td>Challa</td>
                <td>31</td>
            </tr>
            <tr>
                <td>Samuel</td>
                <td>Miranda</td>
                <td>45</td>
            </tr>
            <tr>
                <td>Samy</td>
                <td>Joseph</td>
                <td>37</td>
            </tr>
                
				</tbody>
			</table>		
		</div>
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js">
		</script>
		<script src="fancyTable.js"></script>
		<script type="text/javascript">
				
			$(document).ready(function(){
			
				$("#tableID").fancyTable({
				sortColumn:0,
				/* Setting pagination or enabling */
				pagination: true,
					globalSearch:true,
					/* Exclude 2nd column from global search.*/
				globalSearchExcludeColumns: [2],
				onInit:function(){				
				/* On initialization of table */
								console.log({ element:this });
									},
				onUpdate:function(){
				/* On update like search and sort of table */				
					console.log({ element:this });
				}
					});						
			});		
		</script>
	</body>
</html>
