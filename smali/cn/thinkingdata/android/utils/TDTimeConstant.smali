.class public Lcn/thinkingdata/android/utils/TDTimeConstant;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/thinkingdata/android/utils/ITime;


# instance fields
.field private final mTimeString:Ljava/lang/String;

.field private final mZoneOffset:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/thinkingdata/android/utils/TDTimeConstant;->mTimeString:Ljava/lang/String;

    iput-object p2, p0, Lcn/thinkingdata/android/utils/TDTimeConstant;->mZoneOffset:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/utils/TDTimeConstant;->mTimeString:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneOffset()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/utils/TDTimeConstant;->mZoneOffset:Ljava/lang/Double;

    return-object v0
.end method
