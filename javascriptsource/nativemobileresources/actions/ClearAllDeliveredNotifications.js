// This file was generated by Mendix Studio Pro.
//
// WARNING: Only the following code will be retained when actions are regenerated:
// - the import list
// - the code between BEGIN USER CODE and END USER CODE
// - the code between BEGIN EXTRA CODE and END EXTRA CODE
// Other code you write will be lost the next time you deploy the project.
import { Big } from "big.js";
import { Platform, NativeModules } from 'react-native';
import PushNotification from 'react-native-push-notification';

// BEGIN EXTRA CODE
// END EXTRA CODE

/**
 * Clears all delivered notifications from notification tray
 * @returns {Promise.<void>}
 */
export async function ClearAllDeliveredNotifications() {
	// BEGIN USER CODE
    // Documentation https://github.com/zo0r/react-native-push-notification
    const isIOS = Platform.OS === "ios";
    if (NativeModules && isIOS && !NativeModules.RNCPushNotificationIOS) {
        return Promise.reject(new Error("Notifications module is not available in your app"));
    }
    PushNotification.removeAllDeliveredNotifications();
    return Promise.resolve();
	// END USER CODE
}
