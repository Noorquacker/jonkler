import QtQuick
import org.kde.plasma.plasmoid
import org.kde.plasma.components as PlasmaComponents
import QtMultimedia

PlasmoidItem{

    // huh?

    //PlasmaComponents.Label {
      //  text: "meow"
    //}
	MediaPlayer {
		id: player
		source: "../media/jonkler.mp4"
		audioOutput: AudioOutput {
			muted: true
		}
		videoOutput: videoOutput
		loops: MediaPlayer.Infinite
		autoPlay: true
	}
	VideoOutput {
		id: videoOutput
		anchors.fill: parent
		anchors.margins: 0
	}
	Component.onCompleted: {
		player.play()
	}
}
