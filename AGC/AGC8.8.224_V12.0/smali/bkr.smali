.class public final Lbkr;
.super Ljava/lang/Object;


# static fields
.field static final a:Ldne;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "k"

    aput-object v2, v0, v1

    invoke-static {v0}, Ldne;->J([Ljava/lang/String;)Ldne;

    move-result-object v0

    sput-object v0, Lbkr;->a:Ldne;

    return-void
.end method

.method public static a(Lblh;Lbga;FLble;Z)Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lblh;->q()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const-string p0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, p0}, Lbga;->d(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lblh;->i()V

    :goto_0
    invoke-virtual {p0}, Lblh;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lbkr;->a:Ldne;

    invoke-virtual {p0, v1}, Lblh;->r(Ldne;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lblh;->n()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lblh;->q()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lblh;->h()V

    invoke-virtual {p0}, Lblh;->q()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    :goto_1
    invoke-virtual {p0}, Lblh;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lbkq;->a(Lblh;Lbga;FLble;ZZ)Lblt;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lbkq;->a(Lblh;Lbga;FLble;ZZ)Lblt;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lblh;->j()V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lbkq;->a(Lblh;Lbga;FLble;ZZ)Lblt;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lblh;->k()V

    invoke-static {v0}, Lbkr;->b(Ljava/util/List;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/util/List;)V
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lblt;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lblt;

    iget v4, v3, Lblt;->g:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, Lblt;->h:Ljava/lang/Float;

    iget-object v4, v2, Lblt;->c:Ljava/lang/Object;

    if-nez v4, :cond_0

    iget-object v3, v3, Lblt;->b:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iput-object v3, v2, Lblt;->c:Ljava/lang/Object;

    instance-of v3, v2, Lbhy;

    if-eqz v3, :cond_0

    check-cast v2, Lbhy;

    invoke-virtual {v2}, Lbhy;->a()V

    goto :goto_0

    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblt;

    iget-object v1, v0, Lblt;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lblt;->c:Ljava/lang/Object;

    if-nez v1, :cond_3

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
