.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$b4IviC1thJgyZeoq0P2Hvo5tp1A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$b4IviC1thJgyZeoq0P2Hvo5tp1A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$b4IviC1thJgyZeoq0P2Hvo5tp1A;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$b4IviC1thJgyZeoq0P2Hvo5tp1A;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$b4IviC1thJgyZeoq0P2Hvo5tp1A;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$b4IviC1thJgyZeoq0P2Hvo5tp1A;

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

    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->lambda$release$5(Lcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method
