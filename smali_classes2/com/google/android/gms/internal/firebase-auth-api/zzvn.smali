.class final Lcom/google/android/gms/internal/firebase-auth-api/zzvn;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzyb;
.source "com.google.firebase:firebase-auth@@21.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrm;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/PhoneMultiFactorAssertion;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyb;-><init>(I)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzrm;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;->zza()Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzrm;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrm;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "finalizeMfaEnrollment"

    return-object v0
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvn;->zzd:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvn;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzzr;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwy;->zzN(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzzr;)Lcom/google/firebase/auth/internal/zzx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvn;->zzf:Ljava/lang/Object;

    .line 2
    check-cast v1, Lcom/google/firebase/auth/internal/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvn;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzzy;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/auth/internal/zzg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzzy;Lcom/google/firebase/auth/FirebaseUser;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyb;->zzm(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzxb;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzya;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzya;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzyb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyb;->zzv:Lcom/google/android/gms/internal/firebase-auth-api/zzya;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrm;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvn;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzxy;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxb;->zzh(Lcom/google/android/gms/internal/firebase-auth-api/zzrm;Lcom/google/android/gms/internal/firebase-auth-api/zzwz;)V

    return-void
.end method
