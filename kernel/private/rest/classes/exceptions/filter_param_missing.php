<?php
/**
 * File containing the ezpRestFilterMissingParameterException exception
 *
 * @copyright Copyright (C) 1999-2012 eZ Systems AS. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 * @version  2012.6
 * @package kernel
 */

class ezpRestFilterMissingParameterException extends ezpRestException
{
    public function __construct()
    {
        parent::__construct( "Missing parameter for filter constructor." );
    }
}
