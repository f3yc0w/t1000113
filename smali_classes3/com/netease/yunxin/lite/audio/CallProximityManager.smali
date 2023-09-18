.class Lcom/netease/yunxin/lite/audio/CallProximityManager;
.super Ljava/lang/Object;
.source "CallProximityManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/netease/yunxin/lite/audio/AccelerometerListener$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;,
        Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;
    }
.end annotation


# static fields
.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "CallProximityManager"

.field private static mPowerLockReleaseIntMethod:Ljava/lang/reflect/Method;


# instance fields
.field private WAIT_FOR_PROXIMITY_NEGATIVE:I

.field private mAccelerometerEnabled:Z

.field private mAccelerometerManager:Lcom/netease/yunxin/lite/audio/AccelerometerListener;

.field private mDirector:Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;

.field private mIsFirstRun:Z

.field private mOrientation:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProximityDisplayListener:Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorTracked:Z

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "director"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximitySensorTracked:Z

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mIsFirstRun:Z

    const/4 v2, 0x0

    .line 44
    iput-object v2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mDirector:Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;

    .line 50
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mAccelerometerEnabled:Z

    .line 52
    iput v1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->WAIT_FOR_PROXIMITY_NEGATIVE:I

    const-string v3, "CallProximityManager"

    const-string v4, "CallProximityManager ctor"

    .line 67
    invoke-static {v3, v4}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object p2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mDirector:Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;

    const-string p2, "sensor"

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mSensorManager:Landroid/hardware/SensorManager;

    const-string p2, "power"

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mPowerManager:Landroid/os/PowerManager;

    .line 72
    new-instance p2, Lcom/netease/yunxin/lite/audio/AccelerometerListener;

    invoke-direct {p2, p1, p0}, Lcom/netease/yunxin/lite/audio/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/netease/yunxin/lite/audio/AccelerometerListener$OrientationListener;)V

    iput-object p2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mAccelerometerManager:Lcom/netease/yunxin/lite/audio/AccelerometerListener;

    .line 74
    invoke-static {}, Lcom/netease/yunxin/lite/util/Compatibility;->runningOnLollipopOrHigher()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 75
    new-instance p2, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;

    const-string v4, "display"

    .line 76
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    invoke-direct {p2, p0, p1}, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;-><init>(Lcom/netease/yunxin/lite/audio/CallProximityManager;Landroid/hardware/display/DisplayManager;)V

    iput-object p2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximityDisplayListener:Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p1, :cond_4

    .line 82
    :try_start_0
    const-class p1, Landroid/os/PowerManager;

    const-string p2, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 84
    invoke-static {}, Lcom/netease/yunxin/lite/util/Compatibility;->runningOnJellyBeanMR1OrHigher()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 85
    iget-object p2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v2, "isWakeLockLevelSupported"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    .line 86
    invoke-virtual {p2, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 87
    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mPowerManager:Landroid/os/PowerManager;

    new-array v4, v1, [Ljava/lang/Object;

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 87
    invoke-virtual {p2, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Use 4.2 detection way for proximity sensor detection. Result is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object p2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v2, "getSupportedWakeLockFlags"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {p2, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 94
    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mPowerManager:Landroid/os/PowerManager;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proximity flags supported : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    and-int/2addr p2, p1

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "We can use native screen locker !!"

    .line 99
    invoke-static {v3, p2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "com.netease.nrtc.CallProximity"

    invoke-virtual {p2, p1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Impossible to get power manager supported wake lock flags "

    .line 106
    invoke-static {v3, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_3
    :goto_1
    sget-object p1, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mPowerLockReleaseIntMethod:Ljava/lang/reflect/Method;

    if-nez p1, :cond_4

    .line 111
    :try_start_1
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "release"

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    .line 112
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mPowerLockReleaseIntMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string p1, "Impossible to get power manager release with it"

    .line 115
    invoke-static {v3, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_5

    .line 121
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximitySensor:Landroid/hardware/Sensor;

    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/netease/yunxin/lite/audio/CallProximityManager;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/audio/CallProximityManager;->onDisplayStateChanged(Z)V

    return-void
.end method

.method private acquire()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mDirector:Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 232
    invoke-interface {v0, v1}, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V

    :cond_1
    return-void
.end method

.method private onDisplayStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDisplayOn"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDisplayOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallProximityManager"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mAccelerometerManager:Lcom/netease/yunxin/lite/audio/AccelerometerListener;

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->enable(Z)V

    return-void
.end method

.method private release(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    sget-object v0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mPowerLockReleaseIntMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    iget-object v3, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling new release method "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CallProximityManager"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 218
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mDirector:Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;

    if-eqz p1, :cond_2

    .line 223
    invoke-interface {p1, v1}, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V

    :cond_2
    return-void
.end method

.method private updateProximitySensorMode()V
    .locals 5

    .line 238
    iget v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 242
    :goto_0
    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mDirector:Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;

    if-eqz v2, :cond_1

    .line 243
    invoke-interface {v2}, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;->shouldActivateProximity()Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 246
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Horizontal : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " and activate for calls "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CallProximityManager"

    invoke-static {v4, v3}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 249
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/CallProximityManager;->acquire()V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 251
    iget v1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->WAIT_FOR_PROXIMITY_NEGATIVE:I

    :cond_3
    invoke-direct {p0, v1}, Lcom/netease/yunxin/lite/audio/CallProximityManager;->release(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sensor",
            "accuracy"
        }
    .end annotation

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 176
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximitySensorTracked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mIsFirstRun:Z

    if-nez v0, :cond_3

    .line 177
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    cmpl-double v7, v2, v4

    if-ltz v7, :cond_0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 178
    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 180
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 182
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Distance is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CallProximityManager"

    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mDirector:Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;

    if-eqz v0, :cond_1

    .line 186
    invoke-interface {v0}, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;->shouldActivateProximity()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 190
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mDirector:Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;

    if-eqz p1, :cond_3

    .line 191
    invoke-interface {p1, v6}, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V

    goto :goto_2

    .line 194
    :cond_2
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mDirector:Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;

    if-eqz p1, :cond_3

    .line 195
    invoke-interface {p1, v1}, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V

    .line 200
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mIsFirstRun:Z

    if-eqz p1, :cond_4

    .line 201
    iput-boolean v1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mIsFirstRun:Z

    :cond_4
    return-void
.end method

.method public orientationChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 258
    iput p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mOrientation:I

    .line 259
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/CallProximityManager;->updateProximitySensorMode()V

    return-void
.end method

.method startTracking()V
    .locals 4

    const-string v0, "CallProximityManager"

    const-string v1, "start tracking"

    .line 127
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximitySensorTracked:Z

    if-nez v1, :cond_0

    .line 130
    iput-boolean v2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mIsFirstRun:Z

    const-string v1, "Register sensor"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 135
    iput-boolean v2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximitySensorTracked:Z

    .line 137
    :cond_0
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mAccelerometerEnabled:Z

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mAccelerometerManager:Lcom/netease/yunxin/lite/audio/AccelerometerListener;

    invoke-virtual {v0, v2}, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->enable(Z)V

    .line 139
    iput-boolean v2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mAccelerometerEnabled:Z

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximityDisplayListener:Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;->register()V

    :cond_2
    return-void
.end method

.method stopTracking()V
    .locals 3

    const-string v0, "CallProximityManager"

    const-string v1, "stop tracking"

    .line 149
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximitySensorTracked:Z

    if-eqz v1, :cond_0

    .line 152
    iput-boolean v2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximitySensorTracked:Z

    .line 153
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string v1, "Unregister to sensor is done !!!"

    .line 154
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mAccelerometerEnabled:Z

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mAccelerometerManager:Lcom/netease/yunxin/lite/audio/AccelerometerListener;

    invoke-virtual {v0, v2}, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->enable(Z)V

    .line 159
    iput-boolean v2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mAccelerometerEnabled:Z

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager;->mProximityDisplayListener:Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;->unregister()V

    .line 166
    :cond_2
    invoke-direct {p0, v2}, Lcom/netease/yunxin/lite/audio/CallProximityManager;->release(I)V

    return-void
.end method
