.class public Lcom/renderheads/AVPro/Video/Player_Base$1;
.super Ljava/lang/Object;
.source "Player_Base.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/renderheads/AVPro/Video/Player_Base;->Initialise(Landroid/content/Context;ZZIIIZIIIIIIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/renderheads/AVPro/Video/Player_Base;


# direct methods
.method public constructor <init>(Lcom/renderheads/AVPro/Video/Player_Base;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base$1;->this$0:Lcom/renderheads/AVPro/Video/Player_Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base$1;->this$0:Lcom/renderheads/AVPro/Video/Player_Base;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_WatermarkSizeHandler:Landroid/os/Handler;

    .line 2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base$1;->this$0:Lcom/renderheads/AVPro/Video/Player_Base;

    new-instance v1, Lcom/renderheads/AVPro/Video/Player_Base$1$1;

    invoke-direct {v1, p0}, Lcom/renderheads/AVPro/Video/Player_Base$1$1;-><init>(Lcom/renderheads/AVPro/Video/Player_Base$1;)V

    iput-object v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_WatermarkPositionRunnable:Ljava/lang/Runnable;

    .line 12
    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_WatermarkSizeHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Random:Ljava/util/Random;

    const/16 v3, 0x7d0

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
