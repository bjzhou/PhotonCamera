.class public final synthetic Llqg;
.super Ljava/lang/Object;

# interfaces
.implements Lmqi;


# static fields
.field public static final synthetic a:Llqg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Llqg;

    invoke-direct {v0}, Llqg;-><init>()V

    sput-object v0, Llqg;->a:Llqg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    check-cast p1, Llpc;

    sget-object v0, Llqi;->h:Llqi;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Llqi;

    goto/16 :goto_8

    :cond_0
    iget-object v1, p1, Llpc;->e:Lnxa;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llpd;

    sget-object v6, Llqj;->e:Llqj;

    invoke-virtual {v6}, Lnws;->O()Lnwn;

    move-result-object v6

    iget-object v7, v2, Llpd;->d:Ljava/lang/String;

    iget-object v8, v6, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_1
    iget-object v8, v6, Lnwn;->b:Lnws;

    move-object v9, v8

    check-cast v9, Llqj;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v9, Llqj;->a:I

    or-int/2addr v10, v3

    iput v10, v9, Llqj;->a:I

    iput-object v7, v9, Llqj;->d:Ljava/lang/String;

    iget v7, v2, Llpd;->b:I

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x3

    packed-switch v7, :pswitch_data_0

    const/4 v13, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v13, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v13, 0x4

    goto :goto_1

    :pswitch_2
    const/4 v13, 0x3

    goto :goto_1

    :pswitch_3
    const/4 v13, 0x2

    goto :goto_1

    :pswitch_4
    const/4 v13, 0x1

    goto :goto_1

    :pswitch_5
    const/4 v13, 0x6

    :goto_1
    if-eqz v13, :cond_e

    add-int/lit8 v13, v13, -0x1

    packed-switch v13, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No known flag type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    if-ne v7, v11, :cond_2

    iget-object v2, v2, Llpd;->c:Ljava/lang/Object;

    check-cast v2, Lnvt;

    goto :goto_2

    :cond_2
    sget-object v2, Lnvt;->b:Lnvt;

    :goto_2
    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_3
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Llqj;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v10, v3, Llqj;->b:I

    iput-object v2, v3, Llqj;->c:Ljava/lang/Object;

    goto/16 :goto_7

    :pswitch_7
    if-ne v7, v4, :cond_4

    iget-object v2, v2, Llpd;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string v2, ""

    :goto_3
    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_5
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Llqj;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v11, v3, Llqj;->b:I

    iput-object v2, v3, Llqj;->c:Ljava/lang/Object;

    goto/16 :goto_7

    :pswitch_8
    if-ne v7, v12, :cond_6

    iget-object v2, v2, Llpd;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_4

    :cond_6
    const-wide/16 v2, 0x0

    :goto_4
    iget-object v5, v6, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_7
    iget-object v5, v6, Lnwn;->b:Lnws;

    check-cast v5, Llqj;

    iput v4, v5, Llqj;->b:I

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v5, Llqj;->c:Ljava/lang/Object;

    goto :goto_7

    :pswitch_9
    if-ne v7, v5, :cond_8

    iget-object v2, v2, Llpd;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_5

    :cond_8
    :goto_5
    iget-object v2, v6, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_9
    iget-object v2, v6, Lnwn;->b:Lnws;

    check-cast v2, Llqj;

    iput v12, v2, Llqj;->b:I

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Llqj;->c:Ljava/lang/Object;

    goto :goto_7

    :pswitch_a
    if-ne v7, v3, :cond_a

    iget-object v2, v2, Llpd;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_6

    :cond_a
    const-wide/16 v2, 0x0

    :goto_6
    iget-object v4, v6, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_b
    iget-object v4, v6, Lnwn;->b:Lnws;

    check-cast v4, Llqj;

    iput v5, v4, Llqj;->b:I

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Llqj;->c:Ljava/lang/Object;

    :goto_7
    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Llqj;

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_c
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Llqi;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Llqi;->g:Lnxa;

    invoke-interface {v4}, Lnxa;->c()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {v4}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v4

    iput-object v4, v3, Llqi;->g:Lnxa;

    :cond_d
    iget-object v3, v3, Llqi;->g:Lnxa;

    invoke-interface {v3, v2}, Lnxa;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    const/4 p1, 0x0

    throw p1

    :cond_f
    iget-object v1, p1, Llpc;->d:Ljava/lang/String;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_10
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v6, v2

    check-cast v6, Llqi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v6, Llqi;->a:I

    or-int/2addr v4, v7

    iput v4, v6, Llqi;->a:I

    iput-object v1, v6, Llqi;->d:Ljava/lang/String;

    iget-object v1, p1, Llpc;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_11
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v4, v2

    check-cast v4, Llqi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v4, Llqi;->a:I

    or-int/2addr v3, v6

    iput v3, v4, Llqi;->a:I

    iput-object v1, v4, Llqi;->b:Ljava/lang/String;

    iget-wide v3, p1, Llpc;->h:J

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_12
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Llqi;

    iget v6, v2, Llqi;->a:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v2, Llqi;->a:I

    iput-wide v3, v2, Llqi;->e:J

    iget v2, p1, Llpc;->a:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_14

    iget-object p1, p1, Llpc;->c:Lnvt;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_13
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Llqi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, Llqi;->a:I

    or-int/2addr v2, v5

    iput v2, v1, Llqi;->a:I

    iput-object p1, v1, Llqi;->c:Lnvt;

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_15

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_15
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Llqi;

    iget v3, p1, Llqi;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p1, Llqi;->a:I

    iput-wide v1, p1, Llqi;->f:J

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Llqi;

    :goto_8
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
