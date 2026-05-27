.class public final Lbpd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lbyo;


# static fields
.field private static final e:Lbzp;


# instance fields
.field protected final a:Lbol;

.field protected final b:Landroid/content/Context;

.field public final c:Lbyn;

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final f:Lbyw;

.field private final g:Lbyv;

.field private final h:Lbzc;

.field private final i:Ljava/lang/Runnable;

.field private final j:Lbyl;

.field private k:Lbzp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lbzp;->b(Ljava/lang/Class;)Lbzp;

    move-result-object v0

    invoke-virtual {v0}, Lbzg;->N()V

    sput-object v0, Lbpd;->e:Lbzp;

    const-class v0, Lbxv;

    invoke-static {v0}, Lbzp;->b(Ljava/lang/Class;)Lbzp;

    move-result-object v0

    invoke-virtual {v0}, Lbzg;->N()V

    sget-object v0, Lbry;->b:Lbry;

    invoke-static {v0}, Lbzp;->c(Lbry;)Lbzp;

    move-result-object v0

    sget-object v1, Lbos;->d:Lbos;

    invoke-virtual {v0, v1}, Lbzg;->w(Lbos;)Lbzg;

    move-result-object v0

    check-cast v0, Lbzp;

    invoke-virtual {v0}, Lbzg;->L()Lbzg;

    move-result-object v0

    check-cast v0, Lbzp;

    return-void
.end method

.method public constructor <init>(Lbol;Lbyn;Lbyv;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lbyw;

    invoke-direct {v0}, Lbyw;-><init>()V

    iget-object v1, p1, Lbol;->f:Lbze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lbzc;

    invoke-direct {v1}, Lbzc;-><init>()V

    iput-object v1, p0, Lbpd;->h:Lbzc;

    new-instance v1, Lazo;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lazo;-><init>(Lbpd;I)V

    iput-object v1, p0, Lbpd;->i:Ljava/lang/Runnable;

    iput-object p1, p0, Lbpd;->a:Lbol;

    iput-object p2, p0, Lbpd;->c:Lbyn;

    iput-object p3, p0, Lbpd;->g:Lbyv;

    iput-object v0, p0, Lbpd;->f:Lbyw;

    iput-object p4, p0, Lbpd;->b:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Lbpc;

    invoke-direct {p4, p0, v0}, Lbpc;-><init>(Lbpd;Lbyw;)V

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p3, v0}, Labx;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lbym;

    invoke-direct {v0, p3, p4}, Lbym;-><init>(Landroid/content/Context;Lbyk;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lbyr;

    invoke-direct {v0}, Lbyr;-><init>()V

    :goto_0
    iput-object v0, p0, Lbpd;->j:Lbyl;

    iget-object p3, p1, Lbol;->e:Ljava/util/List;

    monitor-enter p3

    :try_start_0
    iget-object p4, p1, Lbol;->e:Ljava/util/List;

    invoke-interface {p4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p1, Lbol;->e:Ljava/util/List;

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcaw;->k()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {v1}, Lcaw;->i(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p2, p0}, Lbyn;->a(Lbyo;)V

    :goto_1
    invoke-interface {p2, v0}, Lbyn;->a(Lbyo;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p3, p1, Lbol;->b:Lboq;

    iget-object p3, p3, Lboq;->c:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lbpd;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p1, p1, Lbol;->b:Lboq;

    invoke-virtual {p1}, Lboq;->b()Lbzp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbpd;->l(Lbzp;)V

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot register already registered manager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lbpb;
    .locals 3

    new-instance v0, Lbpb;

    iget-object v1, p0, Lbpd;->a:Lbol;

    iget-object v2, p0, Lbpd;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lbpb;-><init>(Lbol;Lbpd;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public final b()Lbpb;
    .locals 2

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lbpd;->a(Ljava/lang/Class;)Lbpb;

    move-result-object v0

    sget-object v1, Lbpd;->e:Lbzp;

    invoke-virtual {v0, v1}, Lbpb;->b(Lbzg;)Lbpb;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lbpb;
    .locals 1

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lbpd;->a(Ljava/lang/Class;)Lbpb;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lbpb;
    .locals 1

    invoke-virtual {p0}, Lbpd;->c()Lbpb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbpb;->f(Ljava/lang/Object;)Lbpb;

    move-result-object p1

    return-object p1
.end method

.method final declared-synchronized e()Lbzp;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbpd;->k:Lbzp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(Lbzz;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lbpd;->n(Lbzz;)Z

    move-result v0

    invoke-interface {p1}, Lbzz;->c()Lbzk;

    move-result-object v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lbpd;->a:Lbol;

    iget-object v2, v0, Lbol;->e:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lbol;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbpd;

    invoke-virtual {v3, p1}, Lbpd;->n(Lbzz;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v2

    return-void

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lbzz;->k(Lbzk;)V

    invoke-interface {v1}, Lbzk;->c()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public final declared-synchronized g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbpd;->h:Lbzc;

    invoke-virtual {v0}, Lbzc;->g()V

    iget-object v0, p0, Lbpd;->h:Lbzc;

    iget-object v0, v0, Lbzc;->a:Ljava/util/Set;

    invoke-static {v0}, Lcaw;->f(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbzz;

    invoke-virtual {p0, v1}, Lbpd;->f(Lbzz;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbpd;->h:Lbzc;

    iget-object v0, v0, Lbzc;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lbpd;->f:Lbyw;

    iget-object v1, v0, Lbyw;->a:Ljava/util/Set;

    invoke-static {v1}, Lcaw;->f(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbzk;

    invoke-virtual {v0, v2}, Lbyw;->a(Lbzk;)Z

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lbyw;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lbpd;->c:Lbyn;

    invoke-interface {v0, p0}, Lbyn;->e(Lbyo;)V

    iget-object v0, p0, Lbpd;->c:Lbyn;

    iget-object v1, p0, Lbpd;->j:Lbyl;

    invoke-interface {v0, v1}, Lbyn;->e(Lbyo;)V

    iget-object v0, p0, Lbpd;->i:Ljava/lang/Runnable;

    invoke-static {}, Lcaw;->e()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lbpd;->a:Lbol;

    iget-object v1, v0, Lbol;->e:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v0, Lbol;->e:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lbol;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized h()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lbpd;->k()V

    iget-object v0, p0, Lbpd;->h:Lbzc;

    invoke-virtual {v0}, Lbzc;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lbpd;->j()V

    iget-object v0, p0, Lbpd;->h:Lbzc;

    invoke-virtual {v0}, Lbzc;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbpd;->f:Lbyw;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbyw;->c:Z

    iget-object v1, v0, Lbyw;->a:Ljava/util/Set;

    invoke-static {v1}, Lcaw;->f(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbzk;

    invoke-interface {v2}, Lbzk;->n()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lbzk;->f()V

    iget-object v3, v0, Lbyw;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized k()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbpd;->f:Lbyw;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lbyw;->c:Z

    iget-object v1, v0, Lbyw;->a:Ljava/util/Set;

    invoke-static {v1}, Lcaw;->f(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbzk;

    invoke-interface {v2}, Lbzk;->l()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lbzk;->n()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lbzk;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lbyw;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method protected final declared-synchronized l(Lbzp;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lbzg;->i()Lbzg;

    move-result-object p1

    check-cast p1, Lbzp;

    invoke-virtual {p1}, Lbzg;->P()V

    iput-object p1, p0, Lbpd;->k:Lbzp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized m(Lbzz;Lbzk;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbpd;->h:Lbzc;

    iget-object v0, v0, Lbzc;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lbpd;->f:Lbyw;

    iget-object v0, p1, Lbyw;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p1, Lbyw;->c:Z

    if-nez v0, :cond_0

    invoke-interface {p2}, Lbzk;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p2}, Lbzk;->c()V

    iget-object p1, p1, Lbyw;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized n(Lbzz;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lbzz;->c()Lbzk;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lbpd;->f:Lbyw;

    invoke-virtual {v2, v0}, Lbyw;->a(Lbzk;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbpd;->h:Lbzc;

    iget-object v0, v0, Lbzc;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lbzz;->k(Lbzk;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbpd;->f:Lbyw;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbpd;->g:Lbyv;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{tracker="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", treeNode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
