.class public Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;
.super Ljava/lang/Object;
.source "EmulatorCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$SingletonHolder;,
        Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EmulatorCheckUtil"


# instance fields
.field private final Emulator:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final strFalse:Ljava/lang/String;

.field private final strTrue:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IsEmulator"

    .line 17
    iput-object v0, p0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->Emulator:Ljava/lang/String;

    const-string v0, "true"

    .line 18
    iput-object v0, p0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->strTrue:Ljava/lang/String;

    const-string v0, "false"

    .line 19
    iput-object v0, p0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->strFalse:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;Landroid/content/Context;)Z
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->readSysPropertyImpl(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;Z)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->saveSharedPreferences(Z)V

    return-void
.end method

.method private checkFeaturesByBaseBand()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;
    .locals 3

    const-string v0, "gsm.version.baseband"

    .line 362
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "1.0.0.0"

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 367
    :goto_0
    new-instance v2, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    invoke-direct {v2, v1, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method private checkFeaturesByBoard()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;
    .locals 4

    const-string v0, "ro.product.board"

    .line 331
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 334
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "goldfish"

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 338
    :goto_0
    new-instance v1, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    invoke-direct {v1, v3, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private checkFeaturesByCgroup()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;
    .locals 3

    .line 429
    invoke-static {}, Lcom/netease/yunxin/lite/util/emulator/CommandUtil;->getSingleInstance()Lcom/netease/yunxin/lite/util/emulator/CommandUtil;

    move-result-object v0

    const-string v1, "cat /proc/self/cgroup"

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/util/emulator/CommandUtil;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 431
    :cond_0
    new-instance v1, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private checkFeaturesByFlavor()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;
    .locals 4

    const-string v0, "ro.build.flavor"

    .line 282
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 285
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vbox"

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "sdk_gphone"

    .line 287
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 289
    :goto_0
    new-instance v1, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    invoke-direct {v1, v3, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private checkFeaturesByHardware()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;
    .locals 7

    const-string v0, "ro.hardware"

    .line 255
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 258
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "android_x86"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v1, "intel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v1, "vbox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "ttvm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "nox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "vbox86"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v4, "cancro"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v5, 0x1

    .line 273
    :goto_2
    new-instance v1, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    invoke-direct {v1, v5, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5185cff0 -> :sswitch_6
        -0x310ae8ad -> :sswitch_5
        0x1aad7 -> :sswitch_4
        0x367d37 -> :sswitch_3
        0x372195 -> :sswitch_2
        0x5fb64d6 -> :sswitch_1
        0x37e65fa6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkFeaturesByManufacturer()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;
    .locals 4

    const-string v0, "ro.product.manufacturer"

    .line 315
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 318
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "genymotion"

    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "netease"

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 322
    :goto_0
    new-instance v1, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    invoke-direct {v1, v3, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private checkFeaturesByModel()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;
    .locals 4

    const-string v0, "ro.product.model"

    .line 298
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 301
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_sdk"

    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "emulator"

    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "android sdk built for x86"

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    .line 306
    :goto_0
    new-instance v1, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    invoke-direct {v1, v3, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private checkFeaturesByPlatform()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;
    .locals 3

    const-string v0, "ro.board.platform"

    .line 347
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 350
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 353
    :goto_0
    new-instance v2, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    invoke-direct {v2, v1, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propName"
        }
    .end annotation

    .line 245
    invoke-static {}, Lcom/netease/yunxin/lite/util/emulator/CommandUtil;->getSingleInstance()Lcom/netease/yunxin/lite/util/emulator/CommandUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/util/emulator/CommandUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private getSensorNumber(Landroid/content/Context;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "sensor"

    .line 374
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, -0x1

    .line 378
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public static getSingleInstance()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;
    .locals 1

    .line 45
    invoke-static {}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$SingletonHolder;->access$100()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;

    move-result-object v0

    return-object v0
.end method

.method private getUserAppNum(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userApps"
        }
    .end annotation

    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "package:"

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 241
    array-length p1, p1

    return p1
.end method

.method private hasLightSensor(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "sensor"

    .line 417
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x5

    .line 421
    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private readSysPropertyImpl(Landroid/content/Context;)Z
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 115
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->checkFeaturesByHardware()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    move-result-object v1

    .line 116
    iget v2, v1, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->result:I

    const-string v3, "EmulatorCheckUtil"

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findEmulator hardware = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2
    const/4 v2, 0x1

    .line 126
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->checkFeaturesByFlavor()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    move-result-object v5

    .line 127
    iget v6, v5, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->result:I

    if-eqz v6, :cond_4

    if-eq v6, v4, :cond_3

    goto :goto_1

    .line 132
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findEmulator flavor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 137
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->checkFeaturesByModel()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    move-result-object v6

    .line 138
    iget v7, v6, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->result:I

    if-eqz v7, :cond_6

    if-eq v7, v4, :cond_5

    goto :goto_2

    .line 143
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findEmulator model = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 148
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->checkFeaturesByManufacturer()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    move-result-object v7

    .line 149
    iget v8, v7, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->result:I

    if-eqz v8, :cond_8

    if-eq v8, v4, :cond_7

    goto :goto_3

    .line 154
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findEmulator manufacturer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 159
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->checkFeaturesByBoard()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    move-result-object v8

    .line 160
    iget v9, v8, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->result:I

    if-eqz v9, :cond_a

    if-eq v9, v4, :cond_9

    goto :goto_4

    .line 165
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findEmulator board = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 170
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->checkFeaturesByPlatform()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    move-result-object v9

    .line 171
    iget v10, v9, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->result:I

    if-eqz v10, :cond_c

    if-eq v10, v4, :cond_b

    goto :goto_5

    .line 176
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findEmulator platform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 181
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->checkFeaturesByBaseBand()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    move-result-object v10

    .line 182
    iget v11, v10, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->result:I

    if-eqz v11, :cond_e

    if-eq v11, v4, :cond_d

    goto :goto_6

    .line 187
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findEmulator baseBand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_e
    add-int/lit8 v2, v2, 0x2

    .line 192
    :goto_6
    invoke-direct/range {p0 .. p1}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->getSensorNumber(Landroid/content/Context;)I

    move-result v11

    const/4 v12, 0x7

    if-gt v11, v12, :cond_f

    add-int/lit8 v2, v2, 0x1

    .line 200
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->supportCameraFlash(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_10

    add-int/lit8 v2, v2, 0x1

    .line 203
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->supportCamera(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_11

    add-int/lit8 v2, v2, 0x1

    .line 206
    :cond_11
    invoke-direct/range {p0 .. p1}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->supportBluetooth(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_12

    add-int/lit8 v2, v2, 0x1

    .line 210
    :cond_12
    invoke-direct/range {p0 .. p1}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->hasLightSensor(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_13

    add-int/lit8 v2, v2, 0x1

    .line 214
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->checkFeaturesByCgroup()Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;

    move-result-object v0

    .line 215
    iget v4, v0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->result:I

    if-nez v4, :cond_14

    add-int/lit8 v2, v2, 0x1

    .line 217
    :cond_14
    new-instance v4, Ljava/lang/StringBuffer;

    move-object/from16 v16, v3

    const-string v3, "Test start"

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    .line 218
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 p1, v2

    const-string v2, "hardware = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v1, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "flavor = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v5, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "model = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v6, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "manufacturer = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v7, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "board = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v8, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "platform = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v9, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "baseBand = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v10, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "sensorNumber = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "supportCamera = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 228
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "supportCameraFlash = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "supportBluetooth = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "hasLightSensor = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "cgroupResult = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "suspectCount = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v2, p1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findEmulator Test start  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-le v2, v0, :cond_15

    const/4 v0, 0x1

    goto :goto_7

    :cond_15
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private saveSharedPreferences(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEmulator"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const-string v1, "IsEmulator"

    .line 51
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private supportBluetooth(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 407
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private supportCamera(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.camera"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private supportCameraFlash(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 400
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.camera.flash"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public checkIsRunningInEmulator(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "NERTC_SDK_DEVICE"

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "IsEmulator"

    const/4 v3, 0x0

    .line 94
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "true"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 98
    :cond_0
    new-instance v0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$1;-><init>(Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;Landroid/content/Context;)V

    .line 104
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$1;->start()V

    return v1
.end method

.method public checkSysProperty()Z
    .locals 5

    :try_start_0
    const-string v0, "ro.kernel.qemu"

    .line 59
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "EmulatorCheckUtil"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "check emulator find qemu"

    .line 61
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "ro.product.device"

    .line 65
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "generic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "check emulator find Build.generic"

    .line 67
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const-string v0, "ro.product.cpu.abi"

    .line 72
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "x86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "x86_64"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "check emulator find ABI.x86"

    .line 74
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 79
    :cond_3
    invoke-static {}, Lcom/netease/yunxin/lite/util/emulator/CommandUtil;->getSingleInstance()Lcom/netease/yunxin/lite/util/emulator/CommandUtil;

    move-result-object v0

    const-string v3, "cat /proc/cpuinfo"

    invoke-virtual {v0, v3}, Lcom/netease/yunxin/lite/util/emulator/CommandUtil;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "amd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "check emulator find intel|amd"

    .line 81
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    :cond_5
    const/4 v0, 0x0

    return v0
.end method
