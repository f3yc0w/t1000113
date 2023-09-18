.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$PoJ93flrFi4HMv7-G4B2JPIOa8o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$PoJ93flrFi4HMv7-G4B2JPIOa8o;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$PoJ93flrFi4HMv7-G4B2JPIOa8o;->f$0:Ljava/util/List;

    check-cast p1, Lcom/google/android/exoplr2avp/Player$Listener;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->lambda$onCues$2(Ljava/util/List;Lcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method
