.class public final synthetic Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$7rpXrlNh4uFhBTjigjQ6WxAfO14;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$7rpXrlNh4uFhBTjigjQ6WxAfO14;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$7rpXrlNh4uFhBTjigjQ6WxAfO14;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$7rpXrlNh4uFhBTjigjQ6WxAfO14;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$7rpXrlNh4uFhBTjigjQ6WxAfO14;->INSTANCE:Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$7rpXrlNh4uFhBTjigjQ6WxAfO14;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->lambda$static$1(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
