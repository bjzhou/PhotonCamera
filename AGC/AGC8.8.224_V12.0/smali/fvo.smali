.class final Lfvo;
.super Ljwh;


# direct methods
.method public constructor <init>(Ljvs;Ljvk;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljvs;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object p1

    invoke-direct {p0, p1}, Ljwh;-><init>(Ljvs;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklu;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgrx;

    sget-object v1, Lgrx;->b:Lgrx;

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lklu;->b:Lklu;

    if-eq v0, p1, :cond_2

    sget-object p1, Lklu;->c:Lklu;

    if-eq v0, p1, :cond_2

    sget-object p1, Lklu;->a:Lklu;

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    return-object v2
.end method
