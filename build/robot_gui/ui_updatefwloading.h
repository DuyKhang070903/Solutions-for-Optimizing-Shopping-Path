/********************************************************************************
** Form generated from reading UI file 'updatefwloading.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_UPDATEFWLOADING_H
#define UI_UPDATEFWLOADING_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_updateFWLoading
{
public:

    void setupUi(QWidget *updateFWLoading)
    {
        if (updateFWLoading->objectName().isEmpty())
            updateFWLoading->setObjectName(QString::fromUtf8("updateFWLoading"));
        updateFWLoading->resize(576, 252);

        retranslateUi(updateFWLoading);

        QMetaObject::connectSlotsByName(updateFWLoading);
    } // setupUi

    void retranslateUi(QWidget *updateFWLoading)
    {
        updateFWLoading->setWindowTitle(QApplication::translate("updateFWLoading", "Form", nullptr));
    } // retranslateUi

};

namespace Ui {
    class updateFWLoading: public Ui_updateFWLoading {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_UPDATEFWLOADING_H
