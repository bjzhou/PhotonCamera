.class public final Lazg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final a:Ljava/lang/String;

.field public static final synthetic j:I


# instance fields
.field final b:Landroid/content/Context;

.field public final c:Lbcj;

.field public d:Laxp;

.field public volatile e:Z

.field final f:Lbej;

.field public final g:Lbej;

.field h:Ldr;

.field final i:Lva;

.field private final k:Ljava/lang/String;

.field private final l:Laxd;

.field private final m:Lbbd;

.field private final n:Landroidx/work/impl/WorkDatabase;

.field private final o:Lbck;

.field private final p:Lbbj;

.field private final q:Ljava/util/List;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lazg;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Llij;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldr;->c()Ldr;

    move-result-object p2

    iput-object p2, p0, Lazg;->h:Ldr;

    invoke-static {}, Lbej;->g()Lbej;

    move-result-object p2

    iput-object p2, p0, Lazg;->f:Lbej;

    invoke-static {}, Lbej;->g()Lbej;

    move-result-object p2

    iput-object p2, p0, Lazg;->g:Lbej;

    iget-object p2, p1, Llij;->e:Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    iput-object p2, p0, Lazg;->b:Landroid/content/Context;

    iget-object p2, p1, Llij;->c:Ljava/lang/Object;

    check-cast p2, Lva;

    iput-object p2, p0, Lazg;->i:Lva;

    iget-object p2, p1, Llij;->a:Ljava/lang/Object;

    iput-object p2, p0, Lazg;->m:Lbbd;

    iget-object p2, p1, Llij;->d:Ljava/lang/Object;

    check-cast p2, Lbcj;

    iput-object p2, p0, Lazg;->c:Lbcj;

    iget-object p2, p2, Lbcj;->a:Ljava/lang/String;

    iput-object p2, p0, Lazg;->k:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, Lazg;->d:Laxp;

    iget-object p2, p1, Llij;->g:Ljava/lang/Object;

    check-cast p2, Laxd;

    iput-object p2, p0, Lazg;->l:Laxd;

    iget-object p2, p1, Llij;->f:Ljava/lang/Object;

    check-cast p2, Landroidx/work/impl/WorkDatabase;

    iput-object p2, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p2}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object p3

    iput-object p3, p0, Lazg;->o:Lbck;

    invoke-virtual {p2}, Landroidx/work/impl/WorkDatabase;->w()Lbbj;

    move-result-object p2

    iput-object p2, p0, Lazg;->p:Lbbj;

    iget-object p1, p1, Llij;->b:Ljava/lang/Object;

    iput-object p1, p0, Lazg;->q:Ljava/util/List;

    return-void
.end method

.method private final d()V
    .locals 5

    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->m()V

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lazg;->o:Lbck;

    iget-object v2, p0, Lazg;->k:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lbck;->k(ILjava/lang/String;)V

    iget-object v1, p0, Lazg;->o:Lbck;

    iget-object v2, p0, Lazg;->k:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lbck;->f(Ljava/lang/String;J)V

    iget-object v1, p0, Lazg;->o:Lbck;

    iget-object v2, p0, Lazg;->k:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Lbck;->j(Ljava/lang/String;J)V

    iget-object v1, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lapt;->o()V

    invoke-direct {p0, v0}, Lazg;->f(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lapt;->o()V

    invoke-direct {p0, v0}, Lazg;->f(Z)V

    throw v1
.end method

.method private final e()V
    .locals 5

    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->m()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lazg;->o:Lbck;

    iget-object v2, p0, Lazg;->k:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lbck;->f(Ljava/lang/String;J)V

    iget-object v1, p0, Lazg;->o:Lbck;

    iget-object v2, p0, Lazg;->k:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lbck;->k(ILjava/lang/String;)V

    iget-object v1, p0, Lazg;->o:Lbck;

    iget-object v2, p0, Lazg;->k:Ljava/lang/String;

    move-object v4, v1

    check-cast v4, Lbcy;

    iget-object v4, v4, Lbcy;->a:Lapt;

    invoke-virtual {v4}, Lapt;->l()V

    move-object v4, v1

    check-cast v4, Lbcy;

    iget-object v4, v4, Lbcy;->e:Laqa;

    invoke-virtual {v4}, Laqa;->e()Larf;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lare;->g(ILjava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lbcy;

    iget-object v2, v2, Lbcy;->a:Lapt;

    invoke-virtual {v2}, Lapt;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v4}, Larf;->a()I

    move-object v2, v1

    check-cast v2, Lbcy;

    iget-object v2, v2, Lbcy;->a:Lapt;

    invoke-virtual {v2}, Lapt;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object v2, v1

    check-cast v2, Lbcy;

    iget-object v2, v2, Lbcy;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    check-cast v1, Lbcy;

    iget-object v1, v1, Lbcy;->e:Laqa;

    invoke-virtual {v1, v4}, Laqa;->g(Larf;)V

    iget-object v1, p0, Lazg;->o:Lbck;

    iget-object v2, p0, Lazg;->k:Ljava/lang/String;

    move-object v4, v1

    check-cast v4, Lbcy;

    iget-object v4, v4, Lbcy;->a:Lapt;

    invoke-virtual {v4}, Lapt;->l()V

    move-object v4, v1

    check-cast v4, Lbcy;

    iget-object v4, v4, Lbcy;->c:Laqa;

    invoke-virtual {v4}, Laqa;->e()Larf;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lare;->g(ILjava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lbcy;

    iget-object v2, v2, Lbcy;->a:Lapt;

    invoke-virtual {v2}, Lapt;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v4}, Larf;->a()I

    move-object v2, v1

    check-cast v2, Lbcy;

    iget-object v2, v2, Lbcy;->a:Lapt;

    invoke-virtual {v2}, Lapt;->q()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    move-object v2, v1

    check-cast v2, Lbcy;

    iget-object v2, v2, Lbcy;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    check-cast v1, Lbcy;

    iget-object v1, v1, Lbcy;->c:Laqa;

    invoke-virtual {v1, v4}, Laqa;->g(Larf;)V

    iget-object v1, p0, Lazg;->o:Lbck;

    iget-object v2, p0, Lazg;->k:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Lbck;->j(Ljava/lang/String;J)V

    iget-object v1, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lapt;->q()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v1, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lapt;->o()V

    invoke-direct {p0, v0}, Lazg;->f(Z)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_5
    move-object v3, v1

    check-cast v3, Lbcy;

    iget-object v3, v3, Lbcy;->a:Lapt;

    invoke-virtual {v3}, Lapt;->o()V

    check-cast v1, Lbcy;

    iget-object v1, v1, Lbcy;->c:Laqa;

    invoke-virtual {v1, v4}, Laqa;->g(Larf;)V

    throw v2

    :catchall_1
    move-exception v2

    move-object v3, v1

    check-cast v3, Lbcy;

    iget-object v3, v3, Lbcy;->a:Lapt;

    invoke-virtual {v3}, Lapt;->o()V

    check-cast v1, Lbcy;

    iget-object v1, v1, Lbcy;->e:Laqa;

    invoke-virtual {v1, v4}, Laqa;->g(Larf;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    iget-object v2, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lapt;->o()V

    invoke-direct {p0, v0}, Lazg;->f(Z)V

    throw v1
.end method

.method private final f(Z)V
    .locals 5

    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->m()V

    :try_start_0
    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v0

    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lbcy;

    iget-object v3, v3, Lbcy;->a:Lapt;

    invoke-virtual {v3}, Lapt;->l()V

    check-cast v0, Lbcy;

    iget-object v0, v0, Lbcy;->a:Lapt;

    invoke-static {v0, v1, v2}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lapy;->j()V

    if-nez v3, :cond_1

    iget-object v0, p0, Lazg;->b:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v1, v2}, Lbdn;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lazg;->o:Lbck;

    iget-object v1, p0, Lazg;->k:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lbck;->k(ILjava/lang/String;)V

    iget-object v0, p0, Lazg;->o:Lbck;

    iget-object v1, p0, Lazg;->k:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Lbck;->j(Ljava/lang/String;J)V

    :cond_2
    iget-object v0, p0, Lazg;->d:Laxp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lazg;->m:Lbbd;

    iget-object v1, p0, Lazg;->k:Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Layp;

    iget-object v2, v2, Layp;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    check-cast v0, Layp;

    iget-object v0, v0, Layp;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    :try_start_4
    iget-object v0, p0, Lazg;->m:Lbbd;

    iget-object v1, p0, Lazg;->k:Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Layp;

    iget-object v2, v2, Layp;->f:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    move-object v3, v0

    check-cast v3, Layp;

    iget-object v3, v3, Layp;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Layp;

    invoke-virtual {v0}, Layp;->d()V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->q()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->o()V

    iget-object v0, p0, Lazg;->f:Lbej;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbej;->h(Ljava/lang/Object;)V

    return-void

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lapy;->j()V

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->o()V

    throw p1
.end method

.method private final g()V
    .locals 3

    iget-object v0, p0, Lazg;->o:Lbck;

    iget-object v1, p0, Lazg;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbck;->h(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Laxq;->a()Laxq;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lazg;->f(Z)V

    return-void

    :cond_0
    invoke-static {}, Laxq;->a()Laxq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lazg;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lej;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ; not doing any work"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lazg;->f(Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 9

    invoke-virtual {p0}, Lazg;->c()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->m()V

    :try_start_0
    iget-object v0, p0, Lazg;->o:Lbck;

    iget-object v1, p0, Lazg;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbck;->h(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->A()Lbcc;

    move-result-object v1

    iget-object v2, p0, Lazg;->k:Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Lbcg;

    iget-object v3, v3, Lbcg;->a:Lapt;

    invoke-virtual {v3}, Lapt;->l()V

    move-object v3, v1

    check-cast v3, Lbcg;

    iget-object v3, v3, Lbcg;->b:Laqa;

    invoke-virtual {v3}, Laqa;->e()Larf;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lare;->g(ILjava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lbcg;

    iget-object v2, v2, Lbcg;->a:Lapt;

    invoke-virtual {v2}, Lapt;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v3}, Larf;->a()I

    move-object v2, v1

    check-cast v2, Lbcg;

    iget-object v2, v2, Lbcg;->a:Lapt;

    invoke-virtual {v2}, Lapt;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v2, v1

    check-cast v2, Lbcg;

    iget-object v2, v2, Lbcg;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    check-cast v1, Lbcg;

    iget-object v1, v1, Lbcg;->b:Laqa;

    invoke-virtual {v1, v3}, Laqa;->g(Larf;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lazg;->f(Z)V

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lazg;->h:Ldr;

    instance-of v2, v0, Laxo;

    if-eqz v2, :cond_6

    invoke-static {}, Laxq;->a()Laxq;

    iget-object v0, p0, Lazg;->c:Lbcj;

    invoke-virtual {v0}, Lbcj;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lazg;->e()V

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v0, p0, Lazg;->o:Lbck;

    iget-object v2, p0, Lazg;->k:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {v0, v3, v2}, Lbck;->k(ILjava/lang/String;)V

    iget-object v0, p0, Lazg;->h:Ldr;

    check-cast v0, Laxo;

    iget-object v0, v0, Laxo;->a:Laxh;

    iget-object v2, p0, Lazg;->o:Lbck;

    iget-object v3, p0, Lazg;->k:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lbck;->g(Ljava/lang/String;Laxh;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lazg;->p:Lbbj;

    iget-object v5, p0, Lazg;->k:Ljava/lang/String;

    invoke-interface {v0, v5}, Lbbj;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lazg;->o:Lbck;

    invoke-interface {v6, v5}, Lbck;->h(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lazg;->p:Lbbj;

    const-string v7, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    invoke-static {v7, v4}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v7

    if-nez v5, :cond_3

    invoke-virtual {v7, v4}, Lapy;->f(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v4, v5}, Lapy;->g(ILjava/lang/String;)V

    :goto_1
    move-object v8, v6

    check-cast v8, Lbbl;

    iget-object v8, v8, Lbbl;->a:Lapt;

    invoke-virtual {v8}, Lapt;->l()V

    check-cast v6, Lbbl;

    iget-object v6, v6, Lbbl;->a:Lapt;

    invoke-static {v6, v7, v1}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Lapy;->j()V

    if-eqz v8, :cond_2

    invoke-static {}, Laxq;->a()Laxq;

    iget-object v6, p0, Lazg;->o:Lbck;

    invoke-interface {v6, v4, v5}, Lbck;->k(ILjava/lang/String;)V

    iget-object v6, p0, Lazg;->o:Lbck;

    invoke-interface {v6, v5, v2, v3}, Lbck;->f(Ljava/lang/String;J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Lapy;->j()V

    throw v0

    :cond_5
    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->q()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->o()V

    invoke-direct {p0, v1}, Lazg;->f(Z)V

    goto :goto_3

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lapt;->o()V

    invoke-direct {p0, v1}, Lazg;->f(Z)V

    throw v0

    :cond_6
    instance-of v0, v0, Laxn;

    if-eqz v0, :cond_7

    invoke-static {}, Laxq;->a()Laxq;

    invoke-direct {p0}, Lazg;->d()V

    goto :goto_3

    :cond_7
    invoke-static {}, Laxq;->a()Laxq;

    iget-object v0, p0, Lazg;->c:Lbcj;

    invoke-virtual {v0}, Lbcj;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lazg;->e()V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lazg;->b()V

    goto :goto_3

    :cond_9
    invoke-static {v0}, Lej;->f(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lazg;->d()V

    :cond_a
    :goto_3
    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->q()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->o()V

    return-void

    :catchall_2
    move-exception v0

    :try_start_7
    move-object v2, v1

    check-cast v2, Lbcg;

    iget-object v2, v2, Lbcg;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    check-cast v1, Lbcg;

    iget-object v1, v1, Lbcg;->b:Laqa;

    invoke-virtual {v1, v3}, Laqa;->g(Larf;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    iget-object v1, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lapt;->o()V

    throw v0

    :cond_b
    return-void
.end method

.method final b()V
    .locals 5

    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->m()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lazg;->k:Ljava/lang/String;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lazg;->o:Lbck;

    invoke-interface {v3, v1}, Lbck;->h(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lazg;->o:Lbck;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v1}, Lbck;->k(ILjava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lazg;->p:Lbbj;

    invoke-interface {v3, v1}, Lbbj;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lazg;->h:Ldr;

    check-cast v1, Laxm;

    iget-object v1, v1, Laxm;->a:Laxh;

    iget-object v2, p0, Lazg;->o:Lbck;

    iget-object v3, p0, Lazg;->k:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lbck;->g(Ljava/lang/String;Laxh;)V

    iget-object v1, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lapt;->o()V

    invoke-direct {p0, v0}, Lazg;->f(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lapt;->o()V

    invoke-direct {p0, v0}, Lazg;->f(Z)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final c()Z
    .locals 3

    iget-boolean v0, p0, Lazg;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Laxq;->a()Laxq;

    iget-object v0, p0, Lazg;->o:Lbck;

    iget-object v2, p0, Lazg;->k:Ljava/lang/String;

    invoke-interface {v0, v2}, Lbck;->h(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lazg;->f(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lej;->f(I)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Lazg;->f(Z)V

    :goto_0
    return v2

    :cond_1
    return v1
.end method

.method public final run()V
    .locals 15

    iget-object v0, p0, Lazg;->q:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Work [ id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lazg;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tags={ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string v0, " } ]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lazg;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lazg;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->m()V

    :try_start_0
    iget-object v0, p0, Lazg;->c:Lbcj;

    iget v1, v0, Lbcj;->r:I

    if-eq v1, v2, :cond_3

    invoke-direct {p0}, Lazg;->g()V

    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->q()V

    invoke-static {}, Laxq;->a()Laxq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    :goto_1
    invoke-virtual {v0}, Lapt;->o()V

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lbcj;->e()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lbcj;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lazg;->c:Lbcj;

    invoke-virtual {v3}, Lbcj;->a()J

    move-result-wide v3

    cmp-long v6, v0, v3

    if-gez v6, :cond_5

    invoke-static {}, Laxq;->a()Laxq;

    const-string v0, "Delaying execution for %s because it is being executed before schedule."

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lazg;->c:Lbcj;

    iget-object v3, v3, Lbcj;->b:Ljava/lang/String;

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0, v2}, Lazg;->f(Z)V

    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    goto :goto_1

    :cond_5
    :try_start_2
    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->q()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->o()V

    iget-object v0, p0, Lazg;->c:Lbcj;

    invoke-virtual {v0}, Lbcj;->e()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    iget-object v0, v0, Lbcj;->d:Laxh;

    move-object v8, v0

    goto/16 :goto_5

    :cond_6
    iget-object v0, v0, Lbcj;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Laxl;->a:Ljava/lang/String;

    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Laxk;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v4, Laxl;->a:Ljava/lang/String;

    const-string v6, "Trouble instantiating "

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    :goto_2
    if-nez v1, :cond_7

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v0, Lazg;->a:Ljava/lang/String;

    iget-object v1, p0, Lazg;->c:Lbcj;

    iget-object v1, v1, Lbcj;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not create Input Merger "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lazg;->b()V

    return-void

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lazg;->c:Lbcj;

    iget-object v4, v4, Lbcj;->d:Laxh;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lazg;->o:Lbck;

    iget-object v6, p0, Lazg;->k:Ljava/lang/String;

    const-string v7, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    invoke-static {v7, v2}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v7

    invoke-virtual {v7, v2, v6}, Lapy;->g(ILjava/lang/String;)V

    check-cast v4, Lbcy;

    iget-object v6, v4, Lbcy;->a:Lapt;

    invoke-virtual {v6}, Lapt;->l()V

    iget-object v4, v4, Lbcy;->a:Lapt;

    invoke-static {v4, v7, v5}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v8, v3

    goto :goto_4

    :cond_8
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    :goto_4
    invoke-static {v8}, Laxh;->a([B)Laxh;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :cond_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Lapy;->j()V

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v0}, Laxk;->a(Ljava/util/List;)Laxh;

    move-result-object v0

    move-object v8, v0

    :goto_5
    new-instance v0, Landroidx/work/WorkerParameters;

    iget-object v1, p0, Lazg;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    iget-object v9, p0, Lazg;->q:Ljava/util/List;

    iget-object v1, p0, Lazg;->c:Lbcj;

    iget v10, v1, Lbcj;->j:I

    iget-object v1, p0, Lazg;->l:Laxd;

    iget-object v11, v1, Laxd;->a:Ljava/util/concurrent/Executor;

    iget-object v12, p0, Lazg;->i:Lva;

    iget-object v13, v1, Laxd;->c:Laxz;

    sget v1, Lbdw;->a:I

    sget v1, Lbdv;->a:I

    iget-object v1, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    const/4 v14, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v14}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Laxh;Ljava/util/Collection;ILjava/util/concurrent/Executor;Lva;Laxz;[B)V

    iget-object v1, p0, Lazg;->d:Laxp;

    if-nez v1, :cond_a

    iget-object v1, p0, Lazg;->l:Laxd;

    iget-object v1, v1, Laxd;->c:Laxz;

    iget-object v4, p0, Lazg;->b:Landroid/content/Context;

    iget-object v6, p0, Lazg;->c:Lbcj;

    iget-object v6, v6, Lbcj;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v6, v0}, Laxz;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Laxp;

    move-result-object v0

    iput-object v0, p0, Lazg;->d:Laxp;

    :cond_a
    iget-object v0, p0, Lazg;->d:Laxp;

    if-nez v0, :cond_b

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v0, Lazg;->a:Ljava/lang/String;

    iget-object v1, p0, Lazg;->c:Lbcj;

    iget-object v1, v1, Lbcj;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not create Worker "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lazg;->b()V

    return-void

    :cond_b
    iget-boolean v1, v0, Laxp;->f:Z

    if-eqz v1, :cond_c

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v0, Lazg;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an already-used Worker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lazg;->c:Lbcj;

    iget-object v2, v2, Lbcj;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; Worker Factory should return new instances"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lazg;->b()V

    return-void

    :cond_c
    iput-boolean v2, v0, Laxp;->f:Z

    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->m()V

    :try_start_5
    iget-object v0, p0, Lazg;->o:Lbck;

    iget-object v1, p0, Lazg;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbck;->h(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lazg;->o:Lbck;

    iget-object v1, p0, Lazg;->k:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {v0, v4, v1}, Lbck;->k(ILjava/lang/String;)V

    iget-object v0, p0, Lazg;->o:Lbck;

    iget-object v1, p0, Lazg;->k:Ljava/lang/String;

    move-object v4, v0

    check-cast v4, Lbcy;

    iget-object v4, v4, Lbcy;->a:Lapt;

    invoke-virtual {v4}, Lapt;->l()V

    move-object v4, v0

    check-cast v4, Lbcy;

    iget-object v4, v4, Lbcy;->d:Laqa;

    invoke-virtual {v4}, Laqa;->e()Larf;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lare;->g(ILjava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lbcy;

    iget-object v1, v1, Lbcy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->m()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v4}, Larf;->a()I

    move-object v1, v0

    check-cast v1, Lbcy;

    iget-object v1, v1, Lbcy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->q()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    move-object v1, v0

    check-cast v1, Lbcy;

    iget-object v1, v1, Lbcy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    check-cast v0, Lbcy;

    iget-object v0, v0, Lbcy;->d:Laqa;

    invoke-virtual {v0, v4}, Laqa;->g(Larf;)V

    const/4 v5, 0x1

    goto :goto_6

    :catchall_0
    move-exception v1

    move-object v2, v0

    check-cast v2, Lbcy;

    iget-object v2, v2, Lbcy;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    check-cast v0, Lbcy;

    iget-object v0, v0, Lbcy;->d:Laqa;

    invoke-virtual {v0, v4}, Laqa;->g(Larf;)V

    throw v1

    :cond_d
    :goto_6
    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->q()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v0, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lapt;->o()V

    if-eqz v5, :cond_f

    invoke-virtual {p0}, Lazg;->c()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lbdu;

    invoke-direct {v0}, Lbdu;-><init>()V

    iget-object v1, p0, Lazg;->i:Lva;

    iget-object v1, v1, Lva;->b:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lbdu;->a:Lbej;

    iget-object v1, p0, Lazg;->g:Lbej;

    new-instance v4, Lbd;

    const/16 v5, 0x11

    invoke-direct {v4, p0, v0, v5}, Lbd;-><init>(Lazg;Lnou;I)V

    new-instance v5, Lcan;

    invoke-direct {v5, v2}, Lcan;-><init>(I)V

    invoke-virtual {v1, v4, v5}, Lbej;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v1, Lbd;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v0, v2, v3}, Lbd;-><init>(Lazg;Lnou;I[B)V

    iget-object v2, p0, Lazg;->i:Lva;

    iget-object v2, v2, Lva;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lazg;->r:Ljava/lang/String;

    iget-object v1, p0, Lazg;->g:Lbej;

    new-instance v2, Lazf;

    invoke-direct {v2, p0, v0}, Lazf;-><init>(Lazg;Ljava/lang/String;)V

    iget-object v0, p0, Lazg;->i:Lva;

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lbej;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_e
    :goto_7
    return-void

    :cond_f
    invoke-direct {p0}, Lazg;->g()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lapt;->o()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Lapy;->j()V

    throw v0

    :catchall_3
    move-exception v0

    iget-object v1, p0, Lazg;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lapt;->o()V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method
