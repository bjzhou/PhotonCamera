.class public final Lgjv;
.super Lgka;


# instance fields
.field private final a:Lgjy;

.field private final b:Lkbc;

.field private final c:Lmqp;


# direct methods
.method public constructor <init>(Lgnk;Lgjy;Lkbc;Lghx;Lmqp;Ljava/util/Set;Lgam;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    move-object v3, p6

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgka;-><init>(Lgnk;Lgam;Ljava/util/Set;Lkbc;Lghx;)V

    iput-object p2, p0, Lgjv;->a:Lgjy;

    iput-object p3, p0, Lgjv;->b:Lkbc;

    iput-object p5, p0, Lgjv;->c:Lmqp;

    return-void
.end method


# virtual methods
.method public final c(Lgal;Lgkr;)V
    .locals 2

    iget-object v0, p0, Lgjv;->b:Lkbc;

    const-string v1, "pckHdrZsl#captureImage"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lgka;->c(Lgal;Lgkr;)V

    iget-object p1, p0, Lgjv;->b:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method protected final d(Ljava/util/List;Lgal;Lgkr;)Z
    .locals 9

    iget-object v0, p0, Lgjv;->b:Lkbc;

    const-string v1, "pckHdrZsl#process"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lgjv;->a:Lgjy;

    iget-object v1, p0, Lgjv;->c:Lmqp;

    new-instance v8, Ldvo;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v2 .. v7}, Ldvo;-><init>(Ljava/util/List;Lgkr;I[B[B)V

    invoke-virtual {v1, v8}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lgjy;->h(Ljava/util/List;Lgal;Lgkr;I)V

    iget-object p1, p0, Lgjv;->b:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    const/4 p1, 0x1

    return p1
.end method
