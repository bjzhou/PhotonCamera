.class public final Lkjo;
.super Ljava/lang/Object;

# interfaces
.implements Lrw;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Looo;

.field final synthetic c:Lkfg;


# direct methods
.method public constructor <init>(Lkfg;Ljava/util/Map;Looo;[B[B)V
    .locals 0

    iput-object p1, p0, Lkjo;->c:Lkfg;

    iput-object p2, p0, Lkjo;->a:Ljava/util/Map;

    iput-object p3, p0, Lkjo;->b:Looo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lrx;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Ltj;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final c(Ltj;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final d(Ltj;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final e(JI)V
    .locals 2

    iget-object v0, p0, Lkjo;->c:Lkfg;

    iget-object v1, p0, Lkjo;->a:Ljava/util/Map;

    invoke-static {p3}, Lsc;->a(I)Lsc;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkfj;

    invoke-virtual {v0, p3, p1, p2}, Lkfg;->bh(Lkfj;J)V

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h(Ltj;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final i(JJ)V
    .locals 9

    iget-object v0, p0, Lkjo;->c:Lkfg;

    new-instance v8, Lkeg;

    iget-object v1, p0, Lkjo;->b:Looo;

    invoke-virtual {v1}, Looo;->c()J

    move-result-wide v6

    move-object v1, v8

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lkeg;-><init>(JJJ)V

    invoke-virtual {v0, v8}, Lkfg;->bv(Lkeg;)V

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k(Ltj;)V
    .locals 3

    iget-object v0, p0, Lkjo;->c:Lkfg;

    new-instance v1, Lkle;

    const-class v2, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {v2}, Lonl;->a(Ljava/lang/Class;)Lonx;

    iget-object p1, p1, Ltj;->a:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {v1, p1}, Lkle;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {v0, v1}, Lkfg;->bC(Lkou;)V

    return-void
.end method
