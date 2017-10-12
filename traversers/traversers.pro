############################################################################
##
## Copyright (C) 2010 Nokia Corporation and/or its subsidiary(-ies).
## All rights reserved.
## Contact: Nokia Corporation (testabilitydriver@nokia.com)
##
## This file is part of Testability Driver Qt Agent
##
## If you have questions regarding the use of this file, please contact
## Nokia at testabilitydriver@nokia.com .
##
## This library is free software; you can redistribute it and/or
## modify it under the terms of the GNU Lesser General Public
## License version 2.1 as published by the Free Software Foundation
## and appearing in the file LICENSE.LGPL included in the packaging
## of this file.
##
############################################################################

TEMPLATE = subdirs

SUBDIRS += qttraverser

SUBDIRS += viewitemtraverser

SUBDIRS += layouttraverser

SUBDIRS += scenegraphtraverser

######
# the Qt Webkit is no longer available since Qt 5.6
greaterThan(QT_MAJOR_VERSION, 4) {
  greaterThan(QT_MINOR_VERSION, 5) {
    CONFIG += no_webkit
  }
}

!CONFIG(no_webkit) {
    SUBDIRS += webkittraverser
}


CONFIG  += ordered
