/*
*     Copyright 2016 IBM Corp.
*     Licensed under the Apache License, Version 2.0 (the "License");
*     you may not use this file except in compliance with the License.
*     You may obtain a copy of the License at
*     http://www.apache.org/licenses/LICENSE-2.0
*     Unless required by applicable law or agreed to in writing, software
*     distributed under the License is distributed on an "AS IS" BASIS,
*     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*     See the License for the specific language governing permissions and
*     limitations under the License.
*/

import Foundation
#if os(iOS)
	@testable import BluemixObjectStorageClientSDK_IOS
#else
#endif

struct Consts{
	static let projectId = ""
	static let userId = ""
	static let password = ""
	static let region = ObjectStorage.REGION_DALLAS

	static let containerName = "testcontainer"
	static let objectName = "testobject.txt"
	static let accountMetadataTestName = "X-Account-Meta-Test"
	static let containerMetadataTestName = "X-Container-Meta-Test"
	static let objectMetadataTestName = "X-Object-Meta-Test"
	static let metadataTestValue = "testvalue"
	static let testTimeout = 10.0
	
	static let objectData = "testdata".dataUsingEncoding(NSUTF8StringEncoding)!
	
	static var bigObjectData:NSData {
		get {
			var str = "123456789 ";
			for _ in 1...17 {
				str += str
			}
			return str.dataUsingEncoding(NSUTF8StringEncoding)!
		}
	}
}
