<?php
// URI:       design:content/datatype/view/ezpage.tpl
// Filename:  extension/ezflow/design/standard/templates/content/datatype/view/ezpage.tpl
// Timestamp: 1381794970 (Mon Oct 14 23:56:10 UTC 2013)
$oldSetArray_5a2348cfa198b3e47e09694241adac45 = isset( $setArray ) ? $setArray : array();
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

// def $template
unset( $var );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$varData = array( 'value' => $var );
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
        2 => 'attribute',
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
          1 => 'content',
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
          1 => 'zone_layout',
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
      1 => 'Template',
      2 => false,
    ),
  ),
  2 => 
  array (
    0 => 
    array (
      0 => 1,
      1 => 'zone.ini',
      2 => false,
    ),
  ),
),
                       $rootNamespace, $currentNamespace, $varData, false, false );
$var = $varData['value'];
unset( $varData );
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( $tpl->hasVariable( 'template', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'template' is already defined.", array (
  0 => 
  array (
    0 => 1,
    1 => 0,
    2 => 1,
  ),
  1 => 
  array (
    0 => 3,
    1 => 50,
    2 => 170,
  ),
  2 => 'extension/ezflow/design/standard/templates/content/datatype/view/ezpage.tpl',
) );
    $tpl->setVariable( 'template', $var, $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'template', $var, $rootNamespace );
}

// def $zones
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'attribute', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['attribute'] : null;
$var1 = compiledFetchAttribute( $var, 'content' );
unset( $var );
$var = $var1;
$var1 = compiledFetchAttribute( $var, 'zones' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( $tpl->hasVariable( 'zones', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'zones' is already defined.", array (
  0 => 
  array (
    0 => 1,
    1 => 0,
    2 => 1,
  ),
  1 => 
  array (
    0 => 3,
    1 => 50,
    2 => 170,
  ),
  2 => 'extension/ezflow/design/standard/templates/content/datatype/view/ezpage.tpl',
) );
    $tpl->setVariable( 'zones', $var, $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'zones', $var, $rootNamespace );
}

// def $zone_layout
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'attribute', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['attribute'] : null;
$var1 = compiledFetchAttribute( $var, 'content' );
unset( $var );
$var = $var1;
$var1 = compiledFetchAttribute( $var, 'zone_layout' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( $tpl->hasVariable( 'zone_layout', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'zone_layout' is already defined.", array (
  0 => 
  array (
    0 => 1,
    1 => 0,
    2 => 1,
  ),
  1 => 
  array (
    0 => 3,
    1 => 50,
    2 => 170,
  ),
  2 => 'extension/ezflow/design/standard/templates/content/datatype/view/ezpage.tpl',
) );
    $tpl->setVariable( 'zone_layout', $var, $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'zone_layout', $var, $rootNamespace );
}

$textElements = array();
$tpl->processFunction( 'include', $textElements,
                       false,
                       array (
  'uri' => 
  array (
    0 => 
    array (
      0 => 6,
      1 => 
      array (
        0 => 'concat',
        1 => 
        array (
          0 => 
          array (
            0 => 1,
            1 => 'design:zone/',
            2 => false,
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            0 => 4,
            1 => 
            array (
              0 => '',
              1 => 2,
              2 => 'template',
            ),
            2 => false,
          ),
        ),
      ),
      2 => false,
    ),
  ),
  'zones' => 
  array (
    0 => 
    array (
      0 => 4,
      1 => 
      array (
        0 => '',
        1 => 2,
        2 => 'zones',
      ),
      2 => false,
    ),
  ),
  'zone_layout' => 
  array (
    0 => 
    array (
      0 => 4,
      1 => 
      array (
        0 => '',
        1 => 2,
        2 => 'zone_layout',
      ),
      2 => false,
    ),
  ),
  'attribute' => 
  array (
    0 => 
    array (
      0 => 4,
      1 => 
      array (
        0 => '',
        1 => 2,
        2 => 'attribute',
      ),
      2 => false,
    ),
  ),
),
                       array (
  0 => 
  array (
    0 => 5,
    1 => 0,
    2 => 174,
  ),
  1 => 
  array (
    0 => 5,
    1 => 106,
    2 => 280,
  ),
  2 => 'extension/ezflow/design/standard/templates/content/datatype/view/ezpage.tpl',
),
                       $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );


$setArray = $oldSetArray_5a2348cfa198b3e47e09694241adac45;
$tpl->Level--;
?>
