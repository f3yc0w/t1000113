.class public final synthetic Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$R9-VvtMBL47Gr8AoGoc_GQfrX78;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$R9-VvtMBL47Gr8AoGoc_GQfrX78;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$R9-VvtMBL47Gr8AoGoc_GQfrX78;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$R9-VvtMBL47Gr8AoGoc_GQfrX78;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$R9-VvtMBL47Gr8AoGoc_GQfrX78;->INSTANCE:Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$R9-VvtMBL47Gr8AoGoc_GQfrX78;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
