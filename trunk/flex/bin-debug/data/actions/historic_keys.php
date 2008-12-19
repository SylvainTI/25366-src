<reperes>
<?php
$sql ="SELECT id,date FROM historical_marks ORDER BY id";
$query = $db->prepare($sql);
$query->execute(array());
$datas = $query->fetchAll();
foreach($datas as $data) {
	$xml.= '<repere><id>'.$data['id'].'</id><date>'.$data['date'].'</date><events>';

	$sql2 = "SELECT * FROM historical_events WHERE marks_id='".$data['id']."'";
	$query2 = $db->prepare($sql2);
	$query2->execute(array());
	$datas2 = $query2->fetchAll();
	foreach($datas2 as $data2){
		$xml .= '<event type="'.$data2['event_type'].'">';
		$xml .= '<dates type="'.$data2['date_type'].'"><from_date>'.$data2['from_date'].'</from_date><to_date>'.$data2['to_date'].'</to_date></dates>';
		$xml .= '<description>'.$data2['description'].'</description>';
		$xml .= '<link>'.$data2['link'].'</link>';
		$xml .= '</event>';
	}
	
	$xml .= '</events>';
	$xml .= '</repere>';
}
 $xml.='</reperes>';
 echo $xml;
?>