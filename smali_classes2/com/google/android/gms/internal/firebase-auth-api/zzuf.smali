.class final Lcom/google/android/gms/internal/firebase-auth-api/zzuf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzyg;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzyg;

.field final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzug;Lcom/google/android/gms/internal/firebase-auth-api/zzyg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzyg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzyg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyg;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaba;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    .line 2
    invoke-static {v1, p1, v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzvf;Lcom/google/android/gms/internal/firebase-auth-api/zzaba;Lcom/google/android/gms/internal/firebase-auth-api/zzxa;Lcom/google/android/gms/internal/firebase-auth-api/zzyf;)V

    return-void
.end method
