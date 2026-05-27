.class public final Lbtp;
.super Lcas;


# instance fields
.field public a:Llij;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcas;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lbsn;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {p1}, Lbsn;->a()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic b(Lbqb;)Lbsn;
    .locals 0

    invoke-super {p0, p1}, Lcas;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsn;

    return-object p1
.end method

.method protected final bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lbqb;

    check-cast p2, Lbsn;

    iget-object p1, p0, Lbtp;->a:Llij;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p1, Llij;->d:Ljava/lang/Object;

    check-cast p1, Lkaj;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lkaj;->c(Lbsn;Z)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic d(Lbqb;Lbsn;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcas;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsn;

    return-void
.end method
