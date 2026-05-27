.class public final Lebz;
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

    iput-object p1, p0, Lebz;->a:Loiw;

    iput-object p2, p0, Lebz;->b:Loiw;

    iput-object p3, p0, Lebz;->c:Loiw;

    iput-object p4, p0, Lebz;->d:Loiw;

    iput-object p5, p0, Lebz;->e:Loiw;

    iput-object p6, p0, Lebz;->f:Loiw;

    iput-object p7, p0, Lebz;->g:Loiw;

    iput-object p8, p0, Lebz;->h:Loiw;

    iput-object p9, p0, Lebz;->i:Loiw;

    iput-object p10, p0, Lebz;->j:Loiw;

    iput-object p11, p0, Lebz;->k:Loiw;

    iput-object p12, p0, Lebz;->l:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lebz;
    .locals 14

    new-instance v13, Lebz;

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

    invoke-direct/range {v0 .. v12}, Lebz;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v13
.end method


# virtual methods
.method public final a()Leby;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lebz;->a:Loiw;

    check-cast v1, Lede;

    invoke-virtual {v1}, Lede;->a()Ledd;

    move-result-object v3

    iget-object v1, v0, Lebz;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lecy;

    iget-object v1, v0, Lebz;->c:Loiw;

    check-cast v1, Lfwo;

    invoke-virtual {v1}, Lfwo;->a()Lfuz;

    move-result-object v5

    iget-object v1, v0, Lebz;->d:Loiw;

    invoke-static {v1}, Logj;->a(Loiw;)Logd;

    move-result-object v6

    iget-object v1, v0, Lebz;->e:Loiw;

    invoke-static {v1}, Logj;->a(Loiw;)Logd;

    move-result-object v7

    iget-object v1, v0, Lebz;->f:Loiw;

    invoke-static {v1}, Logj;->a(Loiw;)Logd;

    move-result-object v8

    iget-object v1, v0, Lebz;->g:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ldhi;

    iget-object v1, v0, Lebz;->h:Loiw;

    check-cast v1, Ldmf;

    invoke-virtual {v1}, Ldmf;->a()Ldne;

    move-result-object v10

    iget-object v1, v0, Lebz;->i:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ldne;

    iget-object v1, v0, Lebz;->j:Loiw;

    check-cast v1, Ledr;

    invoke-virtual {v1}, Ledr;->a()Ledq;

    move-result-object v12

    iget-object v1, v0, Lebz;->k:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Legm;

    iget-object v1, v0, Lebz;->l:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lkbc;

    new-instance v1, Leby;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Leby;-><init>(Ledd;Lecy;Lfuz;Logd;Logd;Logd;Ldhi;Ldne;Ldne;Ledq;Legm;Lkbc;[B[B)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lebz;->a()Leby;

    move-result-object v0

    return-object v0
.end method
