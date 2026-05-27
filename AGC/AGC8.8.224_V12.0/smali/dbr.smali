.class public final Ldbr;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Lklv;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Ldfa;


# direct methods
.method public constructor <init>(Ldfa;Lklv;IIII[B)V
    .locals 0

    iput-object p1, p0, Ldbr;->f:Ldfa;

    iput-object p2, p0, Ldbr;->a:Lklv;

    iput p3, p0, Ldbr;->d:I

    iput p4, p0, Ldbr;->e:I

    iput p5, p0, Ldbr;->b:I

    iput p6, p0, Ldbr;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    new-instance p1, Ldnq;

    sget-object v0, Lkbo;->m:Lkbo;

    const/4 v1, 0x1

    new-array v1, v1, [Lklv;

    const/4 v2, 0x0

    iget-object v3, p0, Ldbr;->a:Lklv;

    aput-object v3, v1, v2

    const-string v2, "Failed to open any of the available camera"

    invoke-direct {p1, v2, v0, v1}, Ldnq;-><init>(Ljava/lang/String;Lkbo;[Lklv;)V

    throw p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 9

    check-cast p1, Ldcx;

    iget-object v1, p0, Ldbr;->f:Ldfa;

    iget-object v3, p0, Ldbr;->a:Lklv;

    iget v4, p0, Ldbr;->d:I

    iget v5, p0, Ldbr;->e:I

    iget v0, p0, Ldbr;->b:I

    iget v2, p0, Ldbr;->c:I

    iget-object v6, v1, Ldfa;->e:Ljava/lang/Object;

    check-cast v6, Lcvr;

    invoke-virtual {v6}, Lcvr;->i()Z

    move-result v6

    invoke-static {p1, v0, v2, v6}, Lbze;->ad(Ldcx;IIZ)I

    move-result v6

    iget-object v0, v1, Ldfa;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Ldcx;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkaq;->b(Ljava/lang/String;)V

    const/4 p1, 0x4

    if-ne v6, p1, :cond_0

    iget-object p1, v1, Ldfa;->f:Ljava/lang/Object;

    invoke-interface {p1, v4, v5, v3}, Ldca;->c(IILklv;)Leg;

    move-result-object p1

    move-object v2, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-ne v6, p1, :cond_1

    iget-object p1, v1, Ldfa;->f:Ljava/lang/Object;

    invoke-interface {p1, v4, v5, v3}, Ldca;->a(IILklv;)Leg;

    move-result-object p1

    move-object v2, p1

    goto :goto_0

    :cond_1
    iget-object p1, v1, Ldfa;->f:Ljava/lang/Object;

    invoke-interface {p1, v4, v5, v3}, Ldca;->b(IILklv;)Leg;

    move-result-object p1

    move-object v2, p1

    :goto_0
    iget-object p1, v1, Ldfa;->b:Ljava/lang/Object;

    new-instance v8, Ldbq;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ldbq;-><init>(Ldfa;Leg;Lklv;III[B)V

    check-cast p1, Ljuh;

    invoke-virtual {p1, v8}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
