.class public final Lovk;
.super Lovi;


# instance fields
.field protected final c:Lott;


# direct methods
.method public constructor <init>(Lott;Lola;)V
    .locals 1

    const/4 v0, -0x3

    invoke-direct {p0, p2, v0}, Lovi;-><init>(Lola;I)V

    iput-object p1, p0, Lovk;->c:Lott;

    return-void
.end method


# virtual methods
.method protected final b(Lotd;Loku;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lovt;

    invoke-direct {v0, p1}, Lovt;-><init>(Lotj;)V

    invoke-virtual {p0, v0, p2}, Lovk;->c(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lolc;->a:Lolc;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method protected final c(Lotu;Loku;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lovk;->c:Lott;

    invoke-interface {v0, p1, p2}, Lott;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lolc;->a:Lolc;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final di(Lotu;Loku;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lovk;->b:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_4

    invoke-interface {p2}, Loku;->d()Lola;

    move-result-object v0

    iget-object v1, p0, Lovk;->a:Lola;

    invoke-interface {v0, v1}, Lola;->plus(Lola;)Lola;

    move-result-object v1

    invoke-static {v1, v0}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lovk;->c(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lolc;->a:Lolc;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_1
    sget-object v2, Lokw;->a:Lokv;

    invoke-interface {v1, v2}, Lola;->get(Loky;)Lokx;

    move-result-object v2

    sget-object v3, Lokw;->a:Lokv;

    invoke-interface {v0, v3}, Lola;->get(Loky;)Lokx;

    move-result-object v0

    invoke-static {v2, v0}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Loku;->d()Lola;

    move-result-object v0

    instance-of v2, p1, Lovt;

    if-nez v2, :cond_2

    instance-of v2, p1, Lovn;

    if-nez v2, :cond_2

    new-instance v2, Lovw;

    invoke-direct {v2, p1, v0}, Lovw;-><init>(Lotu;Lola;)V

    move-object p1, v2

    :cond_2
    new-instance v0, Lovj;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lovj;-><init>(Lovk;Loku;)V

    invoke-static {v1}, Loxd;->a(Lola;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p1, v2, v0, p2}, Lone;->l(Lola;Ljava/lang/Object;Ljava/lang/Object;Lomo;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lolc;->a:Lolc;

    if-eq p1, p2, :cond_3

    sget-object p1, Lojk;->a:Lojk;

    :cond_3
    if-eq p1, p2, :cond_5

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_4
    invoke-static {p0, p1, p2}, Lovi;->d(Lovi;Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lolc;->a:Lolc;

    if-eq p1, p2, :cond_5

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_5
    :goto_0
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lovk;->c:Lott;

    invoke-super {p0}, Lovi;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
