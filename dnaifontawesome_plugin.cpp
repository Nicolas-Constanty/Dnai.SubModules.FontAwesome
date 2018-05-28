#include "dnaifontawesome_plugin.h"

#include <qqml.h>
#include <QFontDatabase>
#include <QDebug>

void DnaiFontAwesomePlugin::registerTypes(const char *uri)
{
    // @uri com.saltystudio.fontawesomecomponent
    Q_ASSERT(uri == QLatin1String("Dnai.FontAwesome"));
    auto id = QFontDatabase::addApplicationFont(":/fa5.otf");
//    QString family = QFontDatabase::applicationFontFamilies(id).at(0);
//    qDebug() << family;
    id = QFontDatabase::addApplicationFont(":/faBrand5.otf");
//    family = QFontDatabase::applicationFontFamilies(id).at(0);
//    qDebug() << family;
    id = QFontDatabase::addApplicationFont(":/faSolid5.otf");
//    family = QFontDatabase::applicationFontFamilies(id).at(0);
//    qDebug() << family;
}

