<?php
 require_once $_SERVER['DOCUMENT_ROOT'].'/tutorial/core/init.php';
 if(!is_logged_in()){
   login_error_redirect();
 }
include 'includes/head.php';
include 'includes/navigation.php';

//Restore product
if(isset($_GET['restore'])){
   $id = sanitize($_GET['restore']);
   $db->query("UPDATE products SET deleted = 0 WHERE id = '$id'");
   header('Location: archived.php');
}

$pResults = $db->query("SELECT * FROM products WHERE deleted = 1 ORDER BY title");
?>
<h2 class="text-center">Archived Products</h2><hr>
<table class="table table-bordered table-condensed table-striped">
  <thead><th></th><th>Product</th><th>Price</th><th>Category</th><th>sold</th></thead>
  <tbody>
    <?php while($product = mysqli_fetch_assoc($pResults)):
	    $child_id = $product['categories'];
		  $childQuery = $db->query("SELECT * FROM categories WHERE id = '$child_id'");
		  $child = mysqli_fetch_assoc($childQuery);
		  $parent_id = $child['parent'];
		  $parQuery = $db->query("SELECT * FROM categories WHERE id = '$parent_id'");
		  $parent = mysqli_fetch_assoc($parQuery);
	?>
    <tr>
       <td>
	    <a href="archived.php?restore=<?=$product['id'];?>" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-refresh"></span></a>
	   </td>
	   <td><?=$product['title']; ?></td>
	   <td><?=money($product['price']); ?></td>
	   <td><?=$parent['category'].'-'.$child['category']; ?></td>
	   <td>0</td>
	</tr>
	<?php endwhile; ?>
  </tbody>
</table>

<?php include 'includes/footer.php';
