.class public final Lbkd;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ldne;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "k"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "x"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "y"

    aput-object v2, v0, v1

    invoke-static {v0}, Ldne;->J([Ljava/lang/String;)Ldne;

    move-result-object v0

    sput-object v0, Lbkd;->a:Ldne;

    return-void
.end method

.method public static a(Lblh;Lbga;)Lbis;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lblh;->q()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lblh;->h()V

    :goto_0
    invoke-virtual {p0}, Lblh;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lblh;->q()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-static {}, Lbls;->a()F

    move-result v5

    sget-object v6, Lbkj;->d:Lbkj;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lbkq;->a(Lblh;Lbga;FLble;ZZ)Lblt;

    move-result-object v1

    new-instance v3, Lbhy;

    invoke-direct {v3, p1, v1}, Lbhy;-><init>(Lbga;Lblt;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lblh;->j()V

    invoke-static {v0}, Lbkr;->b(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    new-instance p1, Lblt;

    invoke-static {}, Lbls;->a()F

    move-result v1

    invoke-static {p0, v1}, Lbkp;->c(Lblh;F)Landroid/graphics/PointF;

    move-result-object p0

    invoke-direct {p1, p0}, Lblt;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance p0, Lbis;

    invoke-direct {p0, v0}, Lbis;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method static b(Lblh;Lbga;)Lbiz;
    .locals 7

    invoke-virtual {p0}, Lblh;->i()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p0}, Lblh;->q()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    sget-object v4, Lbkd;->a:Ldne;

    invoke-virtual {p0, v4}, Lblh;->r(Ldne;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x6

    packed-switch v4, :pswitch_data_0

    invoke-virtual {p0}, Lblh;->m()V

    invoke-virtual {p0}, Lblh;->n()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lblh;->q()I

    move-result v4

    if-ne v4, v6, :cond_0

    invoke-virtual {p0}, Lblh;->n()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lbze;->O(Lblh;Lbga;)Lbip;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lblh;->q()I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-virtual {p0}, Lblh;->n()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lbze;->O(Lblh;Lbga;)Lbip;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1}, Lbkd;->a(Lblh;Lbga;)Lbis;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lblh;->k()V

    if-eqz v0, :cond_3

    const-string p0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, p0}, Lbga;->d(Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    new-instance p0, Lbiw;

    invoke-direct {p0, v2, v3}, Lbiw;-><init>(Lbip;Lbip;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
