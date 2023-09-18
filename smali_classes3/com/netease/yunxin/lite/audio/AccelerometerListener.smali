.class Lcom/netease/yunxin/lite/audio/AccelerometerListener;
.super Ljava/lang/Object;
.source "AccelerometerListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/audio/AccelerometerListener$AccelerometerHandler;,
        Lcom/netease/yunxin/lite/audio/AccelerometerListener$OrientationListener;
    }
.end annotation


# static fields
.field private static final HORIZONTAL_DEBOUNCE:I = 0x1f4

.field private static final ORIENTATION_CHANGED:I = 0x4d2

.field static final ORIENTATION_HORIZONTAL:I = 0x2

.field static final ORIENTATION_UNKNOWN:I = 0x0

.field static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AccelerometerListener"

.field private static final VERTICAL_ANGLE:D = 50.0

.field private static final VERTICAL_DEBOUNCE:I = 0x64


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/netease/yunxin/lite/audio/AccelerometerListener$OrientationListener;

.field private mOrientation:I

.field private mPendingOrientation:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netease/yunxin/lite/audio/AccelerometerListener$OrientationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/netease/yunxin/lite/audio/AccelerometerListener$1;

    invoke-direct {v0, p0}, Lcom/netease/yunxin/lite/audio/AccelerometerListener$1;-><init>(Lcom/netease/yunxin/lite/audio/AccelerometerListener;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 111
    new-instance v0, Lcom/netease/yunxin/lite/audio/AccelerometerListener$AccelerometerHandler;

    invoke-direct {v0, p0}, Lcom/netease/yunxin/lite/audio/AccelerometerListener$AccelerometerHandler;-><init>(Lcom/netease/yunxin/lite/audio/AccelerometerListener;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const-string v0, "AccelerometerListener"

    const-string v1, "AccelerometerListener ctor"

    .line 49
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput-object p2, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mListener:Lcom/netease/yunxin/lite/audio/AccelerometerListener$OrientationListener;

    const-string p2, "sensor"

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 53
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/netease/yunxin/lite/audio/AccelerometerListener;DDD)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p6}, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->onSensorEvent(DDD)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/yunxin/lite/audio/AccelerometerListener;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mOrientation:I

    return p0
.end method

.method static synthetic access$102(Lcom/netease/yunxin/lite/audio/AccelerometerListener;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/netease/yunxin/lite/audio/AccelerometerListener;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mPendingOrientation:I

    return p0
.end method

.method static synthetic access$300(Lcom/netease/yunxin/lite/audio/AccelerometerListener;)Lcom/netease/yunxin/lite/audio/AccelerometerListener$OrientationListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mListener:Lcom/netease/yunxin/lite/audio/AccelerometerListener$OrientationListener;

    return-object p0
.end method

.method private onSensorEvent(DDD)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_2

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_2

    cmpl-double v2, p5, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    mul-double p1, p1, p1

    mul-double p3, p3, p3

    add-double/2addr p1, p3

    .line 94
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    .line 95
    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide p3, 0x4066800000000000L    # 180.0

    mul-double p1, p1, p3

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x4049000000000000L    # 50.0

    cmpl-double p5, p1, p3

    if-lez p5, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 98
    :goto_0
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->setOrientation(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setOrientation(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget v0, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mPendingOrientation:I

    if-ne v0, p1, :cond_0

    .line 75
    monitor-exit p0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    iget v0, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mOrientation:I

    if-eq v0, p1, :cond_2

    .line 81
    iput p1, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mPendingOrientation:I

    .line 82
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/16 p1, 0x64

    goto :goto_0

    :cond_1
    const/16 p1, 0x1f4

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 87
    iput p1, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mPendingOrientation:I

    .line 89
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public enable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "AccelerometerListener"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 61
    :try_start_0
    iput p1, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mOrientation:I

    .line 62
    iput p1, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mPendingOrientation:I

    .line 63
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 67
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x4d2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
