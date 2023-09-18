.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$8ka9BL0xQohyBNSkCCiPWLK3gsM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$8ka9BL0xQohyBNSkCCiPWLK3gsM;->f$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$8ka9BL0xQohyBNSkCCiPWLK3gsM;->f$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;

    check-cast p1, Lcom/google/android/exoplr2avp/Player$Listener;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->lambda$onMetadata$4$ExoPlayerImpl$ComponentListener(Lcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method
