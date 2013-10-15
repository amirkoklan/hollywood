<?php
// URI:       extension/ezflow/design/standard/templates/parts/zone_block.tpl
// Filename:  extension/ezflow/design/standard/templates/parts/zone_block.tpl
// Timestamp: 1381794970 (Mon Oct 14 23:56:10 UTC 2013)
$oldSetArray_c529cde282c669f1688881fbee76c352 = isset( $setArray ) ? $setArray : array();
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

$oldRestoreIncludeArray_3a3d51c7cd0696801b2de2e86f3898f4 = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
$restoreIncludeArray = array();

if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( "design" );
    $dKeys = $resH->keys();
}

$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/zone_block_top-2839bcab11b649df40832ec1dd75b530.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezflow/design/standard/templates/parts/zone_block_top.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/zone_block_top-2839bcab11b649df40832ec1dd75b530.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezflow/design/standard/templates/parts/zone_block_top.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

foreach ( $restoreIncludeArray as $element )
{
    if ( $element[2] === 'unset' )
    {
        unset( $vars[$element[0]][$element[1]] );
        continue;
    }
    $vars[$element[0]][$element[1]] = $element[2];
}
$restoreIncludeArray = $oldRestoreIncludeArray_3a3d51c7cd0696801b2de2e86f3898f4;

// if begins
unset( $if_cond );
unset( $if_cond1 );
unset( $if_cond1 );
$if_cond1 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'block', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['block'] : null;
$if_cond2 = compiledFetchAttribute( $if_cond1, 'valid_nodes' );
unset( $if_cond1 );
$if_cond1 = $if_cond2;
if (! isset( $if_cond1 ) ) $if_cond1 = NULL;
while ( is_object( $if_cond1 ) and method_exists( $if_cond1, 'templateValue' ) )
    $if_cond1 = $if_cond1->templateValue();
$if_cond1Data = array( 'value' => $if_cond1 );
$tpl->processOperator( 'count',
                       array (
),
                       $rootNamespace, $currentNamespace, $if_cond1Data, false, false );
$if_cond1 = $if_cond1Data['value'];
unset( $if_cond1Data );
if (! isset( $if_cond1 ) ) $if_cond1 = NULL;
while ( is_object( $if_cond1 ) and method_exists( $if_cond1, 'templateValue' ) )
    $if_cond1 = $if_cond1->templateValue();
unset( $if_cond2 );
unset( $if_cond3 );
unset( $if_cond4 );
unset( $if_cond4 );
$if_cond4 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'block', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['block'] : null;
$if_cond5 = compiledFetchAttribute( $if_cond4, 'custom_attributes' );
unset( $if_cond4 );
$if_cond4 = $if_cond5;
if (! isset( $if_cond4 ) ) $if_cond4 = NULL;
while ( is_object( $if_cond4 ) and method_exists( $if_cond4, 'templateValue' ) )
    $if_cond4 = $if_cond4->templateValue();
$if_cond3 = isset( $if_cond4 );unset( $if_cond4 );
if (! isset( $if_cond3 ) ) $if_cond3 = NULL;
while ( is_object( $if_cond3 ) and method_exists( $if_cond3, 'templateValue' ) )
    $if_cond3 = $if_cond3->templateValue();
unset( $if_cond4 );
unset( $if_cond4 );
$if_cond4 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'block', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['block'] : null;
$if_cond5 = compiledFetchAttribute( $if_cond4, 'custom_attributes' );
unset( $if_cond4 );
$if_cond4 = $if_cond5;
if (! isset( $if_cond4 ) ) $if_cond4 = NULL;
while ( is_object( $if_cond4 ) and method_exists( $if_cond4, 'templateValue' ) )
    $if_cond4 = $if_cond4->templateValue();
$if_cond4Data = array( 'value' => $if_cond4 );
$tpl->processOperator( 'count',
                       array (
),
                       $rootNamespace, $currentNamespace, $if_cond4Data, false, false );
$if_cond4 = $if_cond4Data['value'];
unset( $if_cond4Data );
if (! isset( $if_cond4 ) ) $if_cond4 = NULL;
while ( is_object( $if_cond4 ) and method_exists( $if_cond4, 'templateValue' ) )
    $if_cond4 = $if_cond4->templateValue();
if ( !$if_cond3 )
    $if_cond2 = false;
else if ( !$if_cond4 )
    $if_cond2 = false;
else
    $if_cond2 = $if_cond4;
unset( $if_cond3, $if_cond4 );
if (! isset( $if_cond2 ) ) $if_cond2 = NULL;
while ( is_object( $if_cond2 ) and method_exists( $if_cond2, 'templateValue' ) )
    $if_cond2 = $if_cond2->templateValue();
unset( $if_cond3 );
unset( $if_cond4 );
unset( $if_cond5 );
if (! isset( $if_cond5 ) ) $if_cond5 = NULL;
while ( is_object( $if_cond5 ) and method_exists( $if_cond5, 'templateValue' ) )
    $if_cond5 = $if_cond5->templateValue();
$if_cond5Data = array( 'value' => $if_cond5 );
$tpl->processOperator( 'ezini',
                       array (
  0 => 
  array (
    0 => 
    array (
      0 => 4,
      1 => 
      array (
        0 => '',
        1 => 2,
        2 => 'block',
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
          1 => 'type',
          2 => false,
        ),
      ),
      2 => false,
    ),
  ),
  1 => 
  array (
    0 => 
    array (
      0 => 1,
      1 => 'ManualAddingOfItems',
      2 => false,
    ),
  ),
  2 => 
  array (
    0 => 
    array (
      0 => 1,
      1 => 'block.ini',
      2 => false,
    ),
  ),
),
                       $rootNamespace, $currentNamespace, $if_cond5Data, false, false );
$if_cond5 = $if_cond5Data['value'];
unset( $if_cond5Data );
if (! isset( $if_cond5 ) ) $if_cond5 = NULL;
while ( is_object( $if_cond5 ) and method_exists( $if_cond5, 'templateValue' ) )
    $if_cond5 = $if_cond5->templateValue();
$if_cond4 = ( ( $if_cond5 ) == ( 'disabled' ) );
unset( $if_cond5 );
if (! isset( $if_cond4 ) ) $if_cond4 = NULL;
while ( is_object( $if_cond4 ) and method_exists( $if_cond4, 'templateValue' ) )
    $if_cond4 = $if_cond4->templateValue();
unset( $if_cond5 );
unset( $if_cond6 );
if (! isset( $if_cond6 ) ) $if_cond6 = NULL;
while ( is_object( $if_cond6 ) and method_exists( $if_cond6, 'templateValue' ) )
    $if_cond6 = $if_cond6->templateValue();
$if_cond6Data = array( 'value' => $if_cond6 );
$tpl->processOperator( 'ezini_hasvariable',
                       array (
  0 => 
  array (
    0 => 
    array (
      0 => 4,
      1 => 
      array (
        0 => '',
        1 => 2,
        2 => 'block',
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
          1 => 'type',
          2 => false,
        ),
      ),
      2 => false,
    ),
  ),
  1 => 
  array (
    0 => 
    array (
      0 => 1,
      1 => 'FetchClass',
      2 => false,
    ),
  ),
  2 => 
  array (
    0 => 
    array (
      0 => 1,
      1 => 'block.ini',
      2 => false,
    ),
  ),
),
                       $rootNamespace, $currentNamespace, $if_cond6Data, false, false );
$if_cond6 = $if_cond6Data['value'];
unset( $if_cond6Data );
if (! isset( $if_cond6 ) ) $if_cond6 = NULL;
while ( is_object( $if_cond6 ) and method_exists( $if_cond6, 'templateValue' ) )
    $if_cond6 = $if_cond6->templateValue();
$if_cond5 = !( $if_cond6 );
unset( $if_cond6 );
if (! isset( $if_cond5 ) ) $if_cond5 = NULL;
while ( is_object( $if_cond5 ) and method_exists( $if_cond5, 'templateValue' ) )
    $if_cond5 = $if_cond5->templateValue();
if ( !$if_cond4 )
    $if_cond3 = false;
else if ( !$if_cond5 )
    $if_cond3 = false;
else
    $if_cond3 = $if_cond5;
unset( $if_cond4, $if_cond5 );
if (! isset( $if_cond3 ) ) $if_cond3 = NULL;
while ( is_object( $if_cond3 ) and method_exists( $if_cond3, 'templateValue' ) )
    $if_cond3 = $if_cond3->templateValue();
if ( $if_cond1 )
    $if_cond = $if_cond1;
else if ( $if_cond2 )
    $if_cond = $if_cond2;
else if ( $if_cond3 )
    $if_cond = $if_cond3;
else
    $if_cond = false;
unset( $if_cond1, $if_cond2, $if_cond3 );
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '    <div id="address-';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'block', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['block'] : null;
$var1 = compiledFetchAttribute( $var, 'zone_id' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '-';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'block', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['block'] : null;
$var1 = compiledFetchAttribute( $var, 'id' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '">
    ';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'block', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['block'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "ContentAttributeBlockView";
else
    $namespace .= ':ContentAttributeBlockView';
$vars[$namespace]['block'] = $var;
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
    $namespace = "ContentAttributeBlockView";
else
    $namespace .= ':ContentAttributeBlockView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'block', $vars[$namespace] ) ) ? $vars[$namespace]['block'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'type' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["type"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "ContentAttributeBlockView";
else
    $namespace .= ':ContentAttributeBlockView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'block', $vars[$namespace] ) ) ? $vars[$namespace]['block'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'view' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["view"] = $dKey;
unset( $dKey );

unset( $attributeAccess );
unset( $attributeAccess );
$attributeAccess = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'block', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['block'] : null;
$attributeAccess1 = compiledFetchAttribute( $attributeAccess, 'view_template' );
unset( $attributeAccess );
$attributeAccess = $attributeAccess1;
if (! isset( $attributeAccess ) ) $attributeAccess = NULL;
while ( is_object( $attributeAccess ) and method_exists( $attributeAccess, 'templateValue' ) )
    $attributeAccess = $attributeAccess->templateValue();

if ( $attributeAccess == 'view' )
{

if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "Campaign", $dKeys["type"] ) : $dKeys["type"] == "Campaign" ) and
     isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "default", $dKeys["view"] ) : $dKeys["view"] == "default" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/campaign-1d787a5ed6daf109ae66b9dd3f56e5e2.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/campaign.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/campaign-1d787a5ed6daf109ae66b9dd3f56e5e2.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/campaign.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "MainStory", $dKeys["type"] ) : $dKeys["type"] == "MainStory" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "highligted", $dKeys["view"] ) : $dKeys["view"] == "highligted" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/main_story_highlighted-cc1f1d90e855655702bcb6202c005b6e.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/main_story_highlighted.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/main_story_highlighted-cc1f1d90e855655702bcb6202c005b6e.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/main_story_highlighted.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "MainStory", $dKeys["type"] ) : $dKeys["type"] == "MainStory" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "default", $dKeys["view"] ) : $dKeys["view"] == "default" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/main_story_background_image-8b8197a12e14afbcf027a1fef5bfa362.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/main_story_background_image.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/main_story_background_image-8b8197a12e14afbcf027a1fef5bfa362.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/main_story_background_image.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "ContentGrid", $dKeys["type"] ) : $dKeys["type"] == "ContentGrid" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "default", $dKeys["view"] ) : $dKeys["view"] == "default" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/content_grid_1col_2rows-53d5ef0c655ddbc1583e6bc2dd64675f.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/content_grid_1col_2rows.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/content_grid_1col_2rows-53d5ef0c655ddbc1583e6bc2dd64675f.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/content_grid_1col_2rows.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "ContentGrid", $dKeys["type"] ) : $dKeys["type"] == "ContentGrid" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "1_column_4_rows", $dKeys["view"] ) : $dKeys["view"] == "1_column_4_rows" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/content_grid_1col_4rows-9d57864347fccc5fcb9f2eb931448d1d.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/content_grid_1col_4rows.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/content_grid_1col_4rows-9d57864347fccc5fcb9f2eb931448d1d.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/content_grid_1col_4rows.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "ContentGrid", $dKeys["type"] ) : $dKeys["type"] == "ContentGrid" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "2_columns_2_rows", $dKeys["view"] ) : $dKeys["view"] == "2_columns_2_rows" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/content_grid_2cols_2rows-01a6e9740bb16932c878c9946070258e.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/content_grid_2cols_2rows.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/content_grid_2cols_2rows-01a6e9740bb16932c878c9946070258e.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/content_grid_2cols_2rows.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "ContentGrid", $dKeys["type"] ) : $dKeys["type"] == "ContentGrid" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "3_columns_1_row", $dKeys["view"] ) : $dKeys["view"] == "3_columns_1_row" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/content_grid_3cols_1row-d1756933b332d84c1b1c7f72dd7a8554.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/content_grid_3cols_1row.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/content_grid_3cols_1row-d1756933b332d84c1b1c7f72dd7a8554.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/content_grid_3cols_1row.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "ContentGrid", $dKeys["type"] ) : $dKeys["type"] == "ContentGrid" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "3_columns_2_rows", $dKeys["view"] ) : $dKeys["view"] == "3_columns_2_rows" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/content_grid_3cols_2rows-6ff2b18eab350813273a5355836f551d.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/content_grid_3cols_2rows.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/content_grid_3cols_2rows-6ff2b18eab350813273a5355836f551d.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/content_grid_3cols_2rows.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "ContentGrid", $dKeys["type"] ) : $dKeys["type"] == "ContentGrid" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "4_columns_1_row", $dKeys["view"] ) : $dKeys["view"] == "4_columns_1_row" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/content_grid_4cols_1row-3cde1d8bc3234b794a946b7c060fcb95.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/content_grid_4cols_1row.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/content_grid_4cols_1row-3cde1d8bc3234b794a946b7c060fcb95.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/content_grid_4cols_1row.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "ContentGrid", $dKeys["type"] ) : $dKeys["type"] == "ContentGrid" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "4_columns_2_rows", $dKeys["view"] ) : $dKeys["view"] == "4_columns_2_rows" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/content_grid_4cols_2rows-c0f4dcf799e06d6a2ebf47bb654639f4.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/content_grid_4cols_2rows.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/content_grid_4cols_2rows-c0f4dcf799e06d6a2ebf47bb654639f4.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/content_grid_4cols_2rows.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "Gallery", $dKeys["type"] ) : $dKeys["type"] == "Gallery" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "default", $dKeys["view"] ) : $dKeys["view"] == "default" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/gallery-6b078b5f5d22ebf28502a3d33af2b79a.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/gallery.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/gallery-6b078b5f5d22ebf28502a3d33af2b79a.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/gallery.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "Banner", $dKeys["type"] ) : $dKeys["type"] == "Banner" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "banner_url", $dKeys["view"] ) : $dKeys["view"] == "banner_url" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/banner_url-f707ff57cfe22512d906cf1670a23efc.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/banner_url.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/banner_url-f707ff57cfe22512d906cf1670a23efc.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/banner_url.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "Banner", $dKeys["type"] ) : $dKeys["type"] == "Banner" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "banner_code", $dKeys["view"] ) : $dKeys["view"] == "banner_code" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/banner_code-3b9b31133d97056666c71e1caeb0fdc4.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/banner_code.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/banner_code-3b9b31133d97056666c71e1caeb0fdc4.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/banner_code.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "Video", $dKeys["type"] ) : $dKeys["type"] == "Video" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "default", $dKeys["view"] ) : $dKeys["view"] == "default" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/video-b135662bf9669bded81235d9551f96a0.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/video.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/video-b135662bf9669bded81235d9551f96a0.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/video.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "TagCloud", $dKeys["type"] ) : $dKeys["type"] == "TagCloud" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "default", $dKeys["view"] ) : $dKeys["view"] == "default" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/tag_cloud-13bc2ada6a5dc321f91b2c7856f9c5e2.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/tag_cloud.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/tag_cloud-13bc2ada6a5dc321f91b2c7856f9c5e2.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/tag_cloud.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "Poll", $dKeys["type"] ) : $dKeys["type"] == "Poll" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "default", $dKeys["view"] ) : $dKeys["view"] == "default" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/poll-d51da3c187bd9fde60f9461ea09fb12f.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/poll.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/poll-d51da3c187bd9fde60f9461ea09fb12f.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/poll.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "ItemList", $dKeys["type"] ) : $dKeys["type"] == "ItemList" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "default", $dKeys["view"] ) : $dKeys["view"] == "default" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/item_list-454bcb23de0a6a7fda9eb45cb3e2f6ef.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/item_list.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/item_list-454bcb23de0a6a7fda9eb45cb3e2f6ef.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/item_list.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "FeedReader", $dKeys["type"] ) : $dKeys["type"] == "FeedReader" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "default", $dKeys["view"] ) : $dKeys["view"] == "default" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/feed_reader-8c0d34332041ac436b89f3fcda1061d8.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/feed_reader.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/feed_reader-8c0d34332041ac436b89f3fcda1061d8.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/feed_reader.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "FeedbackForm", $dKeys["type"] ) : $dKeys["type"] == "FeedbackForm" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "default", $dKeys["view"] ) : $dKeys["view"] == "default" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/feedback_form-be9d513513e726fcda9e7361503c14f4.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/feedback_form.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/feedback_form-be9d513513e726fcda9e7361503c14f4.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/feedback_form.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["type"] ) and ( is_array( $dKeys["type"] ) ? in_array( "HighlightedItem", $dKeys["type"] ) : $dKeys["type"] == "HighlightedItem" ) and
           isset( $dKeys["view"] ) and ( is_array( $dKeys["view"] ) ? in_array( "default", $dKeys["view"] ) : $dKeys["view"] == "default" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/highlighted_item-06928ae0d30e865bf0d2a041d7598cc5.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/override/templates/block/highlighted_item.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/highlighted_item-06928ae0d30e865bf0d2a041d7598cc5.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/override/templates/block/highlighted_item.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/view-6f43bcbd578b0772c27fe9c929c78471.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezflow/design/standard/templates/block/view/view.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/view-6f43bcbd578b0772c27fe9c929c78471.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'ContentAttributeBlockView' : ( $currentNamespace . ':' . 'ContentAttributeBlockView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezflow/design/standard/templates/block/view/view.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
}
$dKeys = array_pop( $dKeysStack );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "ContentAttributeBlockView";
else
    $namespace .= ':ContentAttributeBlockView';
unset( $vars[$namespace]['block'] );
$text .= '    </div>
    <div class="block-separator"></div>';
}
unset( $if_cond );
// if ends

$oldRestoreIncludeArray_6a39ff852f104d88e9a49a58253090ec = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
$restoreIncludeArray = array();

if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( "design" );
    $dKeys = $resH->keys();
}

$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/zone_block_bottom-f4a3d8f3c34c5c91490ac59ef502cb5d.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezflow/design/standard/templates/parts/zone_block_bottom.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/zone_block_bottom-f4a3d8f3c34c5c91490ac59ef502cb5d.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezflow/design/standard/templates/parts/zone_block_bottom.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

foreach ( $restoreIncludeArray as $element )
{
    if ( $element[2] === 'unset' )
    {
        unset( $vars[$element[0]][$element[1]] );
        continue;
    }
    $vars[$element[0]][$element[1]] = $element[2];
}
$restoreIncludeArray = $oldRestoreIncludeArray_6a39ff852f104d88e9a49a58253090ec;


$setArray = $oldSetArray_c529cde282c669f1688881fbee76c352;
$tpl->Level--;
?>
