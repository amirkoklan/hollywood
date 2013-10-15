<?php
// URI:       extension/ezdemo/design/ezdemo/templates/page_toppath.tpl
// Filename:  extension/ezdemo/design/ezdemo/templates/page_toppath.tpl
// Timestamp: 1381794969 (Mon Oct 14 23:56:09 UTC 2013)
$oldSetArray_ee78f397b38ea2027fd0b8e53f322d55 = isset( $setArray ) ? $setArray : array();
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

$text .= '<div class="breadcrumb-wrapper nav-collapse">
    ';
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
            1 => 'design:parts/',
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
                1 => 'show_path',
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
    0 => 2,
    1 => 4,
    2 => 51,
  ),
  1 => 
  array (
    0 => 2,
    1 => 68,
    2 => 115,
  ),
  2 => 'extension/ezdemo/design/ezdemo/templates/page_toppath.tpl',
),
                       $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );

$text .= '</div>
';

$setArray = $oldSetArray_ee78f397b38ea2027fd0b8e53f322d55;
$tpl->Level--;
?>
