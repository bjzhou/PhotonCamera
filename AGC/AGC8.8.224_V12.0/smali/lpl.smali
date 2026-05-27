.class public final Llpl;
.super Ljava/lang/Object;

# interfaces
.implements Llpn;


# static fields
.field public static volatile a:Lmqp;


# instance fields
.field public final b:Z

.field public final c:Llqe;

.field public final d:Llqe;

.field private final e:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Llpl;->a:Lmqp;

    return-void
.end method

.method public constructor <init>(ZLjava/util/Set;Llqe;Llqe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Llpl;->b:Z

    iput-object p2, p0, Llpl;->e:Ljava/util/Set;

    iput-object p3, p0, Llpl;->c:Llqe;

    iput-object p4, p0, Llpl;->d:Llqe;

    return-void
.end method


# virtual methods
.method public final a(Llon;Ljava/lang/String;)Llpp;
    .locals 8

    sget-object v0, Llpp;->i:Llhe;

    iget-boolean v1, p0, Llpl;->b:Z

    new-instance v2, Llpo;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v1, v3}, Llpo;-><init>(Llon;Ljava/lang/String;ZI)V

    const-string v1, ""

    invoke-static {p2, v1}, Lmqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lmqq;

    move-result-object v1

    iget-object v3, v0, Llhe;->a:Ljava/lang/Object;

    check-cast v3, Lmuq;

    invoke-virtual {v3, v1}, Lmuq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llpp;

    const/4 v4, 0x1

    if-nez v3, :cond_3

    invoke-interface {v2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v0, Llhe;->a:Ljava/lang/Object;

    check-cast v0, Llpa;

    invoke-virtual {v0, v1, v3}, Llpa;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llpp;

    if-nez v0, :cond_2

    iget-object p1, p1, Llon;->c:Landroid/content/Context;

    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    move-object v2, v3

    check-cast v2, Llpp;

    invoke-direct {v0, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Llpp;)V

    sget-object v5, Llpy;->c:Llpa;

    invoke-virtual {v5, v1, v0}, Llpa;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Llpy;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Llpy;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v5, Llpy;->b:Z

    if-nez v5, :cond_0

    new-instance v5, Llpy;

    invoke-direct {v5}, Llpy;-><init>()V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.google.android.gms.phenotype.UPDATE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    sput-boolean v4, Llpy;->b:Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    new-instance p1, Lloq;

    const/4 v0, 0x3

    invoke-direct {p1, v2, v0}, Lloq;-><init>(Llpp;I)V

    sget-object v0, Llpt;->a:Llpa;

    invoke-virtual {v0, v1, p1}, Llpa;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v3, v0

    goto :goto_1

    :cond_3
    :goto_1
    check-cast v3, Llpp;

    iget-boolean p1, v3, Llpp;->e:Z

    const-string p1, "Package %s cannot be registered both with and without stickyAccountSupport"

    invoke-static {v4, p1, p2}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v3
.end method
