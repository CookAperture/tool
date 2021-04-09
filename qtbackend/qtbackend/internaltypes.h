#pragma once
#include <string>
#include <vector>
#include <functional>

//#include <Qt>
//#include <QtCore>
//#include <QtNetwork/QTcpServer>
//#include <QtNetwork/QTcpSocket>

template<typename ... Args>
using Event = std::function<void(Args ...)>;
