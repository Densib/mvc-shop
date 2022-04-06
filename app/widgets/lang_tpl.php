<div class="dropdown d-inline-block">
    <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown">
        <img src="<?= PATH ?>/assets/img/<?= Services\App::$app->getProperty('language')['code'] ?>.png" alt="">
    </a>
    <ul class="dropdown-menu" id="languages">
        <?php foreach ($this->languages as $code => $value) : ?>
            <?php if (Services\App::$app->getProperty('language')['code'] == $code) continue; ?>
            <li>
                <button class="dropdown-item" data-langcode="<?= $code ?>">
                    <img src="<?= PATH ?>/assets/img/<?= $code ?>.png" alt="">
                    <?= $value['title'] ?></button>
            </li>
        <?php endforeach; ?>
    </ul>
</div>