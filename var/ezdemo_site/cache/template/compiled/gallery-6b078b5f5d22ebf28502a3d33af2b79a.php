<?php
// URI:       extension/ezdemo/design/ezdemo/override/templates/block/gallery.tpl
// Filename:  extension/ezdemo/design/ezdemo/override/templates/block/gallery.tpl
// Timestamp: 1381794969 (Mon Oct 14 23:56:09 UTC 2013)
$oldSetArray_9f82dfbf0949ac78b2c5f4481d26fe50 = isset( $setArray ) ? $setArray : array();
$setArray = array();
$tpl->Level++;
if ( $tpl->Level > 40 )
{
$text = $tpl->MaxLevelWarning;$tpl->Level--;
return;
}
$eZTemplateCompilerCodeDate = 1074699607;
if ( !defined( 'EZ_TEMPLATE_COMPILER_COMMON_CODE' ) )
include_once( 'var/ezdemo_site/cache/template/compiled/common.php' );

// def $valid_nodes
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'block', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['block'] : null;
$var1 = compiledFetchAttribute( $var, 'valid_nodes' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( $tpl->hasVariable( 'valid_nodes', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'valid_nodes' is already defined.", array (
  0 => 
  array (
    0 => 1,
    1 => 0,
    2 => 1,
  ),
  1 => 
  array (
    0 => 4,
    1 => 61,
    2 => 163,
  ),
  2 => 'extension/ezdemo/design/ezdemo/override/templates/block/gallery.tpl',
) );
    $tpl->setVariable( 'valid_nodes', $var, $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'valid_nodes', $var, $rootNamespace );
}

// def $first
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'valid_nodes', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['valid_nodes'] : null;
$var1 = compiledFetchAttribute( $var, 0 );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( $tpl->hasVariable( 'first', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'first' is already defined.", array (
  0 => 
  array (
    0 => 1,
    1 => 0,
    2 => 1,
  ),
  1 => 
  array (
    0 => 4,
    1 => 61,
    2 => 163,
  ),
  2 => 'extension/ezdemo/design/ezdemo/override/templates/block/gallery.tpl',
) );
    $tpl->setVariable( 'first', $var, $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'first', $var, $rootNamespace );
}

// def $big_image_class
if ( $tpl->hasVariable( 'big_image_class', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'big_image_class' is already defined.", array (
  0 => 
  array (
    0 => 1,
    1 => 0,
    2 => 1,
  ),
  1 => 
  array (
    0 => 4,
    1 => 61,
    2 => 163,
  ),
  2 => 'extension/ezdemo/design/ezdemo/override/templates/block/gallery.tpl',
) );
    $tpl->setVariable( 'big_image_class', 'gallery', $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'big_image_class', 'gallery', $rootNamespace );
}

// def $image
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'first', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['first'] : null;
$var1 = compiledFetchAttribute( $var, 'data_map' );
unset( $var );
$var = $var1;
$var1 = compiledFetchAttribute( $var, 'image' );
unset( $var );
$var = $var1;
$var1 = compiledFetchAttribute( $var, 'content' );
unset( $var );
$var = $var1;
unset( $var2 );
unset( $var2 );
$var2 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'big_image_class', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['big_image_class'] : null;
if (! isset( $var2 ) ) $var2 = NULL;
while ( is_object( $var2 ) and method_exists( $var2, 'templateValue' ) )
    $var2 = $var2->templateValue();
$var1 = compiledFetchAttribute( $var, $var2 );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( $tpl->hasVariable( 'image', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'image' is already defined.", array (
  0 => 
  array (
    0 => 1,
    1 => 0,
    2 => 1,
  ),
  1 => 
  array (
    0 => 4,
    1 => 61,
    2 => 163,
  ),
  2 => 'extension/ezdemo/design/ezdemo/override/templates/block/gallery.tpl',
) );
    $tpl->setVariable( 'image', $var, $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'image', $var, $rootNamespace );
}

$text .= '<!-- BLOCK: START -->
<div class="block-type-gallery">

    <div class="block-gallery">
        <div class="gallery-viewer">
            <figure>
                <img src=';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'image', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['image'] : null;
$var2 = compiledFetchAttribute( $var1, 'url' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
if ( preg_match( "#^[a-zA-Z0-9]+:#", $var1 ) or
substr( $var1, 0, 2 ) == '//' )
  $var1 = '/';
else if ( strlen( $var1 ) > 0 and
  $var1[0] != '/' )
$var1 = '/' . $var1;
eZURI::transformURI( $var1, true, eZURI::getTransformURIMode() );
$var1 = '"' . $var1 . '"';
$var = $var1;
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= ' alt="';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'first', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['first'] : null;
$var2 = compiledFetchAttribute( $var1, 'name' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = htmlspecialchars( $var1 );
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '" height="';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'image', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['image'] : null;
$var1 = compiledFetchAttribute( $var, 'height' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '" width="';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'image', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['image'] : null;
$var1 = compiledFetchAttribute( $var, 'width' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '" />
                <figcaption>
                    <h3>
                        <span class="counter"><span>1</span>/';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'valid_nodes', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['valid_nodes'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$varData = array( 'value' => $var );
$tpl->processOperator( 'count',
                       array (
),
                       $rootNamespace, $currentNamespace, $varData, false, false );
$var = $varData['value'];
unset( $varData );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '</span>
                        <a href=';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'first', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['first'] : null;
$var2 = compiledFetchAttribute( $var1, 'url_alias' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();

eZURI::transformURI( $var1, false, eZURI::getTransformURIMode() );
$var1 = '"' . $var1 . '"';
$var = $var1;
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '>';
unset( $var );
unset( $var1 );
unset( $var1 );
$var1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'first', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['first'] : null;
$var2 = compiledFetchAttribute( $var1, 'name' );
unset( $var1 );
$var1 = $var2;
if (! isset( $var1 ) ) $var1 = NULL;
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
while ( is_object( $var1 ) and method_exists( $var1, 'templateValue' ) )
    $var1 = $var1->templateValue();
$var = htmlspecialchars( $var1 );
unset( $var1 );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '</a>
                    </h3>
                    <div>
                    ';
// if begins
unset( $if_cond );
unset( $if_cond );
$if_cond = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'first', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['first'] : null;
$if_cond1 = compiledFetchAttribute( $if_cond, 'data_map' );
unset( $if_cond );
$if_cond = $if_cond1;
$if_cond1 = compiledFetchAttribute( $if_cond, 'caption' );
unset( $if_cond );
$if_cond = $if_cond1;
$if_cond1 = compiledFetchAttribute( $if_cond, 'has_content' );
unset( $if_cond );
$if_cond = $if_cond1;
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '                        ';
$textElements = array();
$tpl->processFunction( 'attribute_view_gui', $textElements,
                       false,
                       array (
  'attribute' => 
  array (
    0 => 
    array (
      0 => 4,
      1 => 
      array (
        0 => '',
        1 => 2,
        2 => 'first',
      ),
      2 => false,
    ),
    1 => 
    array (
      0 => 5,
      1 => 
      array (
        0 => 
        array (
          0 => 3,
          1 => 'data_map',
          2 => false,
        ),
      ),
      2 => false,
    ),
    2 => 
    array (
      0 => 5,
      1 => 
      array (
        0 => 
        array (
          0 => 3,
          1 => 'caption',
          2 => false,
        ),
      ),
      2 => false,
    ),
  ),
),
                       array (
  0 => 
  array (
    0 => 19,
    1 => 24,
    2 => 797,
  ),
  1 => 
  array (
    0 => 19,
    1 => 76,
    2 => 849,
  ),
  2 => 'extension/ezdemo/design/ezdemo/override/templates/block/gallery.tpl',
),
                       $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );

$text .= '                    ';
}
unset( $if_cond );
// if ends

$text .= '                    </div>
                </figcaption>
            </figure>
        </div>
        <div class="gallery-navigator">
            <a href="#" class="navig prev" style="opacity:0;"><span class="hide">&lt;</span></a>
            <a href="#" class="navig next"><span class="hide">&gt;</span></a>

            <img src="/hollywood/extension/ezdemo/design/ezdemo/images/fg-selected.png" alt="Selected indicator" class="cursor" />
            <ul class="images">
            ';
// foreach begins
$skipDelimiter = true;
if ( !isset( $fe_variable_stack_312d71d565277c4044a11ef8645980c5_5 ) ) $fe_variable_stack_312d71d565277c4044a11ef8645980c5_5 = array();
$fe_variable_stack_312d71d565277c4044a11ef8645980c5_5[] = compact( 'fe_array_312d71d565277c4044a11ef8645980c5_5', 'fe_array_keys_312d71d565277c4044a11ef8645980c5_5', 'fe_n_items_312d71d565277c4044a11ef8645980c5_5', 'fe_n_items_processed_312d71d565277c4044a11ef8645980c5_5', 'fe_i_312d71d565277c4044a11ef8645980c5_5', 'fe_key_312d71d565277c4044a11ef8645980c5_5', 'fe_val_312d71d565277c4044a11ef8645980c5_5', 'fe_offset_312d71d565277c4044a11ef8645980c5_5', 'fe_max_312d71d565277c4044a11ef8645980c5_5', 'fe_reverse_312d71d565277c4044a11ef8645980c5_5', 'fe_first_val_312d71d565277c4044a11ef8645980c5_5', 'fe_last_val_312d71d565277c4044a11ef8645980c5_5' );
unset( $fe_array_312d71d565277c4044a11ef8645980c5_5 );
unset( $fe_array_312d71d565277c4044a11ef8645980c5_5 );
$fe_array_312d71d565277c4044a11ef8645980c5_5 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'valid_nodes', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['valid_nodes'] : null;
if (! isset( $fe_array_312d71d565277c4044a11ef8645980c5_5 ) ) $fe_array_312d71d565277c4044a11ef8645980c5_5 = NULL;
while ( is_object( $fe_array_312d71d565277c4044a11ef8645980c5_5 ) and method_exists( $fe_array_312d71d565277c4044a11ef8645980c5_5, 'templateValue' ) )
    $fe_array_312d71d565277c4044a11ef8645980c5_5 = $fe_array_312d71d565277c4044a11ef8645980c5_5->templateValue();

$fe_array_keys_312d71d565277c4044a11ef8645980c5_5 = is_array( $fe_array_312d71d565277c4044a11ef8645980c5_5 ) ? array_keys( $fe_array_312d71d565277c4044a11ef8645980c5_5 ) : array();
$fe_n_items_312d71d565277c4044a11ef8645980c5_5 = count( $fe_array_keys_312d71d565277c4044a11ef8645980c5_5 );
$fe_n_items_processed_312d71d565277c4044a11ef8645980c5_5 = 0;
$fe_offset_312d71d565277c4044a11ef8645980c5_5 = 0;
$fe_max_312d71d565277c4044a11ef8645980c5_5 = $fe_n_items_312d71d565277c4044a11ef8645980c5_5 - $fe_offset_312d71d565277c4044a11ef8645980c5_5;
$fe_reverse_312d71d565277c4044a11ef8645980c5_5 = false;
if ( $fe_offset_312d71d565277c4044a11ef8645980c5_5 < 0 || $fe_offset_312d71d565277c4044a11ef8645980c5_5 >= $fe_n_items_312d71d565277c4044a11ef8645980c5_5 )
{
    $fe_offset_312d71d565277c4044a11ef8645980c5_5 = ( $fe_offset_312d71d565277c4044a11ef8645980c5_5 < 0 ) ? 0 : $fe_n_items_312d71d565277c4044a11ef8645980c5_5;
    if ( $fe_n_items_312d71d565277c4044a11ef8645980c5_5 || $fe_offset_312d71d565277c4044a11ef8645980c5_5 < 0 )
 {
        eZDebug::writeWarning("Invalid 'offset' parameter specified: '$fe_offset_312d71d565277c4044a11ef8645980c5_5'. Array count: $fe_n_items_312d71d565277c4044a11ef8645980c5_5");   
}
}
if ( $fe_max_312d71d565277c4044a11ef8645980c5_5 < 0 || $fe_offset_312d71d565277c4044a11ef8645980c5_5 + $fe_max_312d71d565277c4044a11ef8645980c5_5 > $fe_n_items_312d71d565277c4044a11ef8645980c5_5 )
{
    if ( $fe_max_312d71d565277c4044a11ef8645980c5_5 < 0 )
 eZDebug::writeWarning("Invalid 'max' parameter specified: $fe_max_312d71d565277c4044a11ef8645980c5_5");
    $fe_max_312d71d565277c4044a11ef8645980c5_5 = $fe_n_items_312d71d565277c4044a11ef8645980c5_5 - $fe_offset_312d71d565277c4044a11ef8645980c5_5;
}
if ( $fe_reverse_312d71d565277c4044a11ef8645980c5_5 )
{
    $fe_first_val_312d71d565277c4044a11ef8645980c5_5 = $fe_n_items_312d71d565277c4044a11ef8645980c5_5 - 1 - $fe_offset_312d71d565277c4044a11ef8645980c5_5;
    $fe_last_val_312d71d565277c4044a11ef8645980c5_5  = 0;
}
else
{
    $fe_first_val_312d71d565277c4044a11ef8645980c5_5 = $fe_offset_312d71d565277c4044a11ef8645980c5_5;
    $fe_last_val_312d71d565277c4044a11ef8645980c5_5  = $fe_n_items_312d71d565277c4044a11ef8645980c5_5 - 1;
}
// foreach
for ( $fe_i_312d71d565277c4044a11ef8645980c5_5 = $fe_first_val_312d71d565277c4044a11ef8645980c5_5; $fe_n_items_processed_312d71d565277c4044a11ef8645980c5_5 < $fe_max_312d71d565277c4044a11ef8645980c5_5 && ( $fe_reverse_312d71d565277c4044a11ef8645980c5_5 ? $fe_i_312d71d565277c4044a11ef8645980c5_5 >= $fe_last_val_312d71d565277c4044a11ef8645980c5_5 : $fe_i_312d71d565277c4044a11ef8645980c5_5 <= $fe_last_val_312d71d565277c4044a11ef8645980c5_5 ); $fe_reverse_312d71d565277c4044a11ef8645980c5_5 ? $fe_i_312d71d565277c4044a11ef8645980c5_5-- : $fe_i_312d71d565277c4044a11ef8645980c5_5++ )
{
$fe_key_312d71d565277c4044a11ef8645980c5_5 = $fe_array_keys_312d71d565277c4044a11ef8645980c5_5[$fe_i_312d71d565277c4044a11ef8645980c5_5];
$fe_val_312d71d565277c4044a11ef8645980c5_5 = $fe_array_312d71d565277c4044a11ef8645980c5_5[$fe_key_312d71d565277c4044a11ef8645980c5_5];
$vars[$rootNamespace]['img'] = $fe_val_312d71d565277c4044a11ef8645980c5_5;
$vars[$rootNamespace]['k'] = $fe_key_312d71d565277c4044a11ef8645980c5_5;
$text .= '                <li>';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'img', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['img'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
$vars[$namespace]['node'] = $var;
unset( $var );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
$vars[$namespace]['thumb_class'] = 'gallerythumbnail';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'big_image_class', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['big_image_class'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
$vars[$namespace]['big_class'] = $var;
unset( $var );
if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( 'design' );
    $dKeys = $resH->keys();
}
if ( !isset( $dKeysStack ) )
{
    $dKeysStack = array();
}
$dKeysStack[] = $dKeys;
unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'node_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["node"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'contentobject_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["object"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'contentclass_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["class"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'section_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["section"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'class_identifier' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["class_identifier"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'match_ingroup_id_list' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["class_group"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'state_id_array' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["state"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'state_identifier_array' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["state_identifier"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'parent_node_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["parent_node"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'depth' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["depth"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'url_alias' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["url_alias"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'remote_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["remote_id"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'remote_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["node_remote_id"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'parent' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'class_identifier' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["parent_class_identifier"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'parent' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'remote_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["parent_node_remote_id"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'parent' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'remote_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["parent_object_remote_id"] = $dKey;
unset( $dKey );

$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/gallery_item-e0fb47ce03a308ba041a8d67d7939463.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/templates/node/view/gallery_item.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/gallery_item-e0fb47ce03a308ba041a8d67d7939463.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/templates/node/view/gallery_item.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

$dKeys = array_pop( $dKeysStack );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $vars[$namespace]['node'] );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $vars[$namespace]['thumb_class'] );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $vars[$namespace]['big_class'] );
$text .= '</li>
            ';
$fe_n_items_processed_312d71d565277c4044a11ef8645980c5_5++;
} // foreach
$skipDelimiter = false;
if ( count( $fe_variable_stack_312d71d565277c4044a11ef8645980c5_5 ) ) extract( array_pop( $fe_variable_stack_312d71d565277c4044a11ef8645980c5_5 ) );

else
{

unset( $fe_array_312d71d565277c4044a11ef8645980c5_5 );

unset( $fe_array_keys_312d71d565277c4044a11ef8645980c5_5 );

unset( $fe_n_items_312d71d565277c4044a11ef8645980c5_5 );

unset( $fe_n_items_processed_312d71d565277c4044a11ef8645980c5_5 );

unset( $fe_i_312d71d565277c4044a11ef8645980c5_5 );

unset( $fe_key_312d71d565277c4044a11ef8645980c5_5 );

unset( $fe_val_312d71d565277c4044a11ef8645980c5_5 );

unset( $fe_offset_312d71d565277c4044a11ef8645980c5_5 );

unset( $fe_max_312d71d565277c4044a11ef8645980c5_5 );

unset( $fe_reverse_312d71d565277c4044a11ef8645980c5_5 );

unset( $fe_first_val_312d71d565277c4044a11ef8645980c5_5 );

unset( $fe_last_val_312d71d565277c4044a11ef8645980c5_5 );

unset( $fe_variable_stack_312d71d565277c4044a11ef8645980c5_5 );

}

// foreach ends
$text .= '            </ul>
        </div>

    </div>
    ';
if ( !isset( $GLOBALS['eZTemplateRunOnceKeys']["977388e11b9532b3d6d2f0d88e0d79b8"] ) )
{
    $GLOBALS['eZTemplateRunOnceKeys']["977388e11b9532b3d6d2f0d88e0d79b8"] = array( array( 38,
              4,
              1570 ),
       array( 38,
              12,
              1578 ),
       "extension/ezdemo/design/ezdemo/override/templates/block/gallery.tpl" );
$text .= '    <script type="text/javascript">
    

    YUI(YUI3_config).use(\'ezgallery\', \'event\', function (Y) {
        Y.on(\'domready\', function () {
            Y.all(\'.block-type-gallery\').each(function () {
                var g = new Y.eZ.Gallery({
                    title: \'h3 a\',
                    caption: \'figcaption div\',
                    autoFixSizes: false,
                    autoScrollOnSelect: false,
                    navigator: {
                        gallery: this.one(\'.block-gallery\')
                    },
                    initFunc: function () {
                        var imgs = this.navigator.getImages();

                        setTimeout(function () {
                            imgs.each(function(elem) {
                                (new Image).src = elem.getAttribute(\'data-gallery-src\');
                            });
                        }, 0);
                    },
                    updateFunc: function (item) {
                        var node = item.imageNode,
                            t = this.container.one(this.conf.title),
                            img = this.container.one(this.conf.image),
                            cap = this.container.one(this.conf.caption);
                            c = this.container.one(this.conf.counter);

                        img.setAttribute(\'src\', node.getAttribute(\'data-gallery-src\'));
                        img.setAttribute(\'height\', node.getAttribute(\'data-gallery-height\'));
                        img.setAttribute(\'width\', node.getAttribute(\'data-gallery-width\'));
                        img.setAttribute(\'alt\', node.get(\'title\'));
                        t.setContent(node.get(\'title\'));
                        t.setAttribute(\'href\', node.getAttribute(\'data-gallery-node-url\'));
                        c.setContent(item.index + 1);
                        cap.setContent(node.one(\'figcaption\').getContent());
                    }
                });
            });
        });
    });
    
    
    </script>
    ';
}
// undef $valid_nodes
$tpl->unsetLocalVariable( 'valid_nodes', $rootNamespace );

// undef $first
$tpl->unsetLocalVariable( 'first', $rootNamespace );

// undef $big_image_class
$tpl->unsetLocalVariable( 'big_image_class', $rootNamespace );

// undef $image
$tpl->unsetLocalVariable( 'image', $rootNamespace );

$text .= '</div>
<!-- BLOCK: END -->
';

$setArray = $oldSetArray_9f82dfbf0949ac78b2c5f4481d26fe50;
$tpl->Level--;
?>
