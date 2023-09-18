.class public interface abstract Lcom/google/android/exoplr2avp/upstream/Allocator;
.super Ljava/lang/Object;
.source "Allocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/upstream/Allocator$AllocationNode;
    }
.end annotation


# virtual methods
.method public abstract allocate()Lcom/google/android/exoplr2avp/upstream/Allocation;
.end method

.method public abstract getIndividualAllocationLength()I
.end method

.method public abstract getTotalBytesAllocated()I
.end method

.method public abstract release(Lcom/google/android/exoplr2avp/upstream/Allocation;)V
.end method

.method public abstract release(Lcom/google/android/exoplr2avp/upstream/Allocator$AllocationNode;)V
.end method

.method public abstract trim()V
.end method
