#pragma once

#include <QtCore/qglobal.h>

#ifndef BUILD_STATIC
# if defined(QTBACKEND_LIB)
#  define QTBACKEND_EXPORT Q_DECL_EXPORT
# else
#  define QTBACKEND_EXPORT Q_DECL_IMPORT
# endif
#else
# define QTBACKEND_EXPORT
#endif
