.class public final Leoa;
.super Ljava/lang/Object;

# interfaces
.implements Lfaz;
.implements Lfax;
.implements Lfav;
.implements Lfay;
.implements Lezf;
.implements Lezg;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;

.field public final d:Lfbz;

.field public final e:Ljava/lang/Object;

.field public f:I

.field private final g:Lhar;

.field private final h:Lmtc;

.field private final i:Ljwb;

.field private final j:Ljwb;

.field private final k:Ljwb;

.field private final l:Ljwb;

.field private final m:Ljwb;

.field private final n:Ljwb;

.field private final o:Ldhi;

.field private final p:Ljava/util/concurrent/Executor;

.field private final q:Lamp;

.field private r:Z

.field private final s:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/keycontrol/KeyController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leoa;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lhar;Landroid/content/Context;Lmtc;Ljwb;Ljwb;Ljwb;Ljwb;Ljwb;Ljwb;Ldhi;Lfbz;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmjy;->z()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Leoa;->b:Ljava/util/Set;

    invoke-static {}, Lmjy;->z()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Leoa;->c:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leoa;->e:Ljava/lang/Object;

    new-instance v0, Leny;

    invoke-direct {v0, p0}, Leny;-><init>(Leoa;)V

    iput-object v0, p0, Leoa;->s:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Leoa;->g:Lhar;

    iput-object p4, p0, Leoa;->i:Ljwb;

    iput-object p5, p0, Leoa;->j:Ljwb;

    iput-object p6, p0, Leoa;->k:Ljwb;

    iput-object p7, p0, Leoa;->l:Ljwb;

    iput-object p8, p0, Leoa;->m:Ljwb;

    iput-object p9, p0, Leoa;->n:Ljwb;

    iput-object p10, p0, Leoa;->o:Ldhi;

    iput-object p3, p0, Leoa;->h:Lmtc;

    iput-object p11, p0, Leoa;->d:Lfbz;

    iput-object p12, p0, Leoa;->p:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object p1

    iput-object p1, p0, Leoa;->q:Lamp;

    return-void
.end method

.method private final j(IZ)Z
    .locals 4

    sget-object v0, Lenw;->a:Lenw;

    sget-object v0, Lhaq;->a:Lhaq;

    iget-object v0, p0, Leoa;->g:Lhar;

    invoke-virtual {v0}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhaq;

    invoke-virtual {v0}, Lhaq;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    :pswitch_1
    return v2

    :pswitch_2
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Leoa;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Leoa;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lenz;

    invoke-interface {v2, p2}, Lenz;->f(Z)V

    goto :goto_0

    :cond_0
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    iget-object p1, p0, Leoa;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Leoa;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lenz;

    invoke-interface {v2, p2}, Lenz;->e(Z)V

    goto :goto_1

    :cond_2
    monitor-exit p1

    :goto_2
    return v1

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :pswitch_3
    iget-object p1, p0, Leoa;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Leoa;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lenz;

    invoke-interface {v2, p2}, Lenz;->d(Z)V

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    monitor-exit p1

    return v2

    :catchall_2
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lenz;)V
    .locals 3

    iget-object v0, p0, Leoa;->p:Ljava/util/concurrent/Executor;

    new-instance v1, Lekf;

    const/16 v2, 0x9

    invoke-direct {v1, p0, p1, v2}, Lekf;-><init>(Leoa;Lenz;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lenz;)V
    .locals 3

    iget-object v0, p0, Leoa;->p:Ljava/util/concurrent/Executor;

    new-instance v1, Lekf;

    const/16 v2, 0xa

    invoke-direct {v1, p0, p1, v2}, Lekf;-><init>(Leoa;Lenz;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bN()V
    .locals 3

    iget-object v0, p0, Leoa;->h:Lmtc;

    iget-object v1, p0, Leoa;->i:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lenw;->a:Lenw;

    invoke-interface {v0, v1, v2}, Lmtc;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Leoa;->h:Lmtc;

    iget-object v1, p0, Leoa;->j:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lenw;->b:Lenw;

    invoke-interface {v0, v1, v2}, Lmtc;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Leoa;->h:Lmtc;

    iget-object v1, p0, Leoa;->k:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lenw;->c:Lenw;

    invoke-interface {v0, v1, v2}, Lmtc;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Leoa;->h:Lmtc;

    iget-object v1, p0, Leoa;->l:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lenw;->d:Lenw;

    invoke-interface {v0, v1, v2}, Lmtc;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Leoa;->h:Lmtc;

    iget-object v1, p0, Leoa;->m:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lenw;->e:Lenw;

    invoke-interface {v0, v1, v2}, Lmtc;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Leoa;->h:Lmtc;

    iget-object v1, p0, Leoa;->n:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lenw;->f:Lenw;

    invoke-interface {v0, v1, v2}, Lmtc;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final bO()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.apps.camera.remotecontrol.remotekey"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Leoa;->q:Lamp;

    iget-object v2, p0, Leoa;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lamp;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Leoa;->q:Lamp;

    iget-object v1, p0, Leoa;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lamp;->c(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final f(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v0, 0x16

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v1}, Leoa;->h(Z)V

    return v1

    :cond_0
    iget-object v0, p0, Leoa;->o:Ldhi;

    sget-object v2, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->c()V

    iget v0, p0, Leoa;->f:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_2

    iput-boolean v3, p0, Leoa;->r:Z

    :cond_2
    iget p2, p0, Leoa;->f:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    iget-boolean p2, p0, Leoa;->r:Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/16 p2, 0x18

    if-eq p1, p2, :cond_5

    const/16 p2, 0x19

    if-eq p1, p2, :cond_5

    const/16 p2, 0x1b

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    :goto_0
    invoke-direct {p0, p1, v1}, Leoa;->j(IZ)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v1
.end method

.method public final g(I)V
    .locals 1

    iput p1, p0, Leoa;->f:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Leoa;->r:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Leoa;->r:Z

    return-void
.end method

.method public final h(Z)V
    .locals 3

    iget-object v0, p0, Leoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leoa;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lenz;

    invoke-interface {v2, p1}, Lenz;->a(Z)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final i(I)Z
    .locals 4

    const/16 v0, 0x16

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v2}, Leoa;->h(Z)V

    return v1

    :cond_0
    iget-object v0, p0, Leoa;->o:Ldhi;

    sget-object v3, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->c()V

    iget v0, p0, Leoa;->f:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    iget-boolean v0, p0, Leoa;->r:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    const/16 v0, 0x19

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    invoke-direct {p0, p1, v2}, Leoa;->j(IZ)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v1
.end method
