.class public final Lbbf;
.super Ljava/lang/Object;

# interfaces
.implements Lbab;
.implements Layc;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Lazd;

.field public final c:Ljava/lang/Object;

.field d:Lbbx;

.field final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/Set;

.field public final h:Lbac;

.field public i:Lbbe;

.field public final j:Lva;

.field private final k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgDispatcher"

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbf;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbbf;->k:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbbf;->c:Ljava/lang/Object;

    invoke-static {p1}, Lazd;->e(Landroid/content/Context;)Lazd;

    move-result-object p1

    iput-object p1, p0, Lbbf;->b:Lazd;

    iget-object v0, p1, Lazd;->k:Lva;

    iput-object v0, p0, Lbbf;->j:Lva;

    const/4 v0, 0x0

    iput-object v0, p0, Lbbf;->d:Lbbx;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbbf;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbbf;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbbf;->f:Ljava/util/Map;

    new-instance v0, Lbad;

    iget-object v1, p1, Lazd;->i:Lbbc;

    invoke-direct {v0, v1, p0}, Lbad;-><init>(Lbbc;Lbab;)V

    iput-object v0, p0, Lbbf;->h:Lbac;

    iget-object p1, p1, Lazd;->f:Layp;

    invoke-virtual {p1, p0}, Layp;->b(Layc;)V

    return-void
.end method


# virtual methods
.method public final a(Lbbx;Z)V
    .locals 5

    iget-object p2, p0, Lbbf;->c:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lbbf;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcj;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbbf;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbf;->h:Lbac;

    iget-object v1, p0, Lbbf;->g:Ljava/util/Set;

    invoke-interface {v0, v1}, Lbac;->a(Ljava/lang/Iterable;)V

    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lbbf;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laxj;

    iget-object v0, p0, Lbbf;->d:Lbbx;

    invoke-virtual {p1, v0}, Lbbx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbbf;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lbbf;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbx;

    iput-object v0, p0, Lbbf;->d:Lbbx;

    iget-object v0, p0, Lbbf;->i:Lbbe;

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxj;

    iget-object v1, p0, Lbbf;->i:Lbbe;

    iget v2, v0, Laxj;->a:I

    iget v3, v0, Laxj;->b:I

    iget-object v4, v0, Laxj;->c:Landroid/app/Notification;

    invoke-interface {v1, v2, v3, v4}, Lbbe;->c(IILandroid/app/Notification;)V

    iget-object v1, p0, Lbbf;->i:Lbbe;

    iget v0, v0, Laxj;->a:I

    invoke-interface {v1, v0}, Lbbe;->a(I)V

    :cond_2
    iget-object v0, p0, Lbbf;->i:Lbbe;

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing Notification (id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Laxj;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", workSpecId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", notificationType: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Laxj;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget p1, p2, Laxj;->a:I

    invoke-interface {v0, p1}, Lbbe;->a(I)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "KEY_NOTIFICATION_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_GENERATION"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Lbbx;

    invoke-direct {v5, v3, v4}, Lbbx;-><init>(Ljava/lang/String;I)V

    const-string v3, "KEY_NOTIFICATION"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    invoke-static {}, Laxq;->a()Laxq;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lbbf;->i:Lbbe;

    if-eqz v3, :cond_2

    new-instance v3, Laxj;

    invoke-direct {v3, v0, p1, v2}, Laxj;-><init>(ILandroid/app/Notification;I)V

    iget-object v4, p0, Lbbf;->e:Ljava/util/Map;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lbbf;->d:Lbbx;

    if-nez v3, :cond_0

    iput-object v5, p0, Lbbf;->d:Lbbx;

    iget-object v1, p0, Lbbf;->i:Lbbe;

    invoke-interface {v1, v0, v2, p1}, Lbbe;->c(IILandroid/app/Notification;)V

    return-void

    :cond_0
    iget-object v3, p0, Lbbf;->i:Lbbe;

    invoke-interface {v3, v0, p1}, Lbbe;->b(ILandroid/app/Notification;)V

    if-eqz v2, :cond_2

    iget-object p1, p0, Lbbf;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxj;

    iget v0, v0, Laxj;->b:I

    or-int/2addr v1, v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lbbf;->e:Ljava/util/Map;

    iget-object v0, p0, Lbbf;->d:Lbbx;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laxj;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lbbf;->i:Lbbe;

    iget v2, p1, Laxj;->a:I

    iget-object p1, p1, Laxj;->c:Landroid/app/Notification;

    invoke-interface {v0, v2, v1, p1}, Lbbe;->c(IILandroid/app/Notification;)V

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lbbf;->i:Lbbe;

    iget-object v0, p0, Lbbf;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbbf;->h:Lbac;

    invoke-interface {v1}, Lbac;->b()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbbf;->b:Lazd;

    iget-object v0, v0, Lazd;->f:Layp;

    invoke-virtual {v0, p0}, Layp;->c(Layc;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final e(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcj;

    iget-object v1, v0, Lbcj;->a:Ljava/lang/String;

    invoke-static {}, Laxq;->a()Laxq;

    iget-object v1, p0, Lbbf;->b:Lazd;

    invoke-static {v0}, Lbbi;->b(Lbcj;)Lbbx;

    move-result-object v0

    iget-object v2, v1, Lazd;->k:Lva;

    new-instance v3, Lbdr;

    new-instance v4, Lbkb;

    invoke-direct {v4, v0}, Lbkb;-><init>(Lbbx;)V

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v1, v4, v0, v5}, Lbdr;-><init>(Lazd;Lbkb;Z[B)V

    invoke-static {v2, v3}, Lbdl;->b(Lva;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
