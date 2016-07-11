

import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: page
    allowedOrientations: Orientation.Portrait
    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("О программе")
                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column
            anchors.margins: Theme.horizontalPageMargin
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("GPS Калькулятор")
            }
            Separator {
                horizontalAlignment: Text.AlignHCenter
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: Theme.paddingLarge
                anchors.rightMargin: Theme.paddingLarge
                color: Theme.secondaryHighlightColor
            }

            // ============ [КООРДИНАТА 1] ============================================= //

            Label {
                x: Theme.paddingLarge
                text: qsTr("Точка 1:")
                color: Theme.highlightBackgroundColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Row {
                id: rowPointOne
                x: Theme.paddingLarge
                width: parent.width - Theme.paddingLarge
                spacing: Theme.paddingSmall


                // ШИРОТА
                Rectangle {
                    width: label_p1_lat.width + textinput_p1_lat.width  - Theme.paddingLarge
                    height: label_p1_lat.height
                    color: "transparent"
                    border.color: Theme.secondaryHighlightColor
                    border.width: 2
                    radius: 10

                    Label {
                        id: label_p1_lat
                        x: Theme.paddingMedium
                        text: qsTr("Ш:")
                        color: Theme.highlightBackgroundColor
                        font.pixelSize: Theme.fontSizeExtraLarge
                    }
                    TextInput {
                        id: textinput_p1_lat
                        x: label_p1_lat.width + Theme.paddingSmall
                        width: (rowPointOne.width / 2 ) - label_p1_lat.width
                        font.pixelSize: Theme.fontSizeLarge
                        verticalAlignment: TextInput.AlignVCenter
                        color: Theme.primaryColor
                        inputMask: "00.00000"
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        focus: true
                        horizontalAlignment: TextInput.AlignHCenter

                    }
                }


                Rectangle {
                    width: label_p1_lat.width + textinput_p1_lat.width - Theme.paddingLarge
                    height: label_p1_lat.height
                    color: "transparent"
                    border.color: Theme.secondaryHighlightColor
                    border.width: 2
                    radius: 10
                    // ДОЛГОТА
                    Label {
                        id: label_p1_long
                        x: Theme.paddingMedium
                        text: qsTr("Д:")
                        color: Theme.highlightBackgroundColor
                        font.pixelSize: Theme.fontSizeExtraLarge
                    }
                    TextInput {
                        id: textinput_p1_long
                        width: (rowPointOne.width / 2 ) - label_p1_lat.width
                        x: label_p1_lat.width + Theme.paddingSmall
                        font.pixelSize: Theme.fontSizeLarge
                        verticalAlignment: TextInput.AlignVCenter
                        color: Theme.primaryColor
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        inputMask: "00.00000"
                        focus: true
                        horizontalAlignment: TextInput.AlignHCenter
                        EnterKey.onClicked: {
                            text = "Return key pressed";
                            parent.focus = true;
                        }
                    }
                }


            }

            // ============ [КООРДИНАТА 2] ============================================= //
            Label {
                x: Theme.paddingLarge
                text: qsTr("Точка 2:")
                color: Theme.highlightBackgroundColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }


            Row {
                id: rowPointTwo
                x: Theme.paddingLarge
                width: parent.width - Theme.paddingLarge
                spacing: Theme.paddingSmall


                // ШИРОТА
                Rectangle {
                    width: label_p2_lat.width + textinput_p2_lat.width  - Theme.paddingLarge
                    height: label_p2_lat.height
                    color: "transparent"
                    border.color: Theme.secondaryHighlightColor
                    border.width: 2
                    radius: 10

                    Label {
                        id: label_p2_lat
                        x: Theme.paddingMedium
                        text: qsTr("Ш:")
                        color: Theme.highlightBackgroundColor
                        font.pixelSize: Theme.fontSizeExtraLarge
                    }
                    TextInput {
                        id: textinput_p2_lat
                        x: label_p2_lat.width + Theme.paddingSmall
                        width: (rowPointTwo.width / 2 ) - label_p2_lat.width
                        font.pixelSize: Theme.fontSizeLarge
                        verticalAlignment: TextInput.AlignVCenter
                        color: Theme.primaryColor
                        inputMask: "00.00000"
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        focus: true
                        horizontalAlignment: TextInput.AlignHCenter

                    }
                }


                Rectangle {
                    width: label_p2_lat.width + textinput_p2_lat.width  - Theme.paddingLarge
                    height: label_p2_lat.height
                    color: "transparent"
                    border.color: Theme.secondaryHighlightColor
                    border.width: 2
                    radius: 10
                    // ДОЛГОТА
                    Label {
                        id: label_p2_long
                        x: Theme.paddingMedium
                        text: qsTr("Д:")
                        color: Theme.highlightBackgroundColor
                        font.pixelSize: Theme.fontSizeExtraLarge
                    }
                    TextInput {
                        id: textinput_p2_long
                        width: (rowPointTwo.width / 2 ) - label_p2_lat.width
                        x: label_p2_lat.width + Theme.paddingSmall
                        font.pixelSize: Theme.fontSizeLarge
                        verticalAlignment: TextInput.AlignVCenter
                        color: Theme.primaryColor
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        inputMask: "00.00000"
                        //label: "Text field"
                        //placeholderText: "Долгота"
                        focus: true
                        horizontalAlignment: TextInput.AlignHCenter
                        EnterKey.onClicked: {
                            text = "Return key pressed";
                            parent.focus = true;
                        }
                    }
                }



            }
            Separator {
                horizontalAlignment: Text.AlignHCenter
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: Theme.paddingLarge
                anchors.rightMargin: Theme.paddingLarge
                color: Theme.secondaryHighlightColor
            }
            Label {
                x: Theme.paddingLarge
                horizontalAlignment: Text.AlignHCenter
                text: qsTr("Результат:")
                color: Theme.highlightBackgroundColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }

            Label {
                //x: Theme.paddingLarge
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                color: Theme.highlightBackgroundColor
                font.pixelSize: Theme.fontSizeExtraLarge*1.5
                text: "0м"
            }
            Row {
                id: rowButtons
                width: parent.width
                anchors.leftMargin: Theme.paddingLarge
                anchors.rightMargin: Theme.paddingLarge

                spacing: Theme.paddingSmall
                IconButton {
                    id: button_clear
                    anchors.leftMargin: Theme.paddingLarge
                    width: (rowButtons.width - Theme.paddingLarge * 2) / 2
                    icon.source: "image://theme/icon-l-clear"
                }
                IconButton {
                    id: button_calculate
                    width: (rowButtons.width - Theme.paddingLarge * 2) / 2
                    anchors.leftMargin: Theme.paddingLarge
                    icon.source: "image://theme/icon-l-play"
                }
            }
        }
    }
}


