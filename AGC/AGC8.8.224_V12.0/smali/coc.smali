.class public final Lcoc;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;

.field private final h:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoc;->a:Loiw;

    iput-object p2, p0, Lcoc;->b:Loiw;

    iput-object p3, p0, Lcoc;->c:Loiw;

    iput-object p4, p0, Lcoc;->d:Loiw;

    iput-object p5, p0, Lcoc;->e:Loiw;

    iput-object p6, p0, Lcoc;->f:Loiw;

    iput-object p7, p0, Lcoc;->g:Loiw;

    iput-object p8, p0, Lcoc;->h:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcob;
    .locals 11

    iget-object v0, p0, Lcoc;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcoc;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcoc;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ldhi;

    iget-object v0, p0, Lcoc;->d:Loiw;

    check-cast v0, Lcmm;

    invoke-virtual {v0}, Lcmm;->a()Ljpl;

    move-result-object v5

    iget-object v0, p0, Lcoc;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljwb;

    iget-object v0, p0, Lcoc;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljuh;

    iget-object v0, p0, Lcoc;->g:Loiw;

    check-cast v0, Leqy;

    invoke-virtual {v0}, Leqy;->a()Lezx;

    move-result-object v8

    iget-object v0, p0, Lcoc;->h:Loiw;

    check-cast v0, Ldjb;

    invoke-virtual {v0}, Ldjb;->a()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;

    invoke-direct {v10}, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;-><init>()V

    new-instance v0, Lcob;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcob;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ldhi;Ljpl;Ljwb;Ljuh;Lezx;Ljava/lang/String;Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcoc;->a()Lcob;

    move-result-object v0

    return-object v0
.end method
