.class public Lcom/unity3d/player/MainActivity;
.super Lcom/google/firebase/MessagingUnityPlayerActivity;
.source "MainActivity.java"


# static fields
.field public static activity:Lcom/unity3d/player/MainActivity;

.field public static hd:Landroid/os/Handler;


# instance fields
.field private BundleString:Ljava/lang/String;

.field _trace:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field account:Ljava/lang/String;

.field private countryISOCode:Ljava/lang/String;

.field private m_NativeGallery:Lcom/unity3d/player/UnityNativeGallery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/unity3d/player/MainActivity;->hd:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/google/firebase/MessagingUnityPlayerActivity;-><init>()V

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/unity3d/player/MainActivity;->BundleString:Ljava/lang/String;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/MainActivity;->_trace:Ljava/util/HashMap;

    return-void
.end method

.method private CloseAndroidPDialog()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android.content.pm.PackageParser$Package"

    .line 99
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 100
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 103
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string v2, "android.app.ActivityThread"

    .line 106
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentActivityThread"

    new-array v4, v0, [Ljava/lang/Class;

    .line 107
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "mHiddenApiWarningShown"

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 112
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private GetBundleString()Ljava/lang/String;
    .locals 5

    .line 75
    invoke-virtual {p0}, Lcom/unity3d/player/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 80
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    const-string v4, "unity"

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_1

    .line 85
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v4

    .line 87
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const-string v0, ""

    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public CheckPermission(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\\|"

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-static {p0, p1}, Lcom/unity3d/player/PermissionHelper;->isPermissionGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public FirebasePerformanceEndTrace(Ljava/lang/String;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/unity3d/player/MainActivity;->_trace:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/metrics/Trace;

    if-nez p1, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    return-void
.end method

.method public FirebasePerformanceNewTrace(Ljava/lang/String;)V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/unity3d/player/MainActivity;->_trace:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Trace;

    if-nez v0, :cond_0

    .line 260
    invoke-static {}, Lcom/google/firebase/perf/FirebasePerformance;->getInstance()Lcom/google/firebase/perf/FirebasePerformance;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/FirebasePerformance;->newTrace(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v0

    .line 261
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    .line 263
    iget-object v1, p0, Lcom/unity3d/player/MainActivity;->account:Ljava/lang/String;

    const-string v2, "account"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/perf/metrics/Trace;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/unity3d/player/MainActivity;->_trace:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public FirebasePerformanceSetAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/unity3d/player/MainActivity;->_trace:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/metrics/Trace;

    if-nez p1, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/perf/metrics/Trace;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public GetCountryCode()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/unity3d/player/MainActivity;->countryISOCode:Ljava/lang/String;

    return-object v0
.end method

.method public GetImageFromGallery(Lcom/unity3d/player/UnityNativeGalleryMediaReceiver;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/unity3d/player/MainActivity;->m_NativeGallery:Lcom/unity3d/player/UnityNativeGallery;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityNativeGallery;->GetImageFromGallery(Lcom/unity3d/player/UnityNativeGalleryMediaReceiver;)V

    return-void
.end method

.method public GetLaunchNotification()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/unity3d/player/MainActivity;->BundleString:Ljava/lang/String;

    return-object v0
.end method

.method public GetSDKVersion()I
    .locals 1

    .line 381
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public GoToAppDetailsSettings()V
    .locals 5

    const-string v0, "HLQ_Struggle"

    .line 332
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    .line 334
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    const-string v2, "APPLICATION_DETAILS_SETTINGS"

    .line 338
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 339
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "package"

    .line 340
    invoke-virtual {p0}, Lcom/unity3d/player/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 342
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_1

    const-string v2, "android.intent.action.VIEW"

    .line 343
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    .line 344
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings.ApplicationPkgName"

    .line 345
    invoke-virtual {p0}, Lcom/unity3d/player/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/unity3d/player/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 351
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0, v0}, Lcom/unity3d/player/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public GoToAppNotificationSettings()V
    .locals 7

    const-string v0, "package"

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const/4 v2, 0x0

    .line 299
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 300
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x1a

    const-string v6, "android.settings.APP_NOTIFICATION_SETTINGS"

    if-lt v4, v5, :cond_0

    .line 302
    :try_start_1
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.provider.extra.APP_PACKAGE"

    .line 303
    invoke-virtual {p0}, Lcom/unity3d/player/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 304
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 306
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "app_package"

    .line 307
    invoke-virtual {p0}, Lcom/unity3d/player/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "app_uid"

    .line 308
    invoke-virtual {p0}, Lcom/unity3d/player/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0}, Lcom/unity3d/player/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    const/high16 v4, 0x10000000

    .line 315
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v3}, Lcom/unity3d/player/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 320
    :catch_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 323
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0}, Lcom/unity3d/player/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 325
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v3}, Lcom/unity3d/player/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public IsMIUISystem()Z
    .locals 4

    .line 372
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 373
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Build.MANUFACTURER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "Xiaomi"

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "this is a xiaomi device"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public IsUserNotificationEnable()Z
    .locals 1

    .line 286
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public LaunchFacebookByUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/unity3d/player/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.facebook.katana"

    const/4 v3, 0x0

    .line 240
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v2, 0x2dd1e2

    if-lt v1, v2, :cond_0

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fb://facewebmodal/f?href="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 244
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fb://page/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object p2, p1

    .line 248
    :catch_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v0}, Lcom/unity3d/player/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public LaunchGooglePlayAppDetail(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 216
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 219
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 220
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 221
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 222
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/high16 p1, 0x10000000

    .line 224
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v1}, Lcom/unity3d/player/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public OpenPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "\\|"

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {p0, p1}, Lcom/unity3d/player/PermissionHelper;->isPermissionGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    .line 180
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 181
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const/4 p3, 0x0

    .line 182
    invoke-virtual {p2, p4, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/unity3d/player/MainActivity$1;

    invoke-direct {p3, p0}, Lcom/unity3d/player/MainActivity$1;-><init>(Lcom/unity3d/player/MainActivity;)V

    .line 183
    invoke-virtual {p2, p5, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 191
    new-instance p3, Lcom/unity3d/player/MainActivity$2;

    invoke-direct {p3, p0}, Lcom/unity3d/player/MainActivity$2;-><init>(Lcom/unity3d/player/MainActivity;)V

    new-instance p4, Lcom/unity3d/player/MainActivity$3;

    invoke-direct {p4, p0}, Lcom/unity3d/player/MainActivity$3;-><init>(Lcom/unity3d/player/MainActivity;)V

    invoke-static {p2, p0, p3, p4, p1}, Lcom/unity3d/player/PermissionHelper;->runOnPermissionGranted(Landroid/app/AlertDialog$Builder;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Ljava/lang/String;)V

    return v0
.end method

.method public SetAccount(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/unity3d/player/MainActivity;->account:Ljava/lang/String;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 367
    invoke-super {p0, p1, p2, p3}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 368
    iget-object v0, p0, Lcom/unity3d/player/MainActivity;->m_NativeGallery:Lcom/unity3d/player/UnityNativeGallery;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unity3d/player/UnityNativeGallery;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sput-object p0, Lcom/unity3d/player/MainActivity;->activity:Lcom/unity3d/player/MainActivity;

    .line 50
    new-instance p1, Lcom/unity3d/player/UnityNativeGallery;

    invoke-direct {p1, p0}, Lcom/unity3d/player/UnityNativeGallery;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/unity3d/player/MainActivity;->m_NativeGallery:Lcom/unity3d/player/UnityNativeGallery;

    .line 52
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/unity3d/player/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    .line 56
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 57
    invoke-virtual {p0}, Lcom/unity3d/player/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    invoke-virtual {p0}, Lcom/unity3d/player/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 62
    invoke-direct {p0}, Lcom/unity3d/player/MainActivity;->CloseAndroidPDialog()V

    const-string p1, "phone"

    .line 64
    invoke-virtual {p0, p1}, Lcom/unity3d/player/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/MainActivity;->countryISOCode:Ljava/lang/String;

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/player/MainActivity;->GetBundleString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/MainActivity;->BundleString:Ljava/lang/String;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 126
    invoke-super {p0}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 141
    invoke-super {p0}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 165
    invoke-static {p1, p2, p3, p0}, Lcom/unity3d/player/PermissionHelper;->onRequestPermissionsResult(I[Ljava/lang/String;[ILandroid/app/Activity;)V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 146
    invoke-super {p0}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 131
    invoke-super {p0}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 121
    invoke-super {p0}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 136
    invoke-super {p0}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onStop()V

    return-void
.end method
