//
//  System.swift
//  swjft
//
//  Created by Sebastian Ritter on 16.12.15.
//  Copyright © 2015 Sebastian Ritter. All rights reserved.
//

import Foundation

extension lang {
  public class System {
    public let out : io.PrintStream = io.ConsolePrintStream ()
    
    public static func getProperties() -> util.Properties {
			let props = util.Properties()
      //let envs = NSProcessInfo.processInfo().environment

      
      switch (getOSName()) { // see https://www.osgi.org/developer/specifications/reference/
      case "Darwin"  : break //getOSXName()
      case "Windows" : break
      case "Linux"   : break
      case "FreeBSD" : break// tested with FreeBSD 10.2 /usr/bin/uname -s
      default : break
      }
      
      props.put("os.name", v: getOSName())
      
      return props;
    }
    
    
    class func getOSXName () -> Swift.String { // class (not static) func to override by subclass
      let os = NSProcessInfo.processInfo().operatingSystemVersion
      var osName : Swift.String = ""
      if (os.majorVersion == 10) {
        switch (os.minorVersion) {
        case 11: osName = "OS X El Captain"
        case 10: osName = "OS X Yosemite"
        case  9: osName = "OS X Mavericks"
        case  8: osName = "OS X Mountain Lion"
        case  7: osName = "OS X Lion"
        case  6: osName = "OS X Snow Leopard"
        case  5: osName = "OS X Leopard"
        case  4: osName = "OS X Tiger"
        case  3: osName = "OS X Panther"
        case  2: osName = "OS X Jaguar"
        case  1: osName = "OS X Puma"
        default: osName = "OS X Unknown"
        }
      }
			return osName
    }
    
    /*
    os.arch=x86_64
    os.name=Mac OS X
    os.version=10.11.2
     */
    class func getOSName () -> Swift.String {
      var result = ""
      
      let UNAME_BSD = "/usr/bin/uname"
      let UNAME_LINUX = "/bin/uname"
      let UNAME_WINDOWS = "c:\\Windows\\System32\\cmd.exe"
      var unamePrg = UNAME_BSD // MacOS, FreeBSD, some Linux
      
      if (!NSFileManager.defaultManager().fileExistsAtPath(unamePrg)){
        unamePrg = UNAME_LINUX // some Linux
      }
      if (!NSFileManager.defaultManager().fileExistsAtPath(unamePrg)){
        unamePrg = UNAME_WINDOWS
      }
      if (!NSFileManager.defaultManager().fileExistsAtPath(unamePrg)){
        unamePrg = "<HELP NEEDED>"
      }
      
      var unameParam : [Swift.String] = []
      switch (unamePrg) {
      case UNAME_BSD : unameParam = ["-s"]
      case UNAME_LINUX : unameParam = ["-s"]
      case UNAME_WINDOWS : unameParam = ["/c" , "ver"]
      default:
        return result
      }
      
      let task = NSTask()
      task.launchPath = unamePrg
      task.arguments = unameParam
      
      let pipe = NSPipe()
      task.standardOutput = pipe
      //task.standardError = pipe
      task.launch()
      
      let data = pipe.fileHandleForReading.readDataToEndOfFile()
      let output: NSString =  NSString(data: data, encoding: NSUTF8StringEncoding)!
      result = (output as Swift.String).stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
      
      
      // MacOS => Darwin
      // Linux => Linux
      // FreeBSD => FreeBSD
      // Windows results like "\nMicrosoft Windows [Version 6.1.7601]\n" - see https://gist.github.com/mxpv/2935584
      
      if result.rangeOfString("Windows") != nil{
        result = "Windows"
      }
      
      return result
    }
  }
  
}