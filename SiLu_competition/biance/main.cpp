#include <QCoreApplication>
#include "ctestthread.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    CTestThread func;
    func.start();
    return a.exec();
}
