<?php
// This is a auto generated ini cache file, time created:Tue, 15 Oct 13 00:22:25 +0000
$data = array(
'rev' => 2,
'created' => '2013-10-15T00:22:25+00:00',
'charset' => "utf-8",
'files' => array (0 => 'settings/image.ini',1 => 'extension/ezflow/settings/image.ini.append.php',2 => 'extension/ezoe/settings/image.ini.append.php',3 => 'extension/ezie/settings/image.ini.append.php',4 => 'extension/ezdemo/settings/image.ini.append.php',5 => 'extension/ezmultiupload/settings/image.ini.append.php',6 => 'settings/override/image.ini.append.php',
),
'file' => 'settings/image.ini',
'val' => array ('GDSettings' => array ('HasGD2' => 'false',),'FileSettings' => array ('TemporaryDir' => 'imagetmp','PublishedImages' => 'images','VersionedImages' => 'images-versioned','DirPermissions' => '0777','ImagePermissions' => '0666',),'OutputSettings' => array ('AllowedOutputFormat' => array (0 => 'image/jpeg',1 => 'image/png',2 => 'image/gif',),),'AliasSettings' => array ('AliasList' => array (0 => 'reference',1 => 'small',2 => 'tiny',3 => 'medium',4 => 'large',5 => 'rss',6 => 'mainstory1',7 => 'mainstory2',8 => 'mainstory3',9 => 'block2items1',10 => 'block2items2',11 => 'block3items3',12 => 'blockgallery1',13 => 'imagelarge',14 => 'campaign',15 => 'backgroundimage',16 => 'highlighted',17 => 'contentgrid',18 => 'gallery',19 => 'galleryfull',20 => 'imagefull',21 => 'multiuploadthumbnail',),),'reference' => array ('Filters' => array (0 => 'geometry/scaledownonly=600;600',),),'small' => array ('Reference' => 'reference','Filters' => array (0 => 'geometry/scaledownonly=100;100',),),'tiny' => array ('Reference' => 'reference','Filters' => array (0 => 'geometry/scaledownonly=30;30',),),'medium' => array ('Reference' => 'reference','Filters' => array (0 => 'geometry/scaledownonly=200;200',),),'large' => array ('Reference' => 'reference','Filters' => array (0 => 'geometry/scaledownonly=300;300',),),'rss' => array ('Reference' => 'reference','Filters' => array (0 => 'geometry/scale=88;31',),),'MIMETypeSettings' => array ('OverrideList' => array (0 => 'AnimatedGIF',1 => 'LayeredPhotoshop',),'Quality' => array (0 => 'image/jpeg;75',),'ConversionRules' => array (0 => 'image/gif;image/png',1 => 'image/x-xpixmap;image/png',2 => '*;image/jpeg',),),'AnimatedGIF' => array ('MIMEType' => 'image/gif','Match' => array ('is_animated' => '1',),'OverrideMIMEType' => 'animation/gif','DisallowedFilters' => array (0 => '*',),'ExtraFilters' => array (),),'LayeredPhotoshop' => array ('MIMEType' => 'application/x-photoshop','ExtraFilters' => array (0 => 'flatten',1 => 'resize=200x',),),'ShellSettings' => array ('ConvertPath' => '',),'ImageConverterSettings' => array ('ImageConverters' => array (0 => 'ImageMagick',1 => 'GD',),'LockTimeout' => '60',),'GD' => array ('Name' => 'GD','IsEnabled' => 'true','Handler' => 'eZImageGDFactory',),'ImageMagick' => array ('Name' => 'ImageMagick','IsEnabled' => 'false','Handler' => 'eZImageShellFactory','ExecutablePath' => '','Executable' => 'convert','PreParameters' => '','PostParameters' => '','UseTypeTag' => ':','InputMIMEList' => array (0 => '*',),'OutputMIMEList' => array (0 => '*',),'QualityParameters' => array (0 => 'image/jpeg;-quality %1',),'FrameRangeParameters' => array (0 => 'application/x-photoshop;[0]',),'Filters' => array (0 => 'geometry/scale=-geometry %1x%2',1 => 'geometry/scalewidth=-geometry %1',2 => 'geometry/scaleheight=-geometry x%1',3 => 'geometry/scaledownonly=-geometry %1x%2>',4 => 'geometry/scalewidthdownonly=-geometry %1>',5 => 'geometry/scaleheightdownonly=-geometry x%1>',6 => 'geometry/scaleexact=-geometry %1x%2!',7 => 'geometry/scalepercent=-geometry %1x%2%',8 => 'geometry/crop=-crop %1x%2+%3+%4',9 => 'filter/noise=-noise %1',10 => 'filter/swirl=-swirl %1',11 => 'colorspace/gray=-colorspace GRAY',12 => 'colorspace/transparent=-colorspace Transparent',13 => 'colorspace=-colorspace %1',14 => 'border=-border %1x%2',15 => 'border/color=-bordercolor rgb(%1,%2,%3)',16 => 'border/width=-borderwidth %1',17 => 'flatten=-flatten',18 => 'resize=-resize %1',),'MIMETagMap' => array (0 => 'image/x-xpixmap;XPM',1 => 'image/png;PNG',2 => 'image/jpeg;JPEG',3 => 'image/bmp;BMP',4 => 'image/gif;GIF',5 => 'image/x-portable-bitmap;PBM',6 => 'image/tiff;TIFF',7 => 'image/pcx;PCX',8 => 'image/x-pict;PICT',9 => 'image/svg+xml;SVG',10 => 'image/tga;TGA',11 => 'image/vnd.wap.wbmp;WBMP',12 => 'image/x-xbitmap;XBM',13 => 'image/x-xcf-gimp;XCF',14 => 'application/x-photoshop;PSD',15 => 'application/pdf;PDF',16 => 'application/postscript;PS',17 => 'text/plain;TEXT',),),'AnalyzerSettings' => array ('RepositoryList' => array (0 => 'lib/ezimage/classes',),'ExtensionList' => array (),'ImageAnalyzers' => array (0 => 'GIF',1 => 'EXIF',),'ImageAnalyzerAlias' => array (),'AnalyzerMIMEList' => array (0 => 'image/gif',),),'GIFAnalyzer' => array ('Handler' => 'ezgif','MIMEList' => array (0 => 'image/gif',),),'EXIFAnalyzer' => array ('Handler' => 'ezexif','MIMEList' => array (0 => 'image/jpeg',1 => 'image/tiff',),),'mainstory1' => array ('Reference' => '','Filters' => array (0 => 'geometry/scalewidth=468',1 => 'geometry/crop=468;396;0;0',),),'mainstory2' => array ('Reference' => '','Filters' => array (0 => 'geometry/scalewidth=439',1 => 'geometry/crop=439;233;0;0',),),'mainstory3' => array ('Reference' => '','Filters' => array (0 => 'geometry/scalewidth=201',1 => 'geometry/crop=201;239;0;0',),),'block2items1' => array ('Reference' => '','Filters' => array (0 => 'geometry/scalewidth=195',1 => 'geometry/crop=195;98;0;0',),),'block2items2' => array ('Reference' => '','Filters' => array (0 => 'geometry/scalewidth=195',1 => 'geometry/crop=195;98;0;0',),),'block3items3' => array ('Reference' => '','Filters' => array (0 => 'geometry/scalewidth=195',1 => 'geometry/crop=195;98;0;0',),),'blockgallery1' => array ('Reference' => '','Filters' => array (0 => 'geometry/scalewidth=126',1 => 'geometry/crop=126;84;0;0',),),'imagelarge' => array ('Reference' => '','Filters' => array (0 => 'geometry/scaledownonly=448;622',),),'eZIE' => array ('watermarks' => array (0 => 'elephpant.png',1 => 'ez-logo.png',),),'campaign' => array ('Reference' => 'original','Filters' => array (0 => 'geometry/scalewidthdownonly=770',1 => 'geometry/crop=770;390;0;0',),),'backgroundimage' => array ('Reference' => 'original','Filters' => array (0 => 'geometry/scalewidthdownonly=770',1 => 'geometry/crop=770;390;0;0',),),'highlighted' => array ('Reference' => 'original','Filters' => array (0 => 'geometry/scalewidthdownonly=300',1 => 'geometry/crop=300;300;0;0',),),'galleryfull' => array ('Reference' => 'original','Filters' => array (0 => 'geometry/scalewidthdownonly=770',),),'contentgrid' => array ('Reference' => 'original','Filters' => array (0 => 'geometry/scalewidthdownonly=370',1 => 'geometry/crop=370;160;0;0',),),'gallery' => array ('Reference' => 'original','Filters' => array (0 => 'geometry/scalewidthdownonly=770',1 => 'geometry/crop=770;390;0;0',),),'imagefull' => array ('Reference' => 'original','Filters' => array (0 => 'geometry/scalewidthdownonly=770',),),'multiuploadthumbnail' => array ('Reference' => '','Filters' => array (0 => 'geometry/scaledownonly=100;80',),),
));
?>