.class public Lcom/renderheads/AVPro/Video/Player_Base$1$1;
.super Ljava/lang/Object;
.source "Player_Base.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/renderheads/AVPro/Video/Player_Base$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/renderheads/AVPro/Video/Player_Base$1;


# direct methods
.method public constructor <init>(Lcom/renderheads/AVPro/Video/Player_Base$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base$1$1;->this$1:Lcom/renderheads/AVPro/Video/Player_Base$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base$1$1;->this$1:Lcom/renderheads/AVPro/Video/Player_Base$1;

    iget-object v0, v0, Lcom/renderheads/AVPro/Video/Player_Base$1;->this$0:Lcom/renderheads/AVPro/Video/Player_Base;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_Base;->access$000(Lcom/renderheads/AVPro/Video/Player_Base;)V

    .line 2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base$1$1;->this$1:Lcom/renderheads/AVPro/Video/Player_Base$1;

    iget-object v0, v0, Lcom/renderheads/AVPro/Video/Player_Base$1;->this$0:Lcom/renderheads/AVPro/Video/Player_Base;

    iget-object v0, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Random:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base$1$1;->this$1:Lcom/renderheads/AVPro/Video/Player_Base$1;

    iget-object v1, v1, Lcom/renderheads/AVPro/Video/Player_Base$1;->this$0:Lcom/renderheads/AVPro/Video/Player_Base;

    iget-object v1, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_WatermarkSizeHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
