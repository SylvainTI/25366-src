<langs>
<?
$sql = "SELECT * FROM langs WHERE parent='0'";
$query = mysql_query($sql);
while ($data = mysql_fetch_array($query)){
	?>
	<lang>
		<id><?php echo $data['identifier'] ?></id>
		<label><?php echo $data['label'] ?></label>
		<destinations>
		<?php
		$subQuery = mysql_query("SELECT * FROM langs WHERE parent='".$data['id']."'");
		while ($subData = mysql_fetch_array($subQuery)){
			?>
			<lang>
				<id><?php echo $subData['identifier'] ?></id>
				<label><?php echo $subData['label'] ?></label>
			</lang>
			<?php
		}
		?>
		</destinations>
	</lang>	
<?php	
}
?>
</langs>