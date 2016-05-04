import QtQuick 2.4
import Ubuntu.Components 1.3

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "actionbar.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    property list<Action> shortActionList: [
        Action {
            iconName: "share"
            text: "Share"
            onTriggered: {
                console.log("share is clicked")
            }
        },
        Action {
            iconName: "starred"
            text: "Favorite"
            onTriggered: {
                console.log("starred is clicked")
            }
        }
    ]

    property list<Action> actionList:  [
        Action {
            iconName: "alarm-clock"
            text: "Tick tock"
            onTriggered: {
                console.log("alarm-clock is clicked")
            }
        },
        Action {
            iconName: "appointment"
            text: "Date"
            onTriggered: {
                console.log("appointment is clicked")
            }
        },
        Action {
            iconName: "attachment"
            text: "Attach"
            onTriggered: {
                console.log("attachment is clicked")
            }
        },
        Action {
            iconName: "contact"
            text: "Contact"
            onTriggered: {
                console.log("contact is clicked")
            }
        },
        Action {
            iconName: "like"
            text: "Like"
            onTriggered: {
                console.log("like is clicked")
            }
        },
        Action {
            iconName: "lock"
            text: "Lock"
            onTriggered: {
                console.log("lock is clicked")
            }
        }
    ]

    Page {
        id: page
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("actionbar")
            StyleHints {
                foregroundColor: UbuntuColors.orange
                backgroundColor: UbuntuColors.porcelain
                dividerColor: UbuntuColors.slate
            }
        }

        Column {
            anchors.centerIn: parent
            spacing: units.gu(3)

            ActionBar {
                // no numberOfSlots specified. Using default value.
                id: shortBar
                actions: shortActionList
            }

            ActionBar {
                id: bar
                numberOfSlots: 3
                actions: actionList
            }

            ActionBar {
                id: bar1
                actions: actionList

                StyleHints {
                    overflowIconName: "grip-large"
                    overflowText: "More"
                    defaultNumberOfSlots: 2
                }
            }
        }
    }
}

