//Randomize
randomize();

//Define game volume
globalvar gameVolume;
gameVolume = 0.23;

globalvar musicVolume;
musicVolume = gameVolume * 2.8;

//Define game pad
globalvar gamePad;
gamePad = -1;

//Define keys
globalvar keyLeft, keyRight, keyUp, keyDown, keyBoost, keyJumpPressed, keyEscapePressed;

//Define mouse buttons
globalvar mouseLeftClicked;

//Define respawn time
globalvar respawnTime;
respawnTime = 15;

//Define gravity
globalvar grv;
grv = 0.25;

//Define fullscreen
globalvar fullscreen;
fullscreen = false;

//Define zoom
globalvar zoom;

//Define camera width and height and x and y
globalvar cameraWidth, cameraHeight, cameraX, cameraY;

//Define level on variables
globalvar startLevel;
startLevel = rW0L0; //rW0L0 AKA World 0 Level 0

globalvar levelOn;
levelOn = startLevel;

//Define check point
globalvar checkpoint;
checkpoint = 0;

//Define save slot count
globalvar saveSlotCount;
saveSlotCount = 6;

//Define selected slot
globalvar selectedSlot;
selectedSlot = 0;

//Define save file name
globalvar saveFileName;
saveFileName = "save";