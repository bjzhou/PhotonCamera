.class public final Lcom/agc/glide/util/pool/FactoryPools;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/util/pool/FactoryPools$Factory;,
        Lcom/agc/glide/util/pool/FactoryPools$Resetter;,
        Lcom/agc/glide/util/pool/FactoryPools$FactoryPool;,
        Lcom/agc/glide/util/pool/FactoryPools$Poolable;
    }
.end annotation


# static fields
.field private static final DEFAULT_POOL_SIZE:I = 0x14

.field private static final EMPTY_RESETTER:Lcom/agc/glide/util/pool/FactoryPools$Resetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/util/pool/FactoryPools$Resetter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FactoryPools"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/glide/util/pool/FactoryPools$1;

    invoke-direct {v0}, Lcom/agc/glide/util/pool/FactoryPools$1;-><init>()V

    sput-object v0, Lcom/agc/glide/util/pool/FactoryPools;->EMPTY_RESETTER:Lcom/agc/glide/util/pool/FactoryPools$Resetter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static build(Landroidx/core/util/Pools$Pool;Lcom/agc/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/agc/glide/util/pool/FactoryPools$Poolable;",
            ">(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "Lcom/agc/glide/util/pool/FactoryPools$Factory<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/agc/glide/util/pool/FactoryPools;->emptyResetter()Lcom/agc/glide/util/pool/FactoryPools$Resetter;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/agc/glide/util/pool/FactoryPools;->build(Landroidx/core/util/Pools$Pool;Lcom/agc/glide/util/pool/FactoryPools$Factory;Lcom/agc/glide/util/pool/FactoryPools$Resetter;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method private static build(Landroidx/core/util/Pools$Pool;Lcom/agc/glide/util/pool/FactoryPools$Factory;Lcom/agc/glide/util/pool/FactoryPools$Resetter;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "Lcom/agc/glide/util/pool/FactoryPools$Factory<",
            "TT;>;",
            "Lcom/agc/glide/util/pool/FactoryPools$Resetter<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/util/pool/FactoryPools$FactoryPool;

    invoke-direct {v0, p0, p1, p2}, Lcom/agc/glide/util/pool/FactoryPools$FactoryPool;-><init>(Landroidx/core/util/Pools$Pool;Lcom/agc/glide/util/pool/FactoryPools$Factory;Lcom/agc/glide/util/pool/FactoryPools$Resetter;)V

    return-object v0
.end method

.method private static emptyResetter()Lcom/agc/glide/util/pool/FactoryPools$Resetter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/agc/glide/util/pool/FactoryPools$Resetter<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/util/pool/FactoryPools;->EMPTY_RESETTER:Lcom/agc/glide/util/pool/FactoryPools$Resetter;

    return-object v0
.end method

.method public static simple(ILcom/agc/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/agc/glide/util/pool/FactoryPools$Poolable;",
            ">(I",
            "Lcom/agc/glide/util/pool/FactoryPools$Factory<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    invoke-static {v0, p1}, Lcom/agc/glide/util/pool/FactoryPools;->build(Landroidx/core/util/Pools$Pool;Lcom/agc/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method public static threadSafe(ILcom/agc/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/agc/glide/util/pool/FactoryPools$Poolable;",
            ">(I",
            "Lcom/agc/glide/util/pool/FactoryPools$Factory<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    invoke-static {v0, p1}, Lcom/agc/glide/util/pool/FactoryPools;->build(Landroidx/core/util/Pools$Pool;Lcom/agc/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method public static threadSafe(ILcom/agc/glide/util/pool/FactoryPools$Factory;Lcom/agc/glide/util/pool/FactoryPools$Resetter;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/agc/glide/util/pool/FactoryPools$Poolable;",
            ">(I",
            "Lcom/agc/glide/util/pool/FactoryPools$Factory<",
            "TT;>;",
            "Lcom/agc/glide/util/pool/FactoryPools$Resetter<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    invoke-static {v0, p1, p2}, Lcom/agc/glide/util/pool/FactoryPools;->build(Landroidx/core/util/Pools$Pool;Lcom/agc/glide/util/pool/FactoryPools$Factory;Lcom/agc/glide/util/pool/FactoryPools$Resetter;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method public static threadSafeList()Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/agc/glide/util/pool/FactoryPools;->threadSafeList(I)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    return-object v0
.end method

.method public static threadSafeList(I)Landroidx/core/util/Pools$Pool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    new-instance p0, Lcom/agc/glide/util/pool/FactoryPools$2;

    invoke-direct {p0}, Lcom/agc/glide/util/pool/FactoryPools$2;-><init>()V

    new-instance v1, Lcom/agc/glide/util/pool/FactoryPools$3;

    invoke-direct {v1}, Lcom/agc/glide/util/pool/FactoryPools$3;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/agc/glide/util/pool/FactoryPools;->build(Landroidx/core/util/Pools$Pool;Lcom/agc/glide/util/pool/FactoryPools$Factory;Lcom/agc/glide/util/pool/FactoryPools$Resetter;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method
