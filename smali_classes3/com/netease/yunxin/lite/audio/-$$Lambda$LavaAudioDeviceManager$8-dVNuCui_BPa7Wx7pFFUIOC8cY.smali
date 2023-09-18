.class public final synthetic Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$8-dVNuCui_BPa7Wx7pFFUIOC8cY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$8-dVNuCui_BPa7Wx7pFFUIOC8cY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$8-dVNuCui_BPa7Wx7pFFUIOC8cY;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$8-dVNuCui_BPa7Wx7pFFUIOC8cY;-><init>()V

    sput-object v0, Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$8-dVNuCui_BPa7Wx7pFFUIOC8cY;->INSTANCE:Lcom/netease/yunxin/lite/audio/-$$Lambda$LavaAudioDeviceManager$8-dVNuCui_BPa7Wx7pFFUIOC8cY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 0

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->lambda$registerAudioFocusRequest$1(I)V

    return-void
.end method
