.class public Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;
.super Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;,
        Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$OtherTrackScore;,
        Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TextTrackInfo;,
        Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$AudioTrackInfo;,
        Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$VideoTrackInfo;,
        Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;,
        Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SelectionOverride;,
        Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;,
        Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;
    }
.end annotation


# static fields
.field private static final AUDIO_CHANNEL_COUNT_CONSTRAINTS_WARN_MESSAGE:Ljava/lang/String; = "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

.field private static final FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f

.field private static final NO_ORDER:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SELECTION_ELIGIBILITY_ADAPTIVE:I = 0x2

.field protected static final SELECTION_ELIGIBILITY_FIXED:I = 0x1

.field protected static final SELECTION_ELIGIBILITY_NO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultTrackSelector"


# instance fields
.field private audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

.field public final context:Landroid/content/Context;

.field private final deviceIsTV:Z

.field private final lock:Ljava/lang/Object;

.field private parameters:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

.field private spatializer:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

.field private final trackSelectionFactory:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2070
    sget-object v0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$5on_Lea0VfScYHBCqSefNDGIWMo;->INSTANCE:Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$5on_Lea0VfScYHBCqSefNDGIWMo;

    .line 2071
    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    .line 2077
    sget-object v0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$7rpXrlNh4uFhBTjigjQ6WxAfO14;->INSTANCE:Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$7rpXrlNh4uFhBTjigjQ6WxAfO14;

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->NO_ORDER:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2099
    sget-object v0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    new-instance v1, Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2106
    new-instance v0, Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;)V
    .locals 1

    .line 2114
    invoke-static {p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 1

    .line 2122
    new-instance v0, Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;)V
    .locals 0

    .line 2144
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2132
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;Landroid/content/Context;)V
    .locals 1

    .line 2160
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector;-><init>()V

    .line 2161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 2162
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    .line 2163
    iput-object p2, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->trackSelectionFactory:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;

    .line 2164
    instance-of p2, p1, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    if-eqz p2, :cond_1

    .line 2165
    check-cast p1, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    goto :goto_2

    :cond_1
    if-nez p3, :cond_2

    .line 2168
    sget-object p2, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p2

    .line 2169
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->set(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    .line 2171
    :goto_2
    sget-object p1, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    if-eqz p3, :cond_3

    .line 2172
    invoke-static {p3}, Lcom/google/android/exoplr2avp/util/Util;->isTv(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->deviceIsTV:Z

    if-nez p1, :cond_4

    if-eqz p3, :cond_4

    .line 2173
    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 p2, 0x20

    if-lt p1, p2, :cond_4

    .line 2174
    invoke-static {p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->tryCreateInstance(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    .line 2176
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean p1, p1, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz p1, :cond_5

    if-nez p3, :cond_5

    const-string p1, "DefaultTrackSelector"

    const-string p2, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 2177
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/exoplr2avp/source/TrackGroup;IIZ)I
    .locals 0

    .line 109
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getMaxVideoPixelsToRetainForViewport(Lcom/google/android/exoplr2avp/source/TrackGroup;IIZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(II)I
    .locals 0

    .line 109
    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getRoleFlagMatchScore(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Ljava/lang/String;)I
    .locals 0

    .line 109
    invoke-static {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getVideoCodecPreferenceScore(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2300()Lcom/google/common/collect/Ordering;
    .locals 1

    .line 109
    sget-object v0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->FORMAT_VALUE_ORDERING:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method static synthetic access$2400()Lcom/google/common/collect/Ordering;
    .locals 1

    .line 109
    sget-object v0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->NO_ORDER:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->maybeInvalidateForAudioChannelCountConstraints()V

    return-void
.end method

.method private static applyLegacyRendererOverrides(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;)V
    .locals 6

    .line 2750
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2752
    invoke-virtual {p0, v1}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v2

    .line 2753
    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILcom/google/android/exoplr2avp/source/TrackGroupArray;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 2757
    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILcom/google/android/exoplr2avp/source/TrackGroupArray;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2759
    iget-object v4, v3, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    array-length v4, v4

    if-eqz v4, :cond_1

    .line 2760
    new-instance v4, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;

    iget v5, v3, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 2762
    invoke-virtual {v2, v5}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v2

    iget-object v5, v3, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget v3, v3, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    invoke-direct {v4, v2, v5, v3}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplr2avp/source/TrackGroup;[II)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 2766
    :goto_1
    aput-object v4, p2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static applyTrackSelectionOverrides(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;)V
    .locals 5

    .line 2686
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    .line 2689
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 2692
    invoke-virtual {p0, v3}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v4

    .line 2691
    invoke-static {v4, p1, v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->collectTrackSelectionOverrides(Lcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2695
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getUnmappedTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v3

    .line 2694
    invoke-static {v3, p1, v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->collectTrackSelectionOverrides(Lcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Ljava/util/Map;)V

    :goto_1
    if-ge v2, v0, :cond_3

    .line 2699
    invoke-virtual {p0, v2}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result p1

    .line 2700
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    if-nez p1, :cond_1

    goto :goto_3

    .line 2707
    :cond_1
    iget-object v3, p1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2708
    invoke-virtual {p0, v2}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;->mediaTrackGroup:Lcom/google/android/exoplr2avp/source/TrackGroup;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplr2avp/source/TrackGroup;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2710
    new-instance v3, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;

    iget-object v4, p1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;->mediaTrackGroup:Lcom/google/android/exoplr2avp/source/TrackGroup;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    .line 2712
    invoke-static {p1}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplr2avp/source/TrackGroup;[I)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 2716
    :goto_2
    aput-object v3, p2, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static collectTrackSelectionOverrides(Lcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/TrackGroupArray;",
            "Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2730
    :goto_0
    iget v1, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_3

    .line 2731
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v1

    .line 2732
    iget-object v2, p1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2736
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    if-eqz v2, :cond_1

    .line 2738
    iget-object v2, v2, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    .line 2739
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2740
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected static getFormatLanguageScore(Lcom/google/android/exoplr2avp/Format;Ljava/lang/String;Z)I
    .locals 1

    .line 2900
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 2904
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2905
    iget-object p0, p0, Lcom/google/android/exoplr2avp/Format;->language:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 2910
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "-"

    .line 2914
    invoke-static {p0, p2}, Lcom/google/android/exoplr2avp/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    .line 2915
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    .line 2916
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    if-nez p0, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private static getMaxVideoPixelsToRetainForViewport(Lcom/google/android/exoplr2avp/source/TrackGroup;IIZ)I
    .locals 8

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_2

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 2929
    :goto_0
    iget v2, p0, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_2

    .line 2930
    invoke-virtual {p0, v1}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v2

    .line 2933
    iget v3, v2, Lcom/google/android/exoplr2avp/Format;->width:I

    if-lez v3, :cond_1

    iget v3, v2, Lcom/google/android/exoplr2avp/Format;->height:I

    if-lez v3, :cond_1

    .line 2934
    iget v3, v2, Lcom/google/android/exoplr2avp/Format;->width:I

    iget v4, v2, Lcom/google/android/exoplr2avp/Format;->height:I

    .line 2935
    invoke-static {p3, p1, p2, v3, v4}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v3

    .line 2937
    iget v4, v2, Lcom/google/android/exoplr2avp/Format;->width:I

    iget v5, v2, Lcom/google/android/exoplr2avp/Format;->height:I

    mul-int v4, v4, v5

    .line 2938
    iget v5, v2, Lcom/google/android/exoplr2avp/Format;->width:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const v7, 0x3f7ae148    # 0.98f

    mul-float v6, v6, v7

    float-to-int v6, v6

    if-lt v5, v6, :cond_1

    iget v2, v2, Lcom/google/android/exoplr2avp/Format;->height:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    if-lt v2, v3, :cond_1

    if-ge v4, v0, :cond_1

    move v0, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .locals 3

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-le p3, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eq v1, p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_2
    mul-int p0, p3, p1

    mul-int v0, p4, p2

    if-lt p0, v0, :cond_3

    .line 2967
    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0, p3}, Lcom/google/android/exoplr2avp/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 2970
    :cond_3
    new-instance p2, Landroid/graphics/Point;

    invoke-static {p0, p4}, Lcom/google/android/exoplr2avp/util/Util;->ceilDivide(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private static getRoleFlagMatchScore(II)I
    .locals 0

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    and-int/2addr p0, p1

    .line 2979
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method private static getVideoCodecPreferenceScore(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2990
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "video/avc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "video/hevc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "video/av01"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    return v4

    :pswitch_1
    return v5

    :pswitch_2
    return v3

    :pswitch_3
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isAudioFormatWithinAudioChannelCountConstraints(Lcom/google/android/exoplr2avp/Format;)Z
    .locals 3

    .line 2515
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2516
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->deviceIsTV:Z

    if-nez v1, :cond_2

    iget v1, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 2519
    invoke-static {p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->isDolbyAudio(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    sget v1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v1, :cond_2

    .line 2522
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isSpatializationSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget v1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v1, :cond_1

    .line 2525
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isSpatializationSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    .line 2526
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    .line 2527
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    .line 2528
    invoke-virtual {v1, v2, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->canBeSpatialized(Lcom/google/android/exoplr2avp/audio/AudioAttributes;Lcom/google/android/exoplr2avp/Format;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2529
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static isDolbyAudio(Lcom/google/android/exoplr2avp/Format;)Z
    .locals 4

    .line 3005
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3008
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "audio/ac4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "audio/eac3-joc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static isSupported(IZ)Z
    .locals 1

    .line 2868
    invoke-static {p0}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->getFormatSupport(I)I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic lambda$MtqfMvN5mbMB33tsjju5DPdFkP8(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;Lcom/google/android/exoplr2avp/Format;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->isAudioFormatWithinAudioChannelCountConstraints(Lcom/google/android/exoplr2avp/Format;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$selectTextTrack$4(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;ILcom/google/android/exoplr2avp/source/TrackGroup;[I)Ljava/util/List;
    .locals 0

    .line 2560
    invoke-static {p2, p3, p0, p4, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TextTrackInfo;->createForTrackGroup(ILcom/google/android/exoplr2avp/source/TrackGroup;Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;[ILjava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$selectVideoTrack$2(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;[IILcom/google/android/exoplr2avp/source/TrackGroup;[I)Ljava/util/List;
    .locals 0

    .line 2445
    aget p1, p1, p2

    invoke-static {p2, p3, p0, p4, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$VideoTrackInfo;->createForTrackGroup(ILcom/google/android/exoplr2avp/source/TrackGroup;Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;[II)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 2073
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2074
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 2075
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int v1, p0, p1

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic lambda$static$1(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static maybeConfigureRenderersForTunneling(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lcom/google/android/exoplr2avp/RendererConfiguration;[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 2792
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_5

    .line 2793
    invoke-virtual {p0, v2}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v5

    .line 2794
    aget-object v7, p3, v2

    if-eq v5, v6, :cond_0

    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    :cond_0
    if-eqz v7, :cond_4

    .line 2797
    aget-object v8, p1, v2

    .line 2798
    invoke-virtual {p0, v2}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v9

    .line 2797
    invoke-static {v8, v9, v7}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->rendererSupportsTunneling([[ILcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-ne v5, v6, :cond_2

    if-eq v4, v1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    if-eq v3, v1, :cond_3

    :goto_1
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    move v3, v2

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    :goto_3
    if-eq v4, v1, :cond_6

    if-eq v3, v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    .line 2819
    new-instance p0, Lcom/google/android/exoplr2avp/RendererConfiguration;

    invoke-direct {p0, v6}, Lcom/google/android/exoplr2avp/RendererConfiguration;-><init>(Z)V

    .line 2821
    aput-object p0, p2, v4

    .line 2822
    aput-object p0, p2, v3

    :cond_7
    return-void
.end method

.method private maybeInvalidateForAudioChannelCountConstraints()V
    .locals 3

    .line 2667
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2668
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->deviceIsTV:Z

    if-nez v1, :cond_0

    sget v1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v1, :cond_0

    .line 2673
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->isSpatializationSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2674
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 2676
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->invalidate()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 2674
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected static normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2881
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method private static rendererSupportsTunneling([[ILcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2842
    :cond_0
    invoke-interface {p2}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplr2avp/source/TrackGroup;)I

    move-result p1

    const/4 v1, 0x0

    .line 2843
    :goto_0
    invoke-interface {p2}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2845
    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    aget v2, v2, v3

    .line 2846
    invoke-static {v2}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->getTunnelingSupport(I)I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private selectTracksForType(ILcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo<",
            "TT;>;>(I",
            "Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I",
            "Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo$Factory<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 2614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2615
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    .line 2617
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v5

    move/from16 v6, p1

    if-ne v6, v5, :cond_6

    .line 2618
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v5

    const/4 v7, 0x0

    .line 2619
    :goto_1
    iget v8, v5, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-ge v7, v8, :cond_6

    .line 2620
    invoke-virtual {v5, v7}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v8

    .line 2621
    aget-object v9, p3, v4

    aget-object v9, v9, v7

    move-object/from16 v10, p4

    .line 2622
    invoke-interface {v10, v4, v8, v9}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo$Factory;->create(ILcom/google/android/exoplr2avp/source/TrackGroup;[I)Ljava/util/List;

    move-result-object v9

    .line 2623
    iget v11, v8, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    new-array v11, v11, [Z

    const/4 v12, 0x0

    .line 2624
    :goto_2
    iget v13, v8, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v12, v13, :cond_5

    .line 2625
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;

    .line 2626
    invoke-virtual {v13}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;->getSelectionEligibility()I

    move-result v14

    .line 2627
    aget-boolean v15, v11, v12

    if-nez v15, :cond_4

    if-nez v14, :cond_0

    goto :goto_6

    :cond_0
    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 2632
    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    move/from16 v17, v2

    goto :goto_5

    .line 2634
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2635
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v12, 0x1

    move/from16 v3, v16

    .line 2636
    :goto_3
    iget v15, v8, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v3, v15, :cond_3

    .line 2637
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;

    .line 2638
    invoke-virtual {v15}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;->getSelectionEligibility()I

    move-result v0

    move/from16 v17, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 2639
    invoke-virtual {v13, v15}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;->isCompatibleForAdaptationWith(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2640
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 2641
    aput-boolean v0, v11, v3

    goto :goto_4

    :cond_2
    const/4 v0, 0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto :goto_3

    :cond_3
    move/from16 v17, v2

    move-object v13, v14

    .line 2646
    :goto_5
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_4
    :goto_6
    move/from16 v17, v2

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto :goto_2

    :cond_5
    move/from16 v17, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p2

    goto/16 :goto_1

    :cond_6
    move-object/from16 v10, p4

    move/from16 v17, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto/16 :goto_0

    .line 2651
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    move-object/from16 v0, p5

    .line 2654
    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2655
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 2656
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 2657
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;

    iget v3, v3, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;->trackIndex:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    .line 2659
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;

    .line 2660
    new-instance v2, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;->trackGroup:Lcom/google/android/exoplr2avp/source/TrackGroup;

    invoke-direct {v2, v3, v1}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplr2avp/source/TrackGroup;[I)V

    iget v0, v0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;->rendererIndex:I

    .line 2662
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2660
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private setParametersInternal(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 2

    .line 2254
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2256
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2257
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2258
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    .line 2259
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 2262
    iget-boolean p1, p1, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->context:Landroid/content/Context;

    if-nez p1, :cond_1

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 2263
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->invalidate()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 2259
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public buildUponParameters()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 1

    .line 2245
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;
    .locals 2

    .line 2193
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2194
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2195
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic getParameters()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public isSetParametersSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$selectAudioTrack$3$DefaultTrackSelector(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;ZILcom/google/android/exoplr2avp/source/TrackGroup;[I)Ljava/util/List;
    .locals 6

    .line 2487
    new-instance v5, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$MtqfMvN5mbMB33tsjju5DPdFkP8;

    invoke-direct {v5, p0}, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$MtqfMvN5mbMB33tsjju5DPdFkP8;-><init>(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;)V

    move v0, p3

    move-object v1, p4

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$AudioTrackInfo;->createForTrackGroup(ILcom/google/android/exoplr2avp/source/TrackGroup;Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;[IZLcom/google/common/base/Predicate;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 3

    .line 2183
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2184
    :try_start_0
    sget v1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v1, :cond_0

    .line 2185
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->release()V

    .line 2187
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2188
    invoke-super {p0}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector;->release()V

    return-void

    :catchall_0
    move-exception v1

    .line 2187
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected selectAllTracks(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;)[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 2365
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    .line 2366
    new-array v1, v0, [Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;

    .line 2371
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->selectVideoTrack(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2377
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;

    aput-object v2, v1, v3

    .line 2382
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->selectAudioTrack(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 2388
    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;

    aput-object v3, v1, v2

    :cond_1
    const/4 v2, 0x0

    if-nez p3, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    .line 2395
    :cond_2
    iget-object v3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplr2avp/source/TrackGroup;

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;

    iget-object p3, p3, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;->tracks:[I

    aget p3, p3, v2

    invoke-virtual {v3, p3}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/exoplr2avp/Format;->language:Ljava/lang/String;

    .line 2398
    :goto_0
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->selectTextTrack(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 2400
    iget-object v3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;

    aput-object p3, v1, v3

    :cond_3
    :goto_1
    if-ge v2, v0, :cond_5

    .line 2404
    invoke-virtual {p1, v2}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result p3

    const/4 v3, 0x2

    if-eq p3, v3, :cond_4

    const/4 v3, 0x1

    if-eq p3, v3, :cond_4

    const/4 v3, 0x3

    if-eq p3, v3, :cond_4

    .line 2410
    invoke-virtual {p1, v2}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v3

    aget-object v4, p2, v2

    .line 2409
    invoke-virtual {p0, p3, v3, v4, p4}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->selectOtherTrack(ILcom/google/android/exoplr2avp/source/TrackGroupArray;[[ILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;

    move-result-object p3

    aput-object p3, v1, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method protected selectAudioTrack(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 2474
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 2475
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2476
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-lez v1, :cond_0

    const/4 p3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 2482
    new-instance v4, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$yorVMTTfbl45OVBtWE9xsFALKrQ;

    invoke-direct {v4, p0, p4, p3}, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$yorVMTTfbl45OVBtWE9xsFALKrQ;-><init>(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;Z)V

    sget-object v5, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$BZOCJO5T1N6d02shmnmDHlcxRc0;->INSTANCE:Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$BZOCJO5T1N6d02shmnmDHlcxRc0;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->selectTracksForType(ILcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected selectOtherTrack(ILcom/google/android/exoplr2avp/source/TrackGroupArray;[[ILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;)Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    move-object v2, p1

    move-object v4, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2586
    :goto_0
    iget v5, p2, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-ge v1, v5, :cond_3

    .line 2587
    invoke-virtual {p2, v1}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v5

    .line 2588
    aget-object v6, p3, v1

    const/4 v7, 0x0

    .line 2589
    :goto_1
    iget v8, v5, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v7, v8, :cond_2

    .line 2590
    aget v8, v6, v7

    iget-boolean v9, p4, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v8, v9}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2592
    invoke-virtual {v5, v7}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v8

    .line 2593
    new-instance v9, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$OtherTrackScore;

    aget v10, v6, v7

    invoke-direct {v9, v8, v10}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$OtherTrackScore;-><init>(Lcom/google/android/exoplr2avp/Format;I)V

    if-eqz v4, :cond_0

    .line 2594
    invoke-virtual {v9, v4}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$OtherTrackScore;->compareTo(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$OtherTrackScore;)I

    move-result v8

    if-lez v8, :cond_1

    :cond_0
    move-object v2, v5

    move v3, v7

    move-object v4, v9

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    goto :goto_2

    .line 2604
    :cond_4
    new-instance p1, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;

    const/4 p2, 0x1

    new-array p2, p2, [I

    aput v3, p2, v0

    invoke-direct {p1, v2, p2}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;-><init>(Lcom/google/android/exoplr2avp/source/TrackGroup;[I)V

    :goto_2
    return-object p1
.end method

.method protected selectTextTrack(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I",
            "Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 2555
    new-instance v4, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$8TE7yajX4LwHJI2Xu9gzg-39SDM;

    invoke-direct {v4, p3, p4}, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$8TE7yajX4LwHJI2Xu9gzg-39SDM;-><init>(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$Tvp-DR6WyqwrM3IC8wg6WdYvoWI;->INSTANCE:Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$Tvp-DR6WyqwrM3IC8wg6WdYvoWI;

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->selectTracksForType(ILcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected final selectTracks(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Timeline;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;",
            "Lcom/google/android/exoplr2avp/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/exoplr2avp/RendererConfiguration;",
            "[",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 2281
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2282
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->parameters:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    .line 2283
    iget-boolean v2, v1, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->spatializer:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    if-eqz v2, :cond_0

    .line 2288
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Looper;

    invoke-virtual {v2, p0, v3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->ensureInitialized(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;Landroid/os/Looper;)V

    .line 2290
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2291
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v0

    .line 2293
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->selectAllTracks(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;)[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;

    move-result-object p3

    .line 2299
    invoke-static {p1, v1, p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->applyTrackSelectionOverrides(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;)V

    .line 2300
    invoke-static {p1, v1, p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->applyLegacyRendererOverrides(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_3

    .line 2304
    invoke-virtual {p1, v3}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v5

    .line 2305
    invoke-virtual {v1, v3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v1, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 2306
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2307
    :cond_1
    aput-object v4, p3, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2312
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->trackSelectionFactory:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;

    .line 2314
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getBandwidthMeter()Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

    move-result-object v5

    .line 2313
    invoke-interface {v3, p3, v5, p4, p5}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;->createTrackSelections([Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Timeline;)[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    move-result-object p3

    .line 2319
    new-array p4, v0, [Lcom/google/android/exoplr2avp/RendererConfiguration;

    const/4 p5, 0x0

    :goto_1
    if-ge p5, v0, :cond_9

    .line 2321
    invoke-virtual {p1, p5}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    .line 2323
    invoke-virtual {v1, p5}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_5

    iget-object v5, v1, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_6

    .line 2326
    invoke-virtual {p1, p5}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    const/4 v5, -0x2

    if-eq v3, v5, :cond_7

    aget-object v3, p3, p5

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :cond_7
    :goto_4
    if-eqz v6, :cond_8

    .line 2328
    sget-object v3, Lcom/google/android/exoplr2avp/RendererConfiguration;->DEFAULT:Lcom/google/android/exoplr2avp/RendererConfiguration;

    goto :goto_5

    :cond_8
    move-object v3, v4

    :goto_5
    aput-object v3, p4, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 2332
    :cond_9
    iget-boolean p5, v1, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    if-eqz p5, :cond_a

    .line 2333
    invoke-static {p1, p2, p4, p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->maybeConfigureRenderersForTunneling(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lcom/google/android/exoplr2avp/RendererConfiguration;[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;)V

    .line 2337
    :cond_a
    invoke-static {p4, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 2290
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected selectVideoTrack(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 2440
    new-instance v4, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$q3dA-FA6dVkpJx-I_m2AJX_kkcc;

    invoke-direct {v4, p4, p3}, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$q3dA-FA6dVkpJx-I_m2AJX_kkcc;-><init>(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;[I)V

    sget-object v5, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$NL-Z0UfL0T6XBmdO3CnndxCMTrQ;->INSTANCE:Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$NL-Z0UfL0T6XBmdO3CnndxCMTrQ;

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->selectTracksForType(ILcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
    .locals 2

    .line 2216
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2217
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2218
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    .line 2219
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 2221
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->maybeInvalidateForAudioChannelCountConstraints()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 2219
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setParameters(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;)V
    .locals 0

    .line 2240
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->setParametersInternal(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method public setParameters(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2231
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->setParametersInternal(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method public setParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 3

    .line 2205
    instance-of v0, p1, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    if-eqz v0, :cond_0

    .line 2206
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->setParametersInternal(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;)V

    .line 2209
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$1;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->set(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    .line 2210
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->setParametersInternal(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method
