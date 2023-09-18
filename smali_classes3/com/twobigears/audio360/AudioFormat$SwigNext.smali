.class Lcom/twobigears/audio360/AudioFormat$SwigNext;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twobigears/audio360/AudioFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwigNext"
.end annotation


# static fields
.field private static next:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0

    .line 51
    sput p0, Lcom/twobigears/audio360/AudioFormat$SwigNext;->next:I

    return p0
.end method

.method static synthetic access$008()I
    .locals 2

    .line 51
    sget v0, Lcom/twobigears/audio360/AudioFormat$SwigNext;->next:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/twobigears/audio360/AudioFormat$SwigNext;->next:I

    return v0
.end method
