.class public Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration;
.super Ljava/lang/Object;
.source "NERtcAudioRecordingConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;,
        Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;
    }
.end annotation


# instance fields
.field public recordCycleTime:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingCycleTime;

.field public recordFilePath:Ljava/lang/String;

.field public recordPosition:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration$NERtcAudioRecordingPosition;

.field public recordQuality:I

.field public recordSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
