.class public final Lgcp;
.super Ljwh;


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(Lfuz;Lgcb;Ljvs;Ljvs;Ljvs;Lgda;[B)V
    .locals 1

    const/4 p7, 0x5

    new-array p7, p7, [Ljvs;

    const/4 v0, 0x0

    aput-object p2, p7, v0

    const/4 p2, 0x1

    aput-object p3, p7, p2

    const/4 p3, 0x2

    aput-object p4, p7, p3

    const/4 p3, 0x3

    aput-object p5, p7, p3

    const/4 p3, 0x4

    iget-object p4, p6, Lgda;->a:Ljava/lang/Object;

    aput-object p4, p7, p3

    invoke-static {p7}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object p3

    invoke-direct {p0, p3}, Ljwh;-><init>(Ljvs;)V

    invoke-virtual {p1}, Lklw;->J()Z

    move-result p3

    iput-boolean p3, p0, Lgcp;->a:Z

    invoke-virtual {p1}, Lklw;->k()Lklv;

    move-result-object p1

    sget-object p3, Lklv;->a:Lklv;

    if-ne p1, p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lgcp;->b:Z

    return-void
.end method

.method private static c(Lgch;Z)Lfwl;
    .locals 1

    iget-boolean v0, p0, Lgch;->a:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lgch;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lgch;->d:Z

    if-eqz p0, :cond_1

    sget-object p0, Lfwl;->c:Lfwl;

    return-object p0

    :cond_1
    sget-object p0, Lfwl;->a:Lfwl;

    return-object p0

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    iget-boolean p0, p0, Lgch;->d:Z

    if-eqz p0, :cond_3

    sget-object p0, Lfwl;->d:Lfwl;

    return-object p0

    :cond_3
    sget-object p0, Lfwl;->b:Lfwl;

    return-object p0

    :cond_4
    iget-boolean p0, p0, Lgch;->d:Z

    if-eqz p0, :cond_5

    sget-object p0, Lfwl;->c:Lfwl;

    return-object p0

    :cond_5
    sget-object p0, Lfwl;->a:Lfwl;

    return-object p0
.end method


# virtual methods
.method protected final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Ljava/util/List;

    new-instance v7, Lgch;

    iget-boolean v1, p0, Lgcp;->a:Z

    iget-boolean v2, p0, Lgcp;->b:Z

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgcc;

    iget v3, v0, Lgcc;->e:I

    const/4 v9, 0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgcf;

    iget v4, v0, Lgcf;->e:I

    const/4 v10, 0x2

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v11, 0x3

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lgch;-><init>(ZZIIZZ)V

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leeg;

    sget-object v0, Leeg;->a:Leeg;

    invoke-virtual {p1}, Leeg;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Should be unreachable for valid Enums. FlashRecommendation="

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-boolean p1, v7, Lgch;->c:Z

    invoke-static {v7, p1}, Lgcp;->c(Lgch;Z)Lfwl;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-static {v7, v8}, Lgcp;->c(Lgch;Z)Lfwl;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-static {v7, v9}, Lgcp;->c(Lgch;Z)Lfwl;

    move-result-object p1

    :goto_0
    sget-object v0, Lfwl;->b:Lfwl;

    if-ne p1, v0, :cond_0

    iget-boolean v0, v7, Lgch;->a:Z

    invoke-static {v0}, Lmoz;->p(Z)V

    goto :goto_1

    :cond_0
    sget-object v0, Lfwl;->c:Lfwl;

    if-eq p1, v0, :cond_1

    sget-object v0, Lfwl;->e:Lfwl;

    if-eq p1, v0, :cond_1

    sget-object v0, Lfwl;->d:Lfwl;

    if-ne p1, v0, :cond_2

    :cond_1
    iget-boolean v0, v7, Lgch;->d:Z

    invoke-static {v0}, Lmoz;->p(Z)V

    :cond_2
    :goto_1
    sget-object v0, Lfwl;->e:Lfwl;

    if-eq p1, v0, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    :goto_2
    invoke-static {v8}, Lmoz;->p(Z)V

    iget v0, v7, Lgch;->e:I

    if-ne v0, v9, :cond_7

    iget p1, v7, Lgch;->f:I

    if-ne p1, v9, :cond_5

    :cond_4
    sget-object p1, Lfwl;->a:Lfwl;

    goto :goto_7

    :cond_5
    if-ne p1, v11, :cond_6

    sget-object p1, Lfwl;->c:Lfwl;

    goto :goto_7

    :cond_6
    iget-boolean p1, v7, Lgch;->d:Z

    if-eqz p1, :cond_4

    :goto_3
    sget-object p1, Lfwl;->e:Lfwl;

    goto :goto_7

    :cond_7
    if-ne v0, v11, :cond_b

    iget p1, v7, Lgch;->f:I

    if-ne p1, v9, :cond_9

    :cond_8
    :goto_4
    sget-object p1, Lfwl;->b:Lfwl;

    goto :goto_7

    :cond_9
    if-ne p1, v11, :cond_a

    :goto_5
    sget-object p1, Lfwl;->d:Lfwl;

    goto :goto_7

    :cond_a
    iget-boolean p1, v7, Lgch;->d:Z

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_b
    if-ne v0, v10, :cond_13

    iget v0, v7, Lgch;->f:I

    if-ne v0, v9, :cond_c

    iget-boolean p1, v7, Lgch;->a:Z

    if-eqz p1, :cond_4

    iget-boolean p1, v7, Lgch;->c:Z

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_c
    if-ne v0, v11, :cond_f

    sget-object v0, Lfwl;->c:Lfwl;

    if-eq p1, v0, :cond_e

    sget-object v1, Lfwl;->a:Lfwl;

    if-ne p1, v1, :cond_d

    goto :goto_6

    :cond_d
    sget-object p1, Lfwl;->d:Lfwl;

    return-object p1

    :cond_e
    :goto_6
    move-object p1, v0

    goto :goto_7

    :cond_f
    iget-boolean v0, v7, Lgch;->d:Z

    if-eqz v0, :cond_12

    sget-object v0, Lfwl;->d:Lfwl;

    if-eq p1, v0, :cond_e

    sget-object v1, Lfwl;->b:Lfwl;

    if-ne p1, v1, :cond_10

    goto :goto_6

    :cond_10
    sget-object v0, Lfwl;->c:Lfwl;

    if-eq p1, v0, :cond_11

    sget-object v0, Lfwl;->a:Lfwl;

    if-ne p1, v0, :cond_13

    :cond_11
    goto :goto_3

    :cond_12
    :goto_7
    return-object p1

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown flash setting, or impossible combination!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
