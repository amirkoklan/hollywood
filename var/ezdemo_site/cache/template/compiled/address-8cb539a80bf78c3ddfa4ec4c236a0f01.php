<?php
// URI:       extension/ezdemo/design/ezdemo/templates/footer/address.tpl
// Filename:  extension/ezdemo/design/ezdemo/templates/footer/address.tpl
// Timestamp: 1381794969 (Mon Oct 14 23:56:09 UTC 2013)
$oldSetArray_d108b5d22d43797b8172e8fb5a0304b9 = isset( $setArray ) ? $setArray : array();
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

$text .= '<h3>Address</h3>
<address>
    ';
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
        2 => 'node',
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
          1 => 'description',
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
    0 => 3,
    1 => 4,
    2 => 73,
  ),
  1 => 
  array (
    0 => 3,
    1 => 59,
    2 => 128,
  ),
  2 => 'extension/ezdemo/design/ezdemo/templates/footer/address.tpl',
),
                       $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );

$text .= '</address>
';

$setArray = $oldSetArray_d108b5d22d43797b8172e8fb5a0304b9;
$tpl->Level--;
?>
