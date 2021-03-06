export CFLAGS=-Wp,"-DWTFJHTWEAKNAME=@\"MELI8R1EPATZUGZ\",-DPROTOTYPE"
include theos/makefiles/common.mk
export ARCHS = armv7 armv7s arm64
export TARGET = iphone:clang:7.0:7.0
TWEAK_NAME = MELI8R1EPATZUGZ
MELI8R1EPATZUGZ_FILES = Tweak.xm CompileDefines.xm Hooks/API/AppleAccount.xm Hooks/API/CommonCryptor.xm Hooks/API/CommonDigest.xm Hooks/API/CommonHMAC.xm Hooks/API/CommonKeyDerivation.xm Hooks/API/CoreTelephony.xm Hooks/API/dlfcn.xm Hooks/API/Keychain.xm Hooks/API/libC.xm Hooks/API/libMobileGestalt.xm Hooks/API/LSApplication.xm Hooks/API/MachO.xm Hooks/API/NSData.xm Hooks/API/NSFileHandle.xm Hooks/API/NSFileManager.xm Hooks/API/NSHTTPCookie.xm Hooks/API/NSInputStream.xm Hooks/API/NSKeyedArchiver.xm Hooks/API/NSKeyedUnarchiver.xm Hooks/API/NSOutputStream.xm Hooks/API/NSProcessInfo.xm Hooks/API/NSURLConnection.xm Hooks/API/NSURLCredential.xm Hooks/API/NSURLSession.xm Hooks/API/NSUserDefaults.xm Hooks/API/NSXMLParser.xm Hooks/API/ObjCRuntime.xm Hooks/API/Security.xm Hooks/API/Socket.xm Hooks/API/SSLKillSwitch.xm Hooks/API/sysctl.xm Hooks/API/UIPasteboard.xm Hooks/SDK/FclBlowfish.xm Hooks/SDK/JSPatch.xm Hooks/SDK/OpenSSLAES.xm Hooks/SDK/OpenSSLBlowFish.xm Hooks/SDK/OpenSSLMD5.xm Hooks/SDK/OpenSSLSHA1.xm Hooks/SDK/OpenSSLSHA512.xm Hooks/SDK/Wax.xm Hooks/Utils/CallStackInspector.m Hooks/Utils/CallTracer.m Hooks/Utils/DelegateProxies.m Hooks/Utils/NSURLConnectionDelegateProx.m Hooks/Utils/NSURLSessionDelegateProxy.m Hooks/Utils/PlistObjectConverter.m Hooks/Utils/RuntimeUtils.m Hooks/Utils/SQLiteStorage.m Hooks/Utils/Utils.m Hooks/ThirdPartyTools/classdumpdyld.xm Hooks/ThirdPartyTools/DeviceIDFake.xm Hooks/ThirdPartyTools/dumpdecrypted.xm Hooks/ThirdPartyTools/InspectiveC.xm Hooks/Misc/Cycript.xm Hooks/Misc/RemoveASLR.xm Hooks/Misc/SplitMachO.mm
ADDITIONAL_CCFLAGS  = -Qunused-arguments
ADDITIONAL_LDFLAGS  = -Wl,-segalign,4000,-sectcreate,WTFJH,SIGDB,./SignatureDatabase.plist,-sectcreate,WTFJH,classdumpdyld,./classdumpdyld.dylib,-sectcreate,WTFJH,DeviceIDFake,./DeviceIDFake.dylib,-sectcreate,WTFJH,dumpdecrypted,./dumpdecrypted.dylib,-sectcreate,WTFJH,InspectiveC,./InspectiveC.dylib -F./ -L. -v -force_load libcapstone.a
MELI8R1EPATZUGZ_LIBRARIES = sqlite3 substrate stdc++ c++

MELI8R1EPATZUGZ_FRAMEWORKS = Foundation UIKit Security JavaScriptCore Cycript 
include $(THEOS_MAKE_PATH)/tweak.mk
after-install::
	install.exec "killall -9 SpringBoard"