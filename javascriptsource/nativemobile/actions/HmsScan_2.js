// This file was generated by Mendix Studio Pro.
//
// WARNING: Only the following code will be retained when actions are regenerated:
// - the import list
// - the code between BEGIN USER CODE and END USER CODE
// - the code between BEGIN EXTRA CODE and END EXTRA CODE
// Other code you write will be lost the next time you deploy the project.
import "mx-global";
import { Big } from "big.js";
import ScanPlugin from "@hmscore/react-native-hms-scan";

// BEGIN EXTRA CODE
// END EXTRA CODE

/**
 * @returns {Promise.<void>}
 */
export async function HmsScan_2() {
	// BEGIN USER CODE
	ScanPlugin.MultiProcessor.startMultiProcessorCamera({scanType: ScanPlugin.ScanType.All,scanMode:ScanPlugin.ScanMode.Async}).then((res) =>
		alert(JSON.stringify(res))
	)
	// END USER CODE
}
