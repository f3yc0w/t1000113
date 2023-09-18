.class public Lcom/secondfury/nativetoolkit/Main;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method

.method public static addImageToGallery(Ljava/lang/String;)I
    .locals 2

    const-string v0, "Native Toolkit"

    const-string v1, "Add image to gallery"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lcom/secondfury/nativetoolkit/Image;

    invoke-direct {v0}, Lcom/secondfury/nativetoolkit/Image;-><init>()V

    .line 23
    invoke-virtual {v0, p0}, Lcom/secondfury/nativetoolkit/Image;->Save(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static clearAllLocalNotifications()V
    .locals 2

    const-string v0, "Native Toolkit"

    const-string v1, "Clear all local notifications"

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Lcom/secondfury/nativetoolkit/LocalNotification;

    invoke-direct {v0}, Lcom/secondfury/nativetoolkit/LocalNotification;-><init>()V

    .line 201
    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/secondfury/nativetoolkit/LocalNotification;->clearAllLocalNotifications(Landroid/content/Context;)V

    return-void
.end method

.method public static clearLocalNotification(I)V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear local notification id #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Native Toolkit"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Lcom/secondfury/nativetoolkit/LocalNotification;

    invoke-direct {v0}, Lcom/secondfury/nativetoolkit/LocalNotification;-><init>()V

    .line 193
    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/secondfury/nativetoolkit/LocalNotification;->clearLocalNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static getImageExifData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get image exif data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Native Toolkit"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/4 p0, 0x7

    const-string v1, "Flash"

    const-string v2, "Orientation"

    const-string v3, "WhiteBalance"

    const-string v4, "ImageLength"

    const-string v5, "ImageWidth"

    const-string v6, "GPSAltitudeRef"

    const-string v7, "GPSAltitude"

    .line 59
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p0, :cond_1

    .line 65
    aget-object v4, v1, v3

    if-ne p1, v4, :cond_0

    .line 67
    invoke-virtual {v0, p1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_2
    if-nez v2, :cond_2

    .line 75
    invoke-virtual {v0, p1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static getLatitude()D
    .locals 2

    .line 171
    sget-object v0, Lcom/secondfury/nativetoolkit/Location;->LastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getLocale()Ljava/lang/String;
    .locals 3

    const-string v0, "Native Toolkit"

    const-string v1, "Get Locale"

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_0
    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 151
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-object v0

    .line 157
    :catch_0
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLongitude()D
    .locals 2

    .line 176
    sget-object v0, Lcom/secondfury/nativetoolkit/Location;->LastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getUnityActivity()Landroid/app/Activity;
    .locals 1

    .line 213
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static pickContact()V
    .locals 3

    const-string v0, "Native Toolkit"

    const-string v1, "Pick contact"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/secondfury/nativetoolkit/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action"

    const/4 v2, 0x2

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static pickImageFromGallery()V
    .locals 4

    const-string v0, "Native Toolkit"

    const-string v1, "Select image from gallery"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/secondfury/nativetoolkit/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action"

    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NativeToolkit"

    const-string v2, "OnPickImage"

    const-string v3, "Error"

    .line 37
    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static rateThisApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "Native Toolkit"

    const-string v1, "Rate this App"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v7, Lcom/secondfury/nativetoolkit/Main$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/secondfury/nativetoolkit/Main$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static scheduleLocalNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schedule local notification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Native Toolkit"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v2, Lcom/secondfury/nativetoolkit/LocalNotification;

    invoke-direct {v2}, Lcom/secondfury/nativetoolkit/LocalNotification;-><init>()V

    .line 185
    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    move v4, p2

    move-object v5, p0

    move-object v6, p1

    move v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, Lcom/secondfury/nativetoolkit/LocalNotification;->scheduleLocalNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "Native Toolkit"

    const-string v1, "Send Email with attachment"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v2, Lcom/secondfury/nativetoolkit/Email;

    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/secondfury/nativetoolkit/Email;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Native Toolkit"

    const-string v1, "Show alert"

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/secondfury/nativetoolkit/Main$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/secondfury/nativetoolkit/Main$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Native Toolkit"

    const-string v1, "Show dialog"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/secondfury/nativetoolkit/Main$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/secondfury/nativetoolkit/Main$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startLocation()V
    .locals 2

    const-string v0, "Native Toolkit"

    const-string v1, "Start Location"

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Lcom/secondfury/nativetoolkit/Location;

    invoke-direct {v0}, Lcom/secondfury/nativetoolkit/Location;-><init>()V

    .line 166
    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/secondfury/nativetoolkit/Location;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static takeCameraShot()V
    .locals 3

    const-string v0, "Native Toolkit"

    const-string v1, "Open camera"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/secondfury/nativetoolkit/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action"

    const/4 v2, 0x1

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static wasLaunchedFromNotification()Z
    .locals 3

    .line 206
    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromNotification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launched from notification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Native Toolkit"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
