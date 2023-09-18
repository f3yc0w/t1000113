.class Lcom/tendcloud/tenddata/game/bm;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private shakeCount:I

.field final synthetic this$0:Lcom/tendcloud/tenddata/game/bk;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/bk;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bm;->this$0:Lcom/tendcloud/tenddata/game/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 87
    iput p1, p0, Lcom/tendcloud/tenddata/game/bm;->shakeCount:I

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 92
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    .line 94
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/bm;->this$0:Lcom/tendcloud/tenddata/game/bk;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bk;->c(Lcom/tendcloud/tenddata/game/bk;)J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0xfa

    cmp-long v7, v3, v5

    if-lez v7, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bm;->this$0:Lcom/tendcloud/tenddata/game/bk;

    invoke-static {v2, v0, v1}, Lcom/tendcloud/tenddata/game/bk;->a(Lcom/tendcloud/tenddata/game/bk;J)J

    .line 99
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    .line 100
    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41900000    # 18.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    aget v1, p1, v3

    .line 101
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    const/4 v1, 0x2

    aget p1, p1, v1

    .line 102
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    .line 103
    :cond_1
    iget p1, p0, Lcom/tendcloud/tenddata/game/bm;->shakeCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/tendcloud/tenddata/game/bm;->shakeCount:I

    .line 106
    :cond_2
    iget p1, p0, Lcom/tendcloud/tenddata/game/bm;->shakeCount:I

    const/4 v1, 0x5

    if-lt p1, v1, :cond_5

    .line 107
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/bm;->this$0:Lcom/tendcloud/tenddata/game/bk;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bk;->d(Lcom/tendcloud/tenddata/game/bk;)Lcom/tendcloud/tenddata/game/bk$a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 108
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/bm;->this$0:Lcom/tendcloud/tenddata/game/bk;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bk;->e(Lcom/tendcloud/tenddata/game/bk;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "android.permission.VIBRATE"

    invoke-static {p1, v1}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 110
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/bm;->this$0:Lcom/tendcloud/tenddata/game/bk;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bk;->e(Lcom/tendcloud/tenddata/game/bk;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "vibrator"

    .line 111
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    .line 112
    invoke-virtual {p1, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 114
    :cond_3
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/bm;->this$0:Lcom/tendcloud/tenddata/game/bk;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bk;->d(Lcom/tendcloud/tenddata/game/bk;)Lcom/tendcloud/tenddata/game/bk$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/tendcloud/tenddata/game/bk$a;->onAddTestDeviceEvent()V

    .line 115
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/bm;->this$0:Lcom/tendcloud/tenddata/game/bk;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bk;->a(Lcom/tendcloud/tenddata/game/bk;)Landroid/hardware/SensorManager;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 116
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/bm;->this$0:Lcom/tendcloud/tenddata/game/bk;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bk;->a(Lcom/tendcloud/tenddata/game/bk;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bm;->this$0:Lcom/tendcloud/tenddata/game/bk;

    .line 117
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bk;->b(Lcom/tendcloud/tenddata/game/bk;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 120
    :cond_4
    iput v0, p0, Lcom/tendcloud/tenddata/game/bm;->shakeCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_5
    :goto_0
    return-void
.end method
