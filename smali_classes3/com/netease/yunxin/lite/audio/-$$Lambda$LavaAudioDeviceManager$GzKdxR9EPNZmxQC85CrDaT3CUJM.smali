.class public final synthetic Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$GzKdxR9EPNZmxQC85CrDaT3CUJM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$GzKdxR9EPNZmxQC85CrDaT3CUJM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$GzKdxR9EPNZmxQC85CrDaT3CUJM;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$GzKdxR9EPNZmxQC85CrDaT3CUJM;-><init>()V

    sput-object v0, Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$GzKdxR9EPNZmxQC85CrDaT3CUJM;->INSTANCE:Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$GzKdxR9EPNZmxQC85CrDaT3CUJM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->lambda$startInner$0()V

    return-void
.end method
