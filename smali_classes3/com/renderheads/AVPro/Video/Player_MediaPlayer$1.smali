.class public Lcom/renderheads/AVPro/Video/Player_MediaPlayer$1;
.super Ljava/lang/Object;
.source "Player_MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->CloseVideoOnPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)V
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
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$1;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$1;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 7
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$1;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    iget-object v0, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
