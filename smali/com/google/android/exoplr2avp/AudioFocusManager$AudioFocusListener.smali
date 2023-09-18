.class Lcom/google/android/exoplr2avp/AudioFocusManager$AudioFocusListener;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/AudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusListener"
.end annotation


# instance fields
.field private final eventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/android/exoplr2avp/AudioFocusManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/AudioFocusManager;Landroid/os/Handler;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/google/android/exoplr2avp/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplr2avp/AudioFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p2, p0, Lcom/google/android/exoplr2avp/AudioFocusManager$AudioFocusListener;->eventHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAudioFocusChange$0$AudioFocusManager$AudioFocusListener(I)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/google/android/exoplr2avp/AudioFocusManager$AudioFocusListener;->this$0:Lcom/google/android/exoplr2avp/AudioFocusManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/AudioFocusManager;->access$000(Lcom/google/android/exoplr2avp/AudioFocusManager;I)V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/google/android/exoplr2avp/AudioFocusManager$AudioFocusListener;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplr2avp/-$$Lambda$AudioFocusManager$AudioFocusListener$sbhlHpAXvGcX3_XNPpKQCxA99N4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$AudioFocusManager$AudioFocusListener$sbhlHpAXvGcX3_XNPpKQCxA99N4;-><init>(Lcom/google/android/exoplr2avp/AudioFocusManager$AudioFocusListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
