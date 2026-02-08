/****************************************************************************
** Meta object code from reading C++ file 'robot_gui.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "include/robot_gui/robot_gui.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'robot_gui.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_robot_gui_t {
    QByteArrayData data[21];
    char stringdata0[362];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_robot_gui_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_robot_gui_t qt_meta_stringdata_robot_gui = {
    {
QT_MOC_LITERAL(0, 0, 9), // "robot_gui"
QT_MOC_LITERAL(1, 10, 8), // "spinOnce"
QT_MOC_LITERAL(2, 19, 0), // ""
QT_MOC_LITERAL(3, 20, 17), // "updateDateTimeGui"
QT_MOC_LITERAL(4, 38, 17), // "updateSuggestions"
QT_MOC_LITERAL(5, 56, 4), // "text"
QT_MOC_LITERAL(6, 61, 13), // "onItemClicked"
QT_MOC_LITERAL(7, 75, 16), // "QListWidgetItem*"
QT_MOC_LITERAL(8, 92, 4), // "item"
QT_MOC_LITERAL(9, 97, 12), // "loadJsonData"
QT_MOC_LITERAL(10, 110, 13), // "fileNameData&"
QT_MOC_LITERAL(11, 124, 12), // "fileJsonName"
QT_MOC_LITERAL(12, 137, 19), // "checkForNewFirmware"
QT_MOC_LITERAL(13, 157, 31), // "on_wdgTableShopping_itemClicked"
QT_MOC_LITERAL(14, 189, 17), // "QTableWidgetItem*"
QT_MOC_LITERAL(15, 207, 19), // "on_btSearch_clicked"
QT_MOC_LITERAL(16, 227, 18), // "on_btClear_clicked"
QT_MOC_LITERAL(17, 246, 30), // "on_btnDecreaseVelocity_clicked"
QT_MOC_LITERAL(18, 277, 30), // "on_btnIncreaseVelocity_clicked"
QT_MOC_LITERAL(19, 308, 24), // "on_btnStopResume_clicked"
QT_MOC_LITERAL(20, 333, 28) // "on_btCheckoutCounter_clicked"

    },
    "robot_gui\0spinOnce\0\0updateDateTimeGui\0"
    "updateSuggestions\0text\0onItemClicked\0"
    "QListWidgetItem*\0item\0loadJsonData\0"
    "fileNameData&\0fileJsonName\0"
    "checkForNewFirmware\0on_wdgTableShopping_itemClicked\0"
    "QTableWidgetItem*\0on_btSearch_clicked\0"
    "on_btClear_clicked\0on_btnDecreaseVelocity_clicked\0"
    "on_btnIncreaseVelocity_clicked\0"
    "on_btnStopResume_clicked\0"
    "on_btCheckoutCounter_clicked"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_robot_gui[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      13,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   79,    2, 0x0a /* Public */,
       3,    0,   80,    2, 0x0a /* Public */,
       4,    1,   81,    2, 0x0a /* Public */,
       6,    1,   84,    2, 0x0a /* Public */,
       9,    1,   87,    2, 0x0a /* Public */,
      12,    0,   90,    2, 0x0a /* Public */,
      13,    1,   91,    2, 0x08 /* Private */,
      15,    0,   94,    2, 0x08 /* Private */,
      16,    0,   95,    2, 0x08 /* Private */,
      17,    0,   96,    2, 0x08 /* Private */,
      18,    0,   97,    2, 0x08 /* Private */,
      19,    0,   98,    2, 0x08 /* Private */,
      20,    0,   99,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    5,
    QMetaType::Void, 0x80000000 | 7,    8,
    QMetaType::Void, 0x80000000 | 10,   11,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 14,    8,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void robot_gui::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<robot_gui *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->spinOnce(); break;
        case 1: _t->updateDateTimeGui(); break;
        case 2: _t->updateSuggestions((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 3: _t->onItemClicked((*reinterpret_cast< QListWidgetItem*(*)>(_a[1]))); break;
        case 4: _t->loadJsonData((*reinterpret_cast< fileNameData(*)>(_a[1]))); break;
        case 5: _t->checkForNewFirmware(); break;
        case 6: _t->on_wdgTableShopping_itemClicked((*reinterpret_cast< QTableWidgetItem*(*)>(_a[1]))); break;
        case 7: _t->on_btSearch_clicked(); break;
        case 8: _t->on_btClear_clicked(); break;
        case 9: _t->on_btnDecreaseVelocity_clicked(); break;
        case 10: _t->on_btnIncreaseVelocity_clicked(); break;
        case 11: _t->on_btnStopResume_clicked(); break;
        case 12: _t->on_btCheckoutCounter_clicked(); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject robot_gui::staticMetaObject = { {
    &QWidget::staticMetaObject,
    qt_meta_stringdata_robot_gui.data,
    qt_meta_data_robot_gui,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *robot_gui::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *robot_gui::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_robot_gui.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int robot_gui::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 13)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 13;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 13)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 13;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
