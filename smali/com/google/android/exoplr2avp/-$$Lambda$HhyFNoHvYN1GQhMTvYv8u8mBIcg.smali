.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$HhyFNoHvYN1GQhMTvYv8u8mBIcg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$HhyFNoHvYN1GQhMTvYv8u8mBIcg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$HhyFNoHvYN1GQhMTvYv8u8mBIcg;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/-$$Lambda$HhyFNoHvYN1GQhMTvYv8u8mBIcg;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/-$$Lambda$HhyFNoHvYN1GQhMTvYv8u8mBIcg;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$HhyFNoHvYN1GQhMTvYv8u8mBIcg;

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

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Player$Listener;->onSeekProcessed()V

    return-void
.end method
