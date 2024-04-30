import 'dart:io';

import 'package:flutter/material.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class Youtube extends StatefulWidget {
  const Youtube({Key? key}) : super(key: key);

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  final urlController = TextEditingController();

  @override
  void dispose() {
    urlController.dispose();
    super.dispose();
  }

  Future<void> downloadVideo(String url) async {
    var yt = YoutubeExplode();
    var video = await yt.videos.get(url);
    var manifest = await yt.videos.streamsClient.getManifest(video.id);
    var streamInfo = manifest.muxed.withHighestBitrate();

    var stream = yt.videos.streamsClient.get(streamInfo);

    var filePath = Directory.systemTemp.path + '/${video.title}.mp4';
    var file = File(filePath);
    var fileSink = file.openWrite();
    await stream.pipe(fileSink); // Guarda el video en el archivo

    await fileSink.flush();
    await fileSink.close();

    yt.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text("Descargar Videos de YouTube"),
            const SizedBox(height: 10),
            TextField(
              controller: urlController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ingrese la url del video a descargar',
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                downloadVideo(urlController.text);
              },
              child: Container(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 30, right: 30),
                decoration: BoxDecoration(
                  color: const Color(0xFFff0000),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Descargar",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
