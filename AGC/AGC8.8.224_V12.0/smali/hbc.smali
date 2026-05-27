.class public final Lhbc;
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

.field private final i:Loiw;

.field private final j:Loiw;

.field private final k:Loiw;

.field private final l:Loiw;

.field private final m:Loiw;

.field private final n:Loiw;

.field private final o:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbc;->a:Loiw;

    iput-object p2, p0, Lhbc;->b:Loiw;

    iput-object p3, p0, Lhbc;->c:Loiw;

    iput-object p4, p0, Lhbc;->d:Loiw;

    iput-object p5, p0, Lhbc;->e:Loiw;

    iput-object p6, p0, Lhbc;->f:Loiw;

    iput-object p7, p0, Lhbc;->g:Loiw;

    iput-object p8, p0, Lhbc;->h:Loiw;

    iput-object p9, p0, Lhbc;->i:Loiw;

    iput-object p10, p0, Lhbc;->j:Loiw;

    iput-object p11, p0, Lhbc;->k:Loiw;

    iput-object p12, p0, Lhbc;->l:Loiw;

    iput-object p13, p0, Lhbc;->m:Loiw;

    iput-object p14, p0, Lhbc;->n:Loiw;

    iput-object p15, p0, Lhbc;->o:Loiw;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lhbc;->a:Loiw;

    check-cast v1, Ldwh;

    invoke-virtual {v1}, Ldwh;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lduq;->a()Ldin;

    move-result-object v4

    iget-object v1, v0, Lhbc;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v1, v0, Lhbc;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v1, v0, Lhbc;->d:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, v0, Lhbc;->e:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljuh;

    iget-object v1, v0, Lhbc;->f:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ldja;

    iget-object v1, v0, Lhbc;->g:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Llhm;

    iget-object v1, v0, Lhbc;->h:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ldmz;

    iget-object v1, v0, Lhbc;->i:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lhbf;

    iget-object v1, v0, Lhbc;->j:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lgzm;

    iget-object v1, v0, Lhbc;->k:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lgzn;

    iget-object v15, v0, Lhbc;->l:Loiw;

    iget-object v1, v0, Lhbc;->m:Loiw;

    move-object/from16 v16, v1

    iget-object v1, v0, Lhbc;->n:Loiw;

    check-cast v1, Limf;

    invoke-virtual {v1}, Limf;->a()Landroid/content/pm/PackageInfo;

    move-result-object v17

    iget-object v1, v0, Lhbc;->o:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lkbc;

    new-instance v1, Lhba;

    move-object v2, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lhba;-><init>(Landroid/content/Context;Ldin;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljuh;Ldja;Llhm;Ldmz;Lhbf;Lgzm;Lgzn;Loiw;Loiw;Landroid/content/pm/PackageInfo;Lkbc;[B[B[B)V

    return-object v1
.end method
