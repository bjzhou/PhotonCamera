.class public final synthetic Lgoj;
.super Ljava/lang/Object;

# interfaces
.implements Lgon;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lnph;

.field public final synthetic c:Lehb;


# direct methods
.method public synthetic constructor <init>(ZLnph;Lehb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lgoj;->a:Z

    iput-object p2, p0, Lgoj;->b:Lnph;

    iput-object p3, p0, Lgoj;->c:Lehb;

    return-void
.end method


# virtual methods
.method public final a(JLigo;Lnqz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    iget-boolean v1, v0, Lgoj;->a:Z

    iget-object v2, v0, Lgoj;->b:Lnph;

    iget-object v3, v0, Lgoj;->c:Lehb;

    sget-object v4, Lgop;->a:Lnak;

    invoke-static/range {p4 .. p4}, Lnsy;->k(Lnqz;)Z

    move-result v4

    invoke-static {v4}, Lmoz;->e(Z)V

    if-eqz v1, :cond_0

    new-instance v1, Lgoo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide v9, p1

    invoke-direct/range {v5 .. v12}, Lgoo;-><init>(Ligo;Ljava/lang/String;Ljava/lang/String;J[B[B)V

    invoke-virtual {v2, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-eqz v3, :cond_1

    sget-object v1, Lmpx;->a:Lmpx;

    invoke-static/range {p5 .. p5}, Lgop;->b(Ljava/lang/String;)Lmqp;

    move-result-object v2

    invoke-static/range {p6 .. p6}, Lgop;->b(Ljava/lang/String;)Lmqp;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lgoz;->a(Lmqp;Lmqp;Lmqp;)Lgpa;

    move-result-object v9

    iget-object v1, v3, Lehb;->d:Lehe;

    iget-object v1, v1, Lehe;->g:Ljew;

    invoke-virtual {v1}, Ljew;->x()Lhbq;

    move-result-object v12

    iget-object v5, v3, Lehb;->d:Lehe;

    const/4 v10, 0x0

    sget-object v11, Leen;->a:Leen;

    sget-object v13, Lmpx;->a:Lmpx;

    move-wide v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v5 .. v13}, Lehe;->h(JLigo;Lgpa;ILeen;Lhbq;Lmqp;)V

    :cond_1
    return-void
.end method
