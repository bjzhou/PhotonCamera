.class public final Lgjr;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgjr;->a:Loiw;

    iput-object p2, p0, Lgjr;->b:Loiw;

    iput-object p3, p0, Lgjr;->c:Loiw;

    iput-object p4, p0, Lgjr;->d:Loiw;

    iput-object p5, p0, Lgjr;->e:Loiw;

    iput-object p6, p0, Lgjr;->f:Loiw;

    iput-object p7, p0, Lgjr;->g:Loiw;

    iput-object p8, p0, Lgjr;->h:Loiw;

    iput-object p9, p0, Lgjr;->i:Loiw;

    iput-object p10, p0, Lgjr;->j:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lgjr;
    .locals 12

    new-instance v11, Lgjr;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lgjr;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v11
.end method


# virtual methods
.method public final a()Lgjq;
    .locals 15

    iget-object v0, p0, Lgjr;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lken;

    iget-object v0, p0, Lgjr;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljvs;

    iget-object v0, p0, Lgjr;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lgnk;

    iget-object v0, p0, Lgjr;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lkbc;

    iget-object v0, p0, Lgjr;->e:Loiw;

    check-cast v0, Lgjz;

    invoke-virtual {v0}, Lgjz;->a()Lgjy;

    move-result-object v6

    iget-object v0, p0, Lgjr;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lfvt;

    iget-object v0, p0, Lgjr;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lghx;

    iget-object v0, p0, Lgjr;->h:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lgue;

    iget-object v0, p0, Lgjr;->i:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljuf;

    iget-object v0, p0, Lgjr;->j:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lbkc;

    new-instance v0, Lgjq;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lgjq;-><init>(Lken;Ljvs;Lgnk;Lkbc;Lgjy;Lfvt;Lghx;Lgue;Ljuf;Lbkc;[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgjr;->a()Lgjq;

    move-result-object v0

    return-object v0
.end method
