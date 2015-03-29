# Splash screen sizes for Android:

The following sizes should be used when designing splash screens for Cordova using the `org.apache.cordova.splashscreen` plugin:

## Landscape:

    ldpi: 320x200 pixels
    mdpi: 480x320 pixels
    hdpi: 800x480 pixels
    xhdpi: 1280x720 pixels

## Portrait:

    ldpi: 200x320 pixels
    mdpi: 320x480 pixels
    hdpi: 480x800 pixels
    xhdpi: 720x1280 pixels

## config.xml:

This is the XML to add to the `config.xml` file:

    <platform name="android">
      <splash src="land-ldpi.png" density="land-ldpi" />
      <splash src="land-mdpi.png" density="land-mdpi" />
      <splash src="land-hdpi.png" density="land-hdpi" />
      <splash src="land-xhdpi.png" density="land-xhdpi" />
      <splash src="port-ldpi.png" density="port-ldpi" />
      <splash src="port-mdpi.png" density="port-mdpi" />
      <splash src="port-hdpi.png" density="port-hdpi" />
      <splash src="port-xhdpi.png" density="port-xhdpi" />
    </platform>

The location of the assets could be anywhere, the above is just an example.
