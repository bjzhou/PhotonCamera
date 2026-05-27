.class public final Lefj;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefj;->a:Loiw;

    iput-object p2, p0, Lefj;->b:Loiw;

    iput-object p3, p0, Lefj;->c:Loiw;

    iput-object p4, p0, Lefj;->d:Loiw;

    iput-object p5, p0, Lefj;->e:Loiw;

    iput-object p6, p0, Lefj;->f:Loiw;

    iput-object p7, p0, Lefj;->g:Loiw;

    iput-object p8, p0, Lefj;->h:Loiw;

    iput-object p9, p0, Lefj;->i:Loiw;

    iput-object p10, p0, Lefj;->j:Loiw;

    iput-object p11, p0, Lefj;->k:Loiw;

    iput-object p12, p0, Lefj;->l:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lefj;
    .locals 14

    new-instance v13, Lefj;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lefj;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v13
.end method


# virtual methods
.method public final a()Lefi;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lefj;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lmqp;

    iget-object v1, v0, Lefj;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lmqp;

    iget-object v1, v0, Lefj;->c:Loiw;

    check-cast v1, Lfwo;

    invoke-virtual {v1}, Lfwo;->a()Lfuz;

    move-result-object v5

    iget-object v1, v0, Lefj;->d:Loiw;

    check-cast v1, Lebc;

    invoke-virtual {v1}, Lebc;->b()Lgkf;

    move-result-object v6

    iget-object v1, v0, Lefj;->e:Loiw;

    invoke-static {v1}, Logj;->a(Loiw;)Logd;

    move-result-object v7

    iget-object v1, v0, Lefj;->f:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ldzf;

    iget-object v1, v0, Lefj;->g:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/concurrent/Executor;

    iget-object v1, v0, Lefj;->h:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ldhi;

    iget-object v1, v0, Lefj;->i:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lkbc;

    iget-object v1, v0, Lefj;->j:Loiw;

    check-cast v1, Lgdf;

    invoke-virtual {v1}, Lgdf;->a()Lgdd;

    move-result-object v12

    iget-object v1, v0, Lefj;->k:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Limq;

    iget-object v1, v0, Lefj;->l:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljvs;

    new-instance v1, Lefi;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lefi;-><init>(Lmqp;Lmqp;Lfuz;Lgkf;Logd;Ldzf;Ljava/util/concurrent/Executor;Ldhi;Lkbc;Lgdd;Limq;Ljvs;[B[B)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lefj;->a()Lefi;

    move-result-object v0

    return-object v0
.end method
