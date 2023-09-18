.class public Lcom/netease/yunxin/lite/util/Compatibility;
.super Ljava/lang/Object;
.source "Compatibility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTargetVersion()I
    .locals 1

    .line 137
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isCompatible(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apiLevel"
        }
    .end annotation

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTabletScreen(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctxt"
        }
    .end annotation

    const/4 v0, 0x4

    .line 32
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 38
    :try_start_0
    const-class v1, Landroid/content/res/Configuration;

    const-string v3, "screenLayout"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p0, p0, 0xf

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :catch_0
    :cond_2
    return v2
.end method

.method public static runningOnEmulator()Z
    .locals 3

    .line 51
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 55
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 60
    :cond_1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "generic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static runningOnGingerBreadOrHigher()Z
    .locals 1

    const/16 v0, 0x9

    .line 65
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method

.method public static runningOnJellyBeanMR1OrHigher()Z
    .locals 1

    const/16 v0, 0x11

    .line 75
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method

.method public static runningOnJellyBeanMR2OrHigher()Z
    .locals 1

    const/16 v0, 0x12

    .line 85
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method

.method public static runningOnJellyBeanOrHigher()Z
    .locals 1

    const/16 v0, 0x10

    .line 70
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method

.method public static runningOnKitkatOrHigher()Z
    .locals 1

    const/16 v0, 0x13

    .line 90
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method

.method public static runningOnKitkatWatchOrHigher()Z
    .locals 1

    const/16 v0, 0x14

    .line 95
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method

.method public static runningOnLollipopMR1OrHigher()Z
    .locals 1

    const/16 v0, 0x16

    .line 105
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method

.method public static runningOnLollipopOrHigher()Z
    .locals 1

    const/16 v0, 0x15

    .line 100
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method

.method public static runningOnMarshmallowOrHigher()Z
    .locals 1

    const/16 v0, 0x17

    .line 110
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method

.method public static runningOnNougatMR1OrHigher()Z
    .locals 1

    const/16 v0, 0x19

    .line 120
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method

.method public static runningOnNougatOrHigher()Z
    .locals 1

    const/16 v0, 0x18

    .line 115
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method

.method public static runningOnOreoMR1OrHigher()Z
    .locals 1

    const/16 v0, 0x1b

    .line 129
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method

.method public static runningOnOreoOrHigher()Z
    .locals 1

    const/16 v0, 0x1a

    .line 125
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method

.method public static runningOnPieOrHigher()Z
    .locals 1

    const/16 v0, 0x1c

    .line 144
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method

.method public static runningOnQOrHigher()Z
    .locals 1

    const/16 v0, 0x1d

    .line 80
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method

.method public static runningOnSnowConeOrHigher()Z
    .locals 1

    const/16 v0, 0x1f

    .line 133
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/Compatibility;->isCompatible(I)Z

    move-result v0

    return v0
.end method
