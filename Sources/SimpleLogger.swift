/*
* Copyright 2016 IBM Corp.
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
* http://www.apache.org/licenses/LICENSE-2.0
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import Foundation

public class Logger{

	public let name:String

	public static let enabled:Bool = true

	private static let LEVEL_INF = "INF"
	private static let LEVEL_ERR = "ERR"
	private static let LEVEL_DBG = "DBG"
	private static let LEVEL_WRN = "WRN"

	public init(forName:String){
		self.name = forName
	}

	public func info(text:String){
		printLog(text, level: Logger.LEVEL_INF)
	}

	public func debug(text:String){
		printLog(text, level: Logger.LEVEL_DBG)
	}

	public func warn(text:String){
		printLog(text, level: Logger.LEVEL_WRN)
	}

	public func error(text:String){
		printLog(text, level: Logger.LEVEL_ERR)
	}

	private func printLog(text:String, level:String){
		if (Logger.enabled){
			print("[\(level)] [\(self.name)] \(text)")
		}
	}
}
