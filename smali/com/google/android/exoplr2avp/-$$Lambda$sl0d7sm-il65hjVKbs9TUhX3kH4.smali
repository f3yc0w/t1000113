.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$sl0d7sm-il65hjVKbs9TUhX3kH4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$sl0d7sm-il65hjVKbs9TUhX3kH4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$sl0d7sm-il65hjVKbs9TUhX3kH4;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/-$$Lambda$sl0d7sm-il65hjVKbs9TUhX3kH4;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/-$$Lambda$sl0d7sm-il65hjVKbs9TUhX3kH4;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$sl0d7sm-il65hjVKbs9TUhX3kH4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplr2avp/Player$Listener;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Player$Listener;->onRenderedFirstFrame()V

    return-void
.end method
