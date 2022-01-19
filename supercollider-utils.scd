SuperDirt.start // start server

Server.killAll // kill server

Quarks.gui // open samples folder

// set inputs & outputs
// you will need to kill the server and restart when changing the input / output

// list all devices:
ServerOptions.inDevices; // list input devices
ServerOptions.outDevices; // list output devices

// list specific output device
ServerOptions.outDevices[0]

// set output device
Server.default.options.outDevice_(ServerOptions.outDevices[0])
Server.local.options.outDevice_(ServerOptions.outDevices[0])

// set inputs
ServerOptions.inDevices; //input devices

Server.default.options.inDevice(ServerOptions.inDevices[0])
Server.local.options.inDevice_(ServerOptions.inDevices[0])


// Setup MIDI (note – you have to set up a MIDI bus in settings


MIDIClient.init;

MIDIClient.restart;

(
~midiOut1 = MIDIOut.newByName("IAC Driver", "Tidal");

~dirt.soundLibrary.addMIDI(\midi, ~midiOut1);

~midiOut1.latency = 0;
)