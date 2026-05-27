.class public final Lcrm;
.super Ljwh;


# direct methods
.method public constructor <init>(Ldbf;Ldhi;Lgzp;Lgzp;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljvs;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p4, v0, p3

    const/4 p3, 0x2

    iget-object p1, p1, Ldbf;->b:Ljwb;

    aput-object p1, v0, p3

    invoke-static {v0}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object p1

    invoke-direct {p0, p1}, Ljwh;-><init>(Ljvs;)V

    sget-object p1, Ldif;->a:Ldhj;

    invoke-interface {p2}, Ldhi;->e()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyt;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgyt;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lklv;

    sget-object v2, Lklv;->b:Lklv;

    invoke-virtual {v2, p1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lklv;->a:Lklv;

    invoke-virtual {v0, p1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    sget-object p1, Lgyt;->a:Lgyt;

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method
