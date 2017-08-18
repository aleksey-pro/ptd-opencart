<li><button class="btn btn-red" data-toggle="modal" data-target="#cart" id="btn-cart"><span class="glyphicon glyphicon-shopping-cart"></span><span class="cart-info"><?=$text_items?></span></button></li>
<!-- Modal -->
<div class="modal fade" id="cart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Корзина</h4>
      </div>
      <div class="modal-body">
        <?php if($products): ?>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Изображение</th>
                  <th>Наименование</th>
                  <th>Кол-во</th>
                  <th>Цена</th>
                  <th>Итого</th>
                  <th>Удалить</th>
                </tr>
              </thead>
              <?php foreach($products as $product): ?>
                <tr>
                  <td><a href="<?= $product['href'] ?>"><img src="<?= $product['thumb'] ?>" alt="<?= $product['name'] ?>"></a></td>
                  <td><?= $product['name'] ?></td>
                  <td><?= $product['quantity'] ?></td>
                  <td><?= $product['price'] ?></td>
                  <td><?= $product['total'] ?></td>
                  <td><button class="btn btn-danger" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button></td>
                </tr>
              <?php endforeach; ?>
            </table>
          </div>
        <?php else: ?>
          <?=$text_empty?>
        <?php endif; ?>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Продолжить покупки</button>
        <a href="<?=$cart?>" class="btn btn-primary"><?=$text_cart?></a>
      </div>
    </div>
  </div>
</div>