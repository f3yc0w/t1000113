.class Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;
.super Ljava/lang/Object;
.source "CallProximityManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/audio/CallProximityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximityDisplayListener"
.end annotation


# instance fields
.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mIsDisplayOn:Z

.field final synthetic this$0:Lcom/netease/yunxin/lite/audio/CallProximityManager;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/audio/CallProximityManager;Landroid/hardware/display/DisplayManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "displayManager"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;->this$0:Lcom/netease/yunxin/lite/audio/CallProximityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 272
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;->mIsDisplayOn:Z

    const-string p1, "CallProximityManager"

    const-string v0, "ProximityDisplayListener ctor"

    .line 275
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iput-object p2, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayId"
        }
    .end annotation

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayId"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 296
    :goto_0
    iget-boolean p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;->mIsDisplayOn:Z

    if-eq v0, p1, :cond_1

    .line 297
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;->mIsDisplayOn:Z

    .line 298
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;->this$0:Lcom/netease/yunxin/lite/audio/CallProximityManager;

    invoke-static {p1, v0}, Lcom/netease/yunxin/lite/audio/CallProximityManager;->access$000(Lcom/netease/yunxin/lite/audio/CallProximityManager;Z)V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayId"
        }
    .end annotation

    return-void
.end method

.method register()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method unregister()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method
