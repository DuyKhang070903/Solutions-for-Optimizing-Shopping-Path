/********************************************************************************
** Form generated from reading UI file 'robot_gui.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ROBOT_GUI_H
#define UI_ROBOT_GUI_H

#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtWidgets/QApplication>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTableWidget>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_robot_gui
{
public:
    QLabel *label;
    QLabel *lblTime;
    QLabel *label_3;
    QLabel *lblDay;
    QTableWidget *wdgTableShopping;
    QPushButton *btSearch;
    QWidget *wdgMap;
    QLineEdit *lSearchProduct;
    QGroupBox *groupBox;
    QLabel *label_2;
    QLabel *label_4;
    QLabel *label_5;
    QLabel *label_6;
    QLabel *label_7;
    QLabel *lblMaxVelocity;
    QLabel *lblLinearVelocity;
    QLabel *lblAngularVelocity;
    QLabel *lblLocation;
    QGroupBox *groupBox_2;
    QPushButton *btnStopResume;
    QPushButton *btnIncreaseVelocity;
    QPushButton *btnDecreaseVelocity;
    QPushButton *btCheckoutCounter;
    QPushButton *btClear;

    void setupUi(QWidget *robot_gui)
    {
        if (robot_gui->objectName().isEmpty())
            robot_gui->setObjectName(QString::fromUtf8("robot_gui"));
        robot_gui->resize(1024, 600);
        QFont font;
        font.setPointSize(15);
        robot_gui->setFont(font);
        label = new QLabel(robot_gui);
        label->setObjectName(QString::fromUtf8("label"));
        label->setGeometry(QRect(30, 20, 71, 20));
        QFont font1;
        font1.setPointSize(14);
        label->setFont(font1);
        lblTime = new QLabel(robot_gui);
        lblTime->setObjectName(QString::fromUtf8("lblTime"));
        lblTime->setGeometry(QRect(80, 20, 141, 17));
        lblTime->setFont(font1);
        label_3 = new QLabel(robot_gui);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        label_3->setGeometry(QRect(290, 20, 71, 21));
        label_3->setFont(font1);
        lblDay = new QLabel(robot_gui);
        lblDay->setObjectName(QString::fromUtf8("lblDay"));
        lblDay->setGeometry(QRect(340, 20, 131, 21));
        lblDay->setFont(font1);
        wdgTableShopping = new QTableWidget(robot_gui);
        wdgTableShopping->setObjectName(QString::fromUtf8("wdgTableShopping"));
        wdgTableShopping->setGeometry(QRect(20, 100, 461, 481));
        wdgTableShopping->setFont(font1);
        wdgTableShopping->setColumnCount(0);
        wdgTableShopping->horizontalHeader()->setDefaultSectionSize(209);
        btSearch = new QPushButton(robot_gui);
        btSearch->setObjectName(QString::fromUtf8("btSearch"));
        btSearch->setGeometry(QRect(430, 50, 51, 41));
        QFont font2;
        font2.setPointSize(11);
        btSearch->setFont(font2);
        btSearch->setAutoFillBackground(false);
        btSearch->setStyleSheet(QString::fromUtf8(""));
        QIcon icon;
        icon.addFile(QString::fromUtf8("../../resource/Search_Icon.png"), QSize(), QIcon::Normal, QIcon::Off);
        btSearch->setIcon(icon);
        btSearch->setIconSize(QSize(40, 40));
        wdgMap = new QWidget(robot_gui);
        wdgMap->setObjectName(QString::fromUtf8("wdgMap"));
        wdgMap->setGeometry(QRect(490, 250, 511, 331));
        lSearchProduct = new QLineEdit(robot_gui);
        lSearchProduct->setObjectName(QString::fromUtf8("lSearchProduct"));
        lSearchProduct->setGeometry(QRect(20, 50, 341, 41));
        groupBox = new QGroupBox(robot_gui);
        groupBox->setObjectName(QString::fromUtf8("groupBox"));
        groupBox->setGeometry(QRect(490, 20, 291, 221));
        label_2 = new QLabel(groupBox);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setGeometry(QRect(10, 30, 131, 31));
        label_4 = new QLabel(groupBox);
        label_4->setObjectName(QString::fromUtf8("label_4"));
        label_4->setGeometry(QRect(10, 70, 91, 31));
        label_5 = new QLabel(groupBox);
        label_5->setObjectName(QString::fromUtf8("label_5"));
        label_5->setGeometry(QRect(40, 110, 67, 17));
        label_6 = new QLabel(groupBox);
        label_6->setObjectName(QString::fromUtf8("label_6"));
        label_6->setGeometry(QRect(40, 140, 81, 31));
        label_7 = new QLabel(groupBox);
        label_7->setObjectName(QString::fromUtf8("label_7"));
        label_7->setGeometry(QRect(10, 180, 91, 21));
        lblMaxVelocity = new QLabel(groupBox);
        lblMaxVelocity->setObjectName(QString::fromUtf8("lblMaxVelocity"));
        lblMaxVelocity->setGeometry(QRect(140, 36, 141, 21));
        lblLinearVelocity = new QLabel(groupBox);
        lblLinearVelocity->setObjectName(QString::fromUtf8("lblLinearVelocity"));
        lblLinearVelocity->setGeometry(QRect(130, 110, 141, 21));
        lblAngularVelocity = new QLabel(groupBox);
        lblAngularVelocity->setObjectName(QString::fromUtf8("lblAngularVelocity"));
        lblAngularVelocity->setGeometry(QRect(130, 140, 141, 31));
        lblLocation = new QLabel(groupBox);
        lblLocation->setObjectName(QString::fromUtf8("lblLocation"));
        lblLocation->setGeometry(QRect(110, 170, 161, 41));
        groupBox_2 = new QGroupBox(robot_gui);
        groupBox_2->setObjectName(QString::fromUtf8("groupBox_2"));
        groupBox_2->setGeometry(QRect(790, 20, 211, 221));
        btnStopResume = new QPushButton(groupBox_2);
        btnStopResume->setObjectName(QString::fromUtf8("btnStopResume"));
        btnStopResume->setGeometry(QRect(20, 40, 171, 41));
        btnIncreaseVelocity = new QPushButton(groupBox_2);
        btnIncreaseVelocity->setObjectName(QString::fromUtf8("btnIncreaseVelocity"));
        btnIncreaseVelocity->setGeometry(QRect(20, 100, 171, 41));
        btnDecreaseVelocity = new QPushButton(groupBox_2);
        btnDecreaseVelocity->setObjectName(QString::fromUtf8("btnDecreaseVelocity"));
        btnDecreaseVelocity->setGeometry(QRect(20, 160, 171, 41));
        btCheckoutCounter = new QPushButton(robot_gui);
        btCheckoutCounter->setObjectName(QString::fromUtf8("btCheckoutCounter"));
        btCheckoutCounter->setGeometry(QRect(370, 50, 51, 41));
        btCheckoutCounter->setFont(font2);
        btCheckoutCounter->setAutoFillBackground(false);
        btCheckoutCounter->setStyleSheet(QString::fromUtf8(""));
        QIcon icon1;
        icon1.addFile(QString::fromUtf8("../../resource/Checkout_Counter.png"), QSize(), QIcon::Normal, QIcon::Off);
        btCheckoutCounter->setIcon(icon1);
        btCheckoutCounter->setIconSize(QSize(40, 40));
        btClear = new QPushButton(robot_gui);
        btClear->setObjectName(QString::fromUtf8("btClear"));
        btClear->setGeometry(QRect(420, 530, 61, 51));
        btClear->setFont(font2);
        btClear->setAutoFillBackground(false);
        btClear->setStyleSheet(QString::fromUtf8(""));
        QIcon icon2;
        icon2.addFile(QString::fromUtf8("../../resource/Clear.png"), QSize(), QIcon::Normal, QIcon::Off);
        btClear->setIcon(icon2);
        btClear->setIconSize(QSize(40, 40));

        retranslateUi(robot_gui);

        QMetaObject::connectSlotsByName(robot_gui);
    } // setupUi

    void retranslateUi(QWidget *robot_gui)
    {
        robot_gui->setWindowTitle(QApplication::translate("robot_gui", "Form", nullptr));
        label->setText(QApplication::translate("robot_gui", "Time:", nullptr));
        lblTime->setText(QApplication::translate("robot_gui", ".. : .. : ..", nullptr));
        label_3->setText(QApplication::translate("robot_gui", "Date:", nullptr));
        lblDay->setText(QApplication::translate("robot_gui", ".. / .. / ..", nullptr));
        btSearch->setText(QString());
#ifndef QT_NO_SHORTCUT
        btSearch->setShortcut(QString());
#endif // QT_NO_SHORTCUT
        groupBox->setTitle(QApplication::translate("robot_gui", "Robot Information", nullptr));
        label_2->setText(QApplication::translate("robot_gui", "Max velocity:", nullptr));
        label_4->setText(QApplication::translate("robot_gui", "Velocity:", nullptr));
        label_5->setText(QApplication::translate("robot_gui", "Linear:", nullptr));
        label_6->setText(QApplication::translate("robot_gui", "Angular:", nullptr));
        label_7->setText(QApplication::translate("robot_gui", "Location:", nullptr));
        lblMaxVelocity->setText(QApplication::translate("robot_gui", "....", nullptr));
        lblLinearVelocity->setText(QApplication::translate("robot_gui", "....", nullptr));
        lblAngularVelocity->setText(QApplication::translate("robot_gui", "....", nullptr));
        lblLocation->setText(QApplication::translate("robot_gui", "....", nullptr));
        groupBox_2->setTitle(QApplication::translate("robot_gui", "Command Button", nullptr));
        btnStopResume->setText(QApplication::translate("robot_gui", "STOP", nullptr));
        btnIncreaseVelocity->setText(QApplication::translate("robot_gui", "INCREASE VEL", nullptr));
        btnDecreaseVelocity->setText(QApplication::translate("robot_gui", "DECREASE VEL", nullptr));
        btCheckoutCounter->setText(QString());
#ifndef QT_NO_SHORTCUT
        btCheckoutCounter->setShortcut(QString());
#endif // QT_NO_SHORTCUT
        btClear->setText(QString());
#ifndef QT_NO_SHORTCUT
        btClear->setShortcut(QString());
#endif // QT_NO_SHORTCUT
    } // retranslateUi

};

namespace Ui {
    class robot_gui: public Ui_robot_gui {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ROBOT_GUI_H
