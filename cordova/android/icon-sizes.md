# Icon sizes for Android:

The following sizes should be used when designing icons for Cordova:

## Landscape:

    ldpi: 36x36 pixels
    mdpi: 48x48 pixels
    tvdpi: 64x64 pixels
    hdpi: 72x72 pixels
    xhdpi: 96x96 pixels
    xxhdpi: 144x144 pixels
    xxxhdpi: 192x192 pixels

## config.xml:

This is the XML to add to the `config.xml` file:

    <platform name="android">
      <icon src="ldpi.png" density="ldpi" />
      <icon src="mdpi.png" density="mdpi" />
      <icon src="tvdpi.png" density="tvdpi" />
      <icon src="hdpi.png" density="hdpi" />
      <icon src="xhdpi.png" density="xhdpi" />
      <icon src="xxhdpi.png" density="xxhdpi" />
      <icon src="xxxhdpi.png" density="xxxhdpi" />
    </platform>

The location of the assets could be anywhere, the above is just an example.
