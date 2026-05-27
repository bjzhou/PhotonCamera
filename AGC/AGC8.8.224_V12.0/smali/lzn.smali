.class public final Llzn;
.super Llyz;


# instance fields
.field public final a:Lapt;

.field public final b:Lapn;

.field public final c:Laqa;

.field public final d:Laqa;

.field public final e:Laqa;

.field public final f:Laqa;

.field public final g:Laqa;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 1

    invoke-direct {p0}, Llyz;-><init>()V

    iput-object p1, p0, Llzn;->a:Lapt;

    new-instance v0, Llzg;

    invoke-direct {v0, p1}, Llzg;-><init>(Lapt;)V

    iput-object v0, p0, Llzn;->b:Lapn;

    new-instance v0, Llzh;

    invoke-direct {v0, p1}, Llzh;-><init>(Lapt;)V

    iput-object v0, p0, Llzn;->c:Laqa;

    new-instance v0, Llzi;

    invoke-direct {v0, p1}, Llzi;-><init>(Lapt;)V

    iput-object v0, p0, Llzn;->d:Laqa;

    new-instance v0, Llzj;

    invoke-direct {v0, p1}, Llzj;-><init>(Lapt;)V

    iput-object v0, p0, Llzn;->e:Laqa;

    new-instance v0, Llzk;

    invoke-direct {v0, p1}, Llzk;-><init>(Lapt;)V

    iput-object v0, p0, Llzn;->f:Laqa;

    new-instance v0, Llzl;

    invoke-direct {v0, p1}, Llzl;-><init>(Lapt;)V

    iput-object v0, p0, Llzn;->g:Laqa;

    return-void
.end method


# virtual methods
.method public final a(Llyf;Loku;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llzn;->a:Lapt;

    new-instance v1, Llza;

    invoke-direct {v1, p0, p1}, Llza;-><init>(Llzn;Llyf;)V

    invoke-static {v0, v1, p2}, Laeo;->i(Lapt;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Llyf;Llwq;Loku;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llzn;->a:Lapt;

    new-instance v1, Llwx;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, p2, v2}, Llwx;-><init>(Llzn;Llyf;Llwq;I)V

    invoke-static {v0, v1, p3}, Laeo;->i(Lapt;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(JDLlvk;Loku;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Llzn;->a:Lapt;

    new-instance v8, Llzd;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Llzd;-><init>(Llzn;DLlvk;J)V

    invoke-static {v0, v8, p6}, Ladr;->c(Lapt;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(JLoku;)Ljava/lang/Object;
    .locals 3

    const-string v0, "SELECT status_uploadProgressPercent FROM ResourceEntity WHERE onDeviceId = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p2}, Lapy;->e(IJ)V

    invoke-static {}, Lafj;->g()Landroid/os/CancellationSignal;

    move-result-object p1

    iget-object p2, p0, Llzn;->a:Lapt;

    new-instance v1, Ljzf;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, v2}, Ljzf;-><init>(Llzn;Lapy;I)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Ladr;->b(Lapt;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(Llwq;Loku;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llzn;->a:Lapt;

    new-instance v1, Ljzf;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Ljzf;-><init>(Llzn;Llwq;I)V

    invoke-static {v0, v1, p2}, Ladr;->c(Lapt;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i(JDLoku;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Llzn;->a:Lapt;

    new-instance v7, Llzm;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Llzm;-><init>(Llzn;DJ)V

    invoke-static {v0, v7, p5}, Ladr;->c(Lapt;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Llyf;Llwq;ZLomk;Loku;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Llzn;->a:Lapt;

    new-instance v7, Llzb;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Llzb;-><init>(Llzn;Llyf;Llwq;ZLomk;)V

    invoke-static {v0, v7, p5}, Laeo;->i(Lapt;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final m(JLjava/lang/String;Loku;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Llzn;->a:Lapt;

    new-instance v7, Llze;

    const/4 v6, 0x2

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Llze;-><init>(Llzn;Ljava/lang/String;JI)V

    invoke-static {v0, v7, p4}, Ladr;->c(Lapt;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final n(JLlvk;Loku;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Llzn;->a:Lapt;

    new-instance v7, Llze;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Llze;-><init>(Llzn;Llvk;JI)V

    invoke-static {v0, v7, p4}, Ladr;->c(Lapt;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final q(JLluq;Lnyy;Llvk;Loku;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Llzn;->a:Lapt;

    new-instance v8, Llzc;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Llzc;-><init>(Llzn;Lluq;Lnyy;Llvk;J)V

    invoke-static {v0, v8, p6}, Ladr;->c(Lapt;Ljava/util/concurrent/Callable;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
