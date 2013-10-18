<!-- Footer area: START -->
{def $footer_links= fetch( 'content', 'list',
        hash( 'parent_node_id', 134 ) )}
<footer>    
    <div class="container">
        <div class="nav-collapse">
            {foreach $footer_links as $link}
                <a href={$link.url|ezurl('yes')}>{$link.name|wash()}</a>
            {/foreach}
        </div>
    </div>
</footer>
<!-- Footer area: END -->
{undef $footer_links $link}
