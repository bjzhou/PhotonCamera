.class public final synthetic Lepn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lepo;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lepo;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lepn;->a:Lepo;

    iput p2, p0, Lepn;->b:I

    iput-object p3, p0, Lepn;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lepn;->a:Lepo;

    iget v1, p0, Lepn;->b:I

    iget-object v2, p0, Lepn;->c:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lntc;

    invoke-static {v4, v3}, Lmqh;->a(Ljava/lang/Class;Ljava/lang/String;)Lmqp;

    move-result-object v3

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lntc;

    iget v8, v8, Lntc;->f:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lntc;

    invoke-virtual {v8}, Lntc;->name()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "Received failure signal %d (%s) for shot %d"

    invoke-static {v4, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lepo;->l:Leqf;

    if-eqz v4, :cond_3

    iget-object v7, v0, Lepo;->i:Leea;

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lntc;

    sget-object v9, Lepq;->a:Lnak;

    invoke-virtual {v9}, Lnaf;->c()Lnaz;

    move-result-object v9

    check-cast v9, Lnah;

    const/16 v10, 0x716

    invoke-interface {v9, v10}, Lnah;->G(I)Lnaz;

    move-result-object v9

    check-cast v9, Lnah;

    invoke-virtual {v8}, Lntc;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Leea;->a()I

    move-result v7

    const-string v11, "onMotionBlurFailureSignal %s for shot %d"

    invoke-interface {v9, v11, v10, v7}, Lnah;->x(Ljava/lang/String;Ljava/lang/Object;I)V

    check-cast v4, Lepq;

    iget-object v4, v4, Lepq;->e:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lepc;

    iget-object v7, v4, Lepc;->a:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Licf;

    if-eqz v7, :cond_1

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lntc;->ordinal()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    const/4 v7, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v7, v4, Lepc;->h:Landroid/content/Context;

    const v9, 0x7f140362

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lepc;->a(Ljava/lang/String;)Licf;

    move-result-object v7

    goto :goto_0

    :pswitch_2
    iget-object v7, v4, Lepc;->h:Landroid/content/Context;

    const v9, 0x7f140509

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lepc;->a(Ljava/lang/String;)Licf;

    move-result-object v7

    goto :goto_0

    :pswitch_3
    iget-object v7, v4, Lepc;->h:Landroid/content/Context;

    const v9, 0x7f140399

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lepc;->a(Ljava/lang/String;)Licf;

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_2

    iget-object v9, v4, Lepc;->a:Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    goto :goto_1

    :cond_2
    sget-object v7, Lmpx;->a:Lmpx;

    :goto_1
    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Licf;

    invoke-virtual {v4, v7}, Licd;->g(Licf;)V

    :cond_3
    iget-object v4, v0, Lepo;->n:Lcvr;

    iget-object v7, v4, Lcvr;->a:Ljava/lang/Object;

    check-cast v7, Lnwn;

    iget-object v8, v7, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_4
    iget-object v7, v7, Lnwn;->b:Lnws;

    check-cast v7, Lnjt;

    sget-object v8, Lnjt;->x:Lnjt;

    iget v8, v7, Lnjt;->a:I

    or-int/2addr v5, v8

    iput v5, v7, Lnjt;->a:I

    iput-boolean v6, v7, Lnjt;->c:Z

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v4, v4, Lcvr;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lntc;

    iget v3, v3, Lntc;->f:I

    check-cast v4, Lnwn;

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_5
    iget-object v4, v4, Lnwn;->b:Lnws;

    check-cast v4, Lnjt;

    iget v5, v4, Lnjt;->a:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lnjt;->a:I

    iput v3, v4, Lnjt;->d:I

    goto :goto_2

    :cond_6
    iget-object v3, v4, Lcvr;->a:Ljava/lang/Object;

    check-cast v3, Lnwn;

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_7
    iget-object v3, v3, Lnwn;->b:Lnws;

    check-cast v3, Lnjt;

    iget v4, v3, Lnjt;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Lnjt;->a:I

    iput v6, v3, Lnjt;->d:I

    :goto_2
    invoke-virtual {v0}, Lepo;->c()V

    sget-object v3, Lntc;->d:Lntc;

    invoke-virtual {v3}, Lntc;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, v0, Lepo;->b:Lepl;

    sget-object v5, Lchy;->m:Lchy;

    invoke-virtual {v4, v1, v3, v5}, Lepl;->a(IZLjava/lang/Runnable;)V

    iget-object v1, v0, Lepo;->j:Lnph;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lnph;->isDone()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v0, v0, Lepo;->j:Lnph;

    if-eqz v3, :cond_8

    new-instance v1, Ldod;

    invoke-direct {v1, v2}, Ldod;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0, v1}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
