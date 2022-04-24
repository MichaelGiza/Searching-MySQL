<!doctype html>
<html>
<head>
  <link rel="stylesheet" href="layout.css">
  <div class="container">
    <title>Searching cutting mill</title>
    <meta charset="utf-8" />
  </head>
  <body>
    <h1>Search cutting mill</h1>
    <form action="results.php" method="post">

      <div class="select">
      <select name="listarozwijana" >
       <option value="milling_teeth" />Milling teeth
       <option value="cutter_diameter" />Diameter [mm]
      </select>
      </div>

      <br />

  <form role="search" method="post" class="search-form" action="">
      <label>Type diameter or qty of teeth:</label>
      <input type="text" class="search-field" placeholder="Search..." value="" name="wyrazenie"  />
  </form>

    </form>
</div>
</body>
</html>