//
//  BLOCKv AG. Copyright (c) 2018, all rights reserved.
//
//  Licensed under the BLOCKv SDK License (the "License"); you may not use this file or
//  the BLOCKv SDK except in compliance with the License accompanying it. Unless
//  required by applicable law or agreed to in writing, the BLOCKv SDK distributed under
//  the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
//  ANY KIND, either express or implied. See the License for the specific language
//  governing permissions and limitations under the License.
//

import Foundation

/// Models the BLOCKv platform environments.
public enum BVEnvironment: String, CustomDebugStringConvertible {

    /// Stable production environment.
    case production = "prod_env"
    /// Unstable development environement (DO NOT USE).
    case development = "dev_env"

    /// BLOCKv server base url
    var apiServerURLString: String {
        switch self {
        case .production:  return "https://api.blockv.io"
        case .development: return "https://apidev.blockv.net"
        }
    }

    /// BLOCKv Web socket server base url
    var webSocketURLString: String {
        switch self {
        case .production:  return "wss://newws.blockv.io/ws"
        case .development: return "wss://ws.blockv.net/ws"
        }
    }

    var oauthWebApp: String {
        switch self {
        case .production: return "https://login.blockv.io"
        case .development: return "https:/login.blockv.net"
        }
    }

    public var debugDescription: String {
        return """
        Environment: \(self.rawValue)
          - API Server: \(self.apiServerURLString)
          - Socket Server: \(self.webSocketURLString)
          - OAuth Server: \(self.oauthWebApp)
        """
    }

}
