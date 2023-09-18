.class public Lcom/secondfury/nativetoolkit/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static LastLocation:Landroid/location/Location;


# instance fields
.field private locationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 6

    const-string v0, "location"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/secondfury/nativetoolkit/Location;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    move-object v5, p0

    .line 17
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 18
    iget-object v0, p0, Lcom/secondfury/nativetoolkit/Location;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 19
    iget-object v0, p0, Lcom/secondfury/nativetoolkit/Location;->locationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    .line 25
    sput-object p1, Lcom/secondfury/nativetoolkit/Location;->LastLocation:Landroid/location/Location;

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
