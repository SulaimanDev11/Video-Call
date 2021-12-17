// import 'dart:math';
// import 'package:agora_rtc_engine/rtc_engine.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:permission_handler/permission_handler.dart';
// import '../controllers/home_controller.dart';
// import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
// import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;

// const appId = "a8621434d379480abd2fe55dd82b40f0";
// const token =
//     "006a8621434d379480abd2fe55dd82b40f0IACvrlAP7Cy7Xr1cs7ccMQMGermoQ/Rq/I14ypPnzo3XW09X82oAAAAAEABeKUKVZ3C9YQEAAQBncL1h";

// class HomeView extends StatefulWidget {
//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   int? _remoteUid;
//   RtcEngine? _engine;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     initAgora();
//   }

//   Future<void> initAgora() async {
//     // retrieve permissions
//     await [Permission.microphone, Permission.camera].request();

//     //create the engine
//     _engine = await RtcEngine.create("a8621434d379480abd2fe55dd82b40f0");
//     await _engine!.enableVideo();
//     _engine!.setEventHandler(
//       RtcEngineEventHandler(
//         joinChannelSuccess: (String channel, int uid, int elapsed) {
//           print("local user $uid joined");
//         },
//         userJoined: (int uid, int elapsed) {
//           print("remote user $uid joined");
//           setState(() {
//             _remoteUid = uid;
//           });
//         },
//         userOffline: (int uid, UserOfflineReason reason) {
//           print("remote user $uid left channel");
//           setState(() {
//             _remoteUid = null;
//           });
//         },
//       ),
//     );

//     await _engine!.joinChannel(null, "firstchannel", null, 0);
//   }
  // Future<void> initForAgora() async {
  //   await [Permission.microphone, Permission.camera].request();
  //   _engine = await RtcEngine.createWithConfig(RtcEngineConfig(appId));
  //   _engine!.enableVideo();
  //   _engine!.setEventHandler(
  //     RtcEngineEventHandler(
  //       joinChannelSuccess: (String channel, int uid, int elapsed) {
  //         print("************************* local user $uid joind");
  //       },
  //       userJoined: (int uid, int elapsed) {
  //         print("******************** remote user $uid joined");
  //         setState(() {
  //           _remoteUid = uid;
  //         });
  //       },
  //       userOffline: (int uid, UserOfflineReason reason) {
  //         print("********************* remote user $uid left channel");
  //         setState(() {
  //           _remoteUid = null;
  //         });
  //       },
  //     ),
  //   );
  //   await _engine!.joinChannel(token, "usercall", null, 0);
  // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: Stack(
//         children: [
//           Container(
//             color: Colors.grey[400],
//             child: Center(
//               child: _renderRemoteVideo(),
//             ),
//           ),
//           Align(
//             alignment: Alignment.topRight,
//             child: Container(
//               height: 150,
//               width: 100,
//               child: _renderLocalPreview(),
//             ),
//           )
//         ],
//       ),
//     ));
//   }

//   Widget _renderLocalPreview() {
//     return RtcLocalView.SurfaceView();
//   }

//   Widget _renderRemoteVideo() {
//     if (_remoteUid != null) {
//       return RtcRemoteView.SurfaceView(uid: _remoteUid!);
//     } else {
//       return Text(
//         'Please wait remote user joins',
//         textAlign: TextAlign.center,
//       );
//     }
//   }
// }
