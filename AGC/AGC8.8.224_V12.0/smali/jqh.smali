.class public final Ljqh;
.super Ljsg;


# instance fields
.field public final synthetic a:Ljqi;

.field private volatile b:I


# direct methods
.method public constructor <init>(Ljqi;)V
    .locals 0

    iput-object p1, p0, Ljqh;->a:Ljqi;

    invoke-direct {p0}, Ljsg;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Ljqh;->b:I

    return-void
.end method

.method private final m(Ljava/lang/Runnable;)Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Ljqh;->b:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljqh;->a:Ljqi;

    invoke-static {v1}, Ljtm;->a(Landroid/content/Context;)Ljtm;

    move-result-object v1

    invoke-virtual {v1}, Ljtm;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljqh;->a:Ljqi;

    const-string v3, "com.google.android.wearable.app.cn"

    invoke-static {v1, v0, v3}, Ljji;->e(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Ljqh;->b:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljqh;->a:Ljqi;

    invoke-static {v1, v0}, Ljji;->d(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v0, p0, Ljqh;->b:I

    :goto_0
    iget-object v0, p0, Ljqh;->a:Ljqi;

    iget-object v1, v0, Ljqi;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljqh;->a:Ljqi;

    iget-boolean v3, v0, Ljqi;->d:Z

    if-eqz v3, :cond_2

    monitor-exit v1

    return v2

    :cond_2
    iget-object v0, v0, Ljqi;->a:Ljqg;

    invoke-virtual {v0, p1}, Ljqg;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller is not GooglePlayServices; caller UID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WearableLS"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public final b(Ljqx;)V
    .locals 2

    new-instance v0, Ljoq;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Ljoq;-><init>(Ljqh;Ljqx;I)V

    invoke-direct {p0, v0}, Ljqh;->m(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    new-instance v0, Liwu;

    const/16 v1, 0x12

    invoke-direct {v0, p1, v1}, Liwu;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    iget v1, p1, Lcom/google/android/gms/common/data/DataHolder;->h:I

    invoke-direct {p0, v0}, Ljqh;->m(Ljava/lang/Runnable;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0
.end method

.method public final d(Ljsp;)V
    .locals 2

    new-instance v0, Ljoq;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Ljoq;-><init>(Ljqh;Ljsp;I)V

    invoke-direct {p0, v0}, Ljqh;->m(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e(Ljsr;)V
    .locals 2

    new-instance v0, Liwu;

    const/16 v1, 0x11

    invoke-direct {v0, p1, v1}, Liwu;-><init>(Ljsr;I)V

    iget-object v1, p1, Ljsr;->b:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, v1, Lcom/google/android/gms/common/data/DataHolder;->h:I

    invoke-direct {p0, v0}, Ljqh;->m(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Ljsr;->b:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    return-void
.end method

.method public final f(Ljsp;Ljsc;)V
    .locals 2

    new-instance v0, Ljoq;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Ljoq;-><init>(Ljsp;Ljsc;I)V

    invoke-direct {p0, v0}, Ljqh;->m(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g()V
    .locals 2

    new-instance v0, Lhck;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    invoke-direct {p0, v0}, Ljqh;->m(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final h()V
    .locals 2

    new-instance v0, Lhck;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    invoke-direct {p0, v0}, Ljqh;->m(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i()V
    .locals 2

    new-instance v0, Lhck;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    invoke-direct {p0, v0}, Ljqh;->m(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j()V
    .locals 2

    new-instance v0, Lhck;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    invoke-direct {p0, v0}, Ljqh;->m(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final k()V
    .locals 2

    new-instance v0, Lhck;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    invoke-direct {p0, v0}, Ljqh;->m(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final l()V
    .locals 2

    new-instance v0, Lhck;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lhck;-><init>(I)V

    invoke-direct {p0, v0}, Ljqh;->m(Ljava/lang/Runnable;)Z

    return-void
.end method
