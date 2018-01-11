<?php echo $header; ?>
<section class="breadcrumb p07">
    <p>
        <?php
            foreach($breadcrumbs as $breadcrumb){
                if(isset($breadcrumb['href'])){
                    echo '<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
                } elseif(isset($breadcrumb['text'])){
                    echo $breadcrumb['text'];
                }
            }
        ?>
    </p>
</section>
<section class="content">
    <h1><?php echo $heading_title;?></h1>
    <section class="columns">
        <article class="col3 post">
            <div class="img">
                <a href="#">
                    <span class="img-border"><img src="/catalog/view/image/41.jpg" alt=""></span>
                </a>
            </div>
            <h2><a href="#">Integer tincidunt</a></h2>
            <p class="post-meta">December 3, 2012 <span>|</span> by <a href="#" class="author">Michael</a> <a href="#" class="comment-link">15 comments</a></p>
            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>
            <p class="more"><a href="#">Read more</a></p>
        </article>
        <article class="col3 post">
            <div class="img">
                <a href="#">
                    <span class="img-border"><img src="/catalog/view/image/41.jpg" alt=""></span>
                </a>
            </div>
            <h2><a href="#">Donec quam felis, ultricies nec</a></h2>
            <p class="post-meta">December 3, 2012 <span>|</span> by <a href="#" class="author">Michael</a> <a href="#" class="comment-link">15 comments</a></p>
            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>
            <p class="more"><a href="#">Read more</a></p>
        </article>
        <article class="col3 post">
            <div class="img">
                <a href="#">
                    <span class="img-border"><img src="/catalog/view/image/41.jpg" alt=""></span>
                </a>
            </div>
            <h2><a href="#">Ultricies nec</a></h2>
            <p class="post-meta">December 3, 2012 <span>|</span> by <a href="#" class="author">Michael</a> <a href="#" class="comment-link">15 comments</a></p>
            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>
            <p class="more"><a href="#">Read more</a></p>
        </article>
        <article class="col3 post">
            <div class="img">
                <a href="#">
                    <span class="img-border"><img src="/catalog/view/image/41.jpg" alt=""></span>
                </a>
            </div>
            <h2><a href="#">Cum sociis natoque penatibus</a></h2>
            <p class="post-meta">December 3, 2012 <span>|</span> by <a href="#" class="author">Michael</a> <a href="#" class="comment-link">15 comments</a></p>
            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>
            <p class="more"><a href="#">Read more</a></p>
        </article>
        <article class="col3 post">
            <div class="img">
                <a href="#">
                    <span class="img-border"><img src="/catalog/view/image/41.jpg" alt=""></span>
                </a>
            </div>
            <h2><a href="#">Integer tincidunt</a></h2>
            <p class="post-meta">December 3, 2012 <span>|</span> by <a href="#" class="author">Michael</a> <a href="#" class="comment-link">15 comments</a></p>
            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>
            <p class="more"><a href="#">Read more</a></p>
        </article>
        <article class="col3 post">
            <div class="img">
                <a href="#">
                    <span class="img-border"><img src="/catalog/view/image/41.jpg" alt=""></span>
                </a>
            </div>
            <h2><a href="#">Donec quam felis, ultricies nec</a></h2>
            <p class="post-meta">December 3, 2012 <span>|</span> by <a href="#" class="author">Michael</a> <a href="#" class="comment-link">15 comments</a></p>
            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>
            <p class="more"><a href="#">Read more</a></p>
        </article>
    </section>
    <div class='wp-pagenavi'>
        <span class='current'>1</span><a href='#' class='page larger'>2</a><a href='#' class='page larger'>3</a><a href='#' class='page larger'>4</a><a href='#' class='page larger'>5</a><a href='#' class='nextpostslink'>Next page</a>
    </div>
</section>
<?php echo $footer; ?>