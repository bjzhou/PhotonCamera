.class public Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreService;
.super Lcmx;


# instance fields
.field public a:Lcnt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcmx;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcnm;Lcnk;)Lcmv;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreService;->b(Landroid/content/Context;)Lcnt;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcnt;->a(Lcnm;Lcnk;)Lcmv;

    move-result-object p1

    return-object p1
.end method

.method protected final declared-synchronized b(Landroid/content/Context;)Lcnt;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreService;->a:Lcnt;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lemj;

    const-class v0, Lcms;

    invoke-interface {p1, v0}, Lemj;->e(Ljava/lang/Class;)Leml;

    move-result-object p1

    check-cast p1, Lcms;

    invoke-interface {p1, p0}, Lcms;->d(Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreService;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreService;->a:Lcnt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
