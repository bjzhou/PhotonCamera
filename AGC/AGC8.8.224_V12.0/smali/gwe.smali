.class public final Lgwe;
.super Ljava/lang/Object;

# interfaces
.implements Lgwc;


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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgwe;->a:Loiw;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lgwe;->b:Loiw;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lgwe;->c:Loiw;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lgwe;->d:Loiw;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lgwe;->e:Loiw;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Lgwe;->f:Loiw;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Lgwe;->g:Loiw;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p8, p0, Lgwe;->h:Loiw;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p9, p0, Lgwe;->i:Loiw;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p10, p0, Lgwe;->j:Loiw;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p11, p0, Lgwe;->k:Loiw;

    return-void
.end method


# virtual methods
.method public final a(Lgya;Ljava/lang/String;Lcjf;Lgxr;Lgpv;Lmqp;)Lgwd;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    new-instance v22, Lgwd;

    move-object/from16 v1, v22

    iget-object v2, v0, Lgwe;->a:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/concurrent/Executor;

    move-object v2, v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lgwe;->b:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lgsi;->a()Lgwm;

    move-result-object v4

    iget-object v5, v0, Lgwe;->c:Loiw;

    check-cast v5, Lhje;

    invoke-virtual {v5}, Lhje;->a()Lhjd;

    move-result-object v5

    iget-object v6, v0, Lgwe;->d:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ldlj;

    move-object v6, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Lgwe;->e:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lgxi;

    move-object v7, v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v0, Lgwe;->f:Loiw;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljew;

    move-object v8, v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lgwe;->g:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldle;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lgwe;->h:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljuh;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lgwe;->i:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldhi;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lgwe;->j:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lkns;

    move-object v9, v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v0, Lgwe;->k:Loiw;

    invoke-interface {v10}, Loiw;->get()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v10

    check-cast v17, Ligo;

    move-object/from16 v10, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljew;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lgwd;-><init>(Ljava/util/concurrent/Executor;Ljew;Lgwm;Lhjc;Ldlj;Lgxi;Ljew;Lkns;Ligo;Lgya;Ljava/lang/String;Lcjf;Lgxr;Lgpv;Lmqp;[B[B[B[B[B)V

    return-object v22
.end method
