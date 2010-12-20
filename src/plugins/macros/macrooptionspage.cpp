/**************************************************************************
**
** This file is part of Qt Creator
**
** Copyright (c) 2010 Nicolas Arnaud-Cormos.
**
** Contact: Nokia Corporation (qt-info@nokia.com)
**
** Commercial Usage
**
** Licensees holding valid Qt Commercial licenses may use this file in
** accordance with the Qt Commercial License Agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and Nokia.
**
** GNU Lesser General Public License Usage
**
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 2.1 as published by the Free Software
** Foundation and appearing in the file LICENSE.LGPL included in the
** packaging of this file.  Please review the following information to
** ensure the GNU Lesser General Public License version 2.1 requirements
** will be met: http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
**
** If you are unsure which license is appropriate for your use, please
** contact the sales department at http://qt.nokia.com/contact.
**
**************************************************************************/

#include "macrooptionspage.h"

#include "macromanager.h"
#include "macrosconstants.h"
#include "macrooptionswidget.h"

#include <texteditor/texteditorconstants.h>

#include <QCoreApplication>
#include <QWidget>
#include <QIcon>

using namespace Macros;
using namespace Macros::Internal;


MacroOptionsPage::MacroOptionsPage(QObject *parent)
    : Core::IOptionsPage(parent)
{
}

MacroOptionsPage::~MacroOptionsPage()
{
}

QString MacroOptionsPage::id() const
{
    return Constants::M_OPTIONS_PAGE;
}

QString MacroOptionsPage::displayName() const
{
    return QCoreApplication::translate("Macro", Constants::M_OPTIONS_TR_PAGE);
}

QString MacroOptionsPage::category() const
{
    return TextEditor::Constants::TEXT_EDITOR_SETTINGS_CATEGORY;
}

QString MacroOptionsPage::displayCategory() const
{
    return QCoreApplication::translate("TextEditor",
                                       TextEditor::Constants::TEXT_EDITOR_SETTINGS_TR_CATEGORY);
}

QIcon MacroOptionsPage::categoryIcon() const
{
    return QIcon();
}

QWidget *MacroOptionsPage::createPage(QWidget *parent)
{
    m_widget = new MacroOptionsWidget(parent);
    m_widget->setSettings(MacroManager::instance()->settings());
    return m_widget;
}

void MacroOptionsPage::apply()
{
    if (m_widget)
        m_widget->apply();
}

void MacroOptionsPage::finish()
{
    // Nothing to do
}
