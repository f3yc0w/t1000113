.class public Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;
.super Ljava/lang/Object;
.source "NERtcVirtualBackgroundSource.java"


# static fields
.field public static final BACKGROUND_BLUR:I = 0x3

.field public static final BACKGROUND_COLOR:I = 0x1

.field public static final BACKGROUND_IMG:I = 0x2

.field public static final BLUR_DEGREE_HIGH:I = 0x3

.field public static final BLUR_DEGREE_LOW:I = 0x1

.field public static final BLUR_DEGREE_MEDIUM:I = 0x2


# instance fields
.field public backgroundSourceType:I

.field public blur_degree:I

.field public color:I

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->source:Ljava/lang/String;

    const/4 v0, 0x1

    .line 134
    iput v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->backgroundSourceType:I

    const v0, 0xffffff

    .line 135
    iput v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->color:I

    const-string v0, ""

    .line 136
    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->source:Ljava/lang/String;

    const/4 v0, 0x3

    .line 137
    iput v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->blur_degree:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "backgroundSourceType",
            "color",
            "source",
            "blur_degree"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->source:Ljava/lang/String;

    .line 127
    iput p1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->backgroundSourceType:I

    .line 128
    iput p2, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->color:I

    .line 129
    iput-object p3, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->source:Ljava/lang/String;

    .line 130
    iput p4, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->blur_degree:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NERtcVirtualBackgroundSource{backgroundSourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->backgroundSourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->color:I

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", blur_degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->blur_degree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
