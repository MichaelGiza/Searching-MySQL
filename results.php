<!doctype html>
<html>
  <head>
    <meta charset="utf-8" />
  </head>
  <body>
    <h1>Search results:</h1>
    <?php
      $listarozwijana = $_POST['listarozwijana'];
      $wyrazenie = $_POST['wyrazenie'];
      $wyrazenie = trim($wyrazenie);   
      if (!$listarozwijana || !$wyrazenie)   
      {
        echo 'Lack of results come back to search page!'; 
        exit;
      }
      if ($wyrazenie % 2 !=0)
      {
        echo 'Lack of results come back to search page!'; 
        exit;
      }
      
      @$db = new mysqli('localhost','root','','milling_cutter');      
      
      if (mysqli_connect_errno())         
      {
        echo 'Connection with database nok';
        exit;
      }
      $db->query('SET NAMES utf8');                           
      $db->select_db('milling_cutter');       
      $question_to_db = "select * from parameter where ".$listarozwijana. " like '%".$wyrazenie."%'";
      $db->query('SET NAMES utf8');           
      $records_result = $db->query($question_to_db);    
      $howmuchfound = $records_result->num_rows;   
      echo '<p> Results found: '.$howmuchfound.'</p>';  
      for ($i=0;$i<$howmuchfound;$i++)
      {
        $resultrow = $records_result->fetch_assoc();     
        echo '<p><b>'.($i+1).'. Type of product: '.stripslashes($resultrow['title']).'</b><br />'; 
        echo 'Milling teeth: '.($resultrow['milling_teeth']).'<br />'; 
        echo 'Cutting diameter: '.($resultrow['cutter_diameter']).'mm'.'<br/>';
        echo 'Price: '.($resultrow['price']).'zl'; 
      }
      $records_result->free();
      $db->close();
    ?> 
<style>
body {
   background: #98DFFD;
}
</style>
  </body>
</html>