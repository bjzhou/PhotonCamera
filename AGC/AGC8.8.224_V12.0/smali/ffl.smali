.class public final Lffl;
.super Ljava/lang/Object;

# interfaces
.implements Lfgd;


# instance fields
.field public final a:Lffp;

.field public final b:Lfgd;

.field final synthetic c:Lgxy;

.field final synthetic d:Lnph;

.field final synthetic e:Lgxl;

.field public final synthetic f:Lffp;


# direct methods
.method public constructor <init>(Lffp;Lgxy;Lnph;Lgxl;)V
    .locals 0

    iput-object p1, p0, Lffl;->f:Lffp;

    iput-object p2, p0, Lffl;->c:Lgxy;

    iput-object p3, p0, Lffl;->d:Lnph;

    iput-object p4, p0, Lffl;->e:Lgxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffl;->a:Lffp;

    new-instance p1, Lffu;

    invoke-direct {p1, p2}, Lffu;-><init>(Lgxy;)V

    iput-object p1, p0, Lffl;->b:Lfgd;

    return-void
.end method


# virtual methods
.method public final a(Lhkt;Lgxn;Lmqp;JLhjc;)Lnou;
    .locals 13

    move-object v9, p0

    iget-object v10, v9, Lffl;->d:Lnph;

    new-instance v11, Lffj;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lffj;-><init>(Lffl;Lhkt;Lgxn;Lmqp;Lhjc;)V

    iget-object v2, v9, Lffl;->e:Lgxl;

    new-instance v12, Lffk;

    move-object v0, v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lffk;-><init>(Lffl;Lgxl;Lhkt;Lgxn;Lmqp;JLhjc;)V

    invoke-static {v10, v11, v12}, Lffp;->b(Lnou;Lnno;Lnno;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lhkt;Ljava/io/InputStream;Lgxn;Lmqp;JLjava/lang/String;Lhjc;)Lnou;
    .locals 14

    move-object v10, p0

    iget-object v11, v10, Lffl;->d:Lnph;

    new-instance v12, Lffh;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lffh;-><init>(Lffl;Lhkt;Ljava/io/InputStream;Lgxn;Lmqp;Lhjc;)V

    new-instance v13, Lffi;

    move-object v0, v13

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lffi;-><init>(Lffl;Lhkt;Ljava/io/InputStream;Lgxn;Lmqp;JLjava/lang/String;Lhjc;)V

    invoke-static {v11, v12, v13}, Lffp;->b(Lnou;Lnno;Lnno;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lffl;->d:Lnph;

    new-instance v1, Lcmc;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lcmc;-><init>(Lffl;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method
