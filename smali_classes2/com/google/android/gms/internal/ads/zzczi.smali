.class public final Lcom/google/android/gms/internal/ads/zzczi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgxi;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgxv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczi;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczi;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxm;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxm;->zzd()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzczg;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzczg;-><init>(Ljava/util/Map;)V

    return-object v1
.end method
