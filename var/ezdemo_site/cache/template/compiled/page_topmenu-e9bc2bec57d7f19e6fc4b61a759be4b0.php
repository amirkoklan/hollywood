<?php
// URI:       extension/ezdemo/design/ezdemo/templates/page_topmenu.tpl
// Filename:  extension/ezdemo/design/ezdemo/templates/page_topmenu.tpl
// Timestamp: 1381794969 (Mon Oct 14 23:56:09 UTC 2013)
$oldSetArray_2c2c45c68e50c7837b91053f15d26cc8 = isset( $setArray ) ? $setArray : array();
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
            1 => 'design:menu/',
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
              2 => 'pagedata',
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
                1 => 'top_menu',
                2 => false,
              ),
            ),
            2 => false,
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            0 => 1,
            1 => '.tpl',
            2 => false,
          ),
        ),
      ),
      2 => false,
    ),
  ),
),
                       array (
  0 => 
  array (
    0 => 1,
    1 => 0,
    2 => 1,
  ),
  1 => 
  array (
    0 => 1,
    1 => 62,
    2 => 63,
  ),
  2 => 'extension/ezdemo/design/ezdemo/templates/page_topmenu.tpl',
),
                       $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );


$setArray = $oldSetArray_2c2c45c68e50c7837b91053f15d26cc8;
$tpl->Level--;
?>
