.class public final synthetic Lcom/google/android/exoplr2avp/util/-$$Lambda$ListenerSet$DVkVkrgVacqzqAQBdKazvku2TgI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/-$$Lambda$ListenerSet$DVkVkrgVacqzqAQBdKazvku2TgI;->f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lcom/google/android/exoplr2avp/util/-$$Lambda$ListenerSet$DVkVkrgVacqzqAQBdKazvku2TgI;->f$1:I

    iput-object p3, p0, Lcom/google/android/exoplr2avp/util/-$$Lambda$ListenerSet$DVkVkrgVacqzqAQBdKazvku2TgI;->f$2:Lcom/google/android/exoplr2avp/util/ListenerSet$Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/-$$Lambda$ListenerSet$DVkVkrgVacqzqAQBdKazvku2TgI;->f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lcom/google/android/exoplr2avp/util/-$$Lambda$ListenerSet$DVkVkrgVacqzqAQBdKazvku2TgI;->f$1:I

    iget-object v2, p0, Lcom/google/android/exoplr2avp/util/-$$Lambda$ListenerSet$DVkVkrgVacqzqAQBdKazvku2TgI;->f$2:Lcom/google/android/exoplr2avp/util/ListenerSet$Event;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->lambda$queueEvent$0(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method
