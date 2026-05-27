.class public final Loxv;
.super Ljava/lang/Object;


# instance fields
.field public final a:Loop;

.field public final b:Looo;

.field public final c:Loon;

.field public final d:Lomk;

.field private final e:I

.field private final f:Loop;

.field private final g:Looo;


# direct methods
.method public constructor <init>(I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Loxv;->e:I

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lolp;->j(J)Looo;

    move-result-object v2

    iput-object v2, p0, Loxv;->g:Looo;

    invoke-static {v0, v1}, Lolp;->j(J)Looo;

    move-result-object v2

    iput-object v2, p0, Loxv;->b:Looo;

    new-instance v2, Lowe;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v0, v1, v3, v4}, Lowe;-><init>(JLowe;I)V

    invoke-static {v2}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object v0

    iput-object v0, p0, Loxv;->f:Loop;

    invoke-static {v2}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object v0

    iput-object v0, p0, Loxv;->a:Loop;

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lolp;->i(I)Loon;

    move-result-object p1

    iput-object p1, p0, Loxv;->c:Loon;

    new-instance p1, Lawq;

    const/16 v0, 0xe

    invoke-direct {p1, p0, v0}, Lawq;-><init>(Loxv;I)V

    iput-object p1, p0, Loxv;->d:Lomk;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    :cond_0
    iget-object v0, p0, Loxv;->c:Loon;

    :cond_1
    iget v1, v0, Loon;->b:I

    iget v2, p0, Loxv;->e:I

    if-ge v1, v2, :cond_11

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1, v2}, Loon;->c(II)Z

    move-result v2

    if-eqz v2, :cond_1

    if-gez v1, :cond_10

    iget-object v0, p0, Loxv;->f:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Lowe;

    iget-object v1, p0, Loxv;->g:Looo;

    invoke-virtual {v1}, Looo;->b()J

    move-result-wide v1

    sget v3, Loxw;->f:I

    int-to-long v3, v3

    div-long v3, v1, v3

    iget-object v5, p0, Loxv;->f:Loop;

    :goto_0
    move-object v6, v0

    :cond_2
    :goto_1
    iget-wide v7, v6, Lowe;->b:J

    cmp-long v9, v7, v3

    if-ltz v9, :cond_3

    invoke-virtual {v6}, Lowe;->g()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    invoke-virtual {v6}, Lowe;->a()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lowd;->a:Loxb;

    if-ne v7, v8, :cond_d

    move-object v6, v8

    :cond_4
    invoke-static {v6}, Lowz;->a(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v6}, Lowz;->b(Ljava/lang/Object;)Lowe;

    move-result-object v7

    :cond_5
    :goto_2
    iget-object v8, v5, Loop;->a:Ljava/lang/Object;

    check-cast v8, Lowe;

    iget-wide v9, v8, Lowe;->b:J

    iget-wide v11, v7, Lowe;->b:J

    cmp-long v13, v9, v11

    if-ltz v13, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Lowe;->h()Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v5, v8, v7}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v8}, Lowe;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v8}, Lowe;->c()V

    goto :goto_3

    :cond_8
    invoke-virtual {v7}, Lowe;->f()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lowe;->c()V

    goto :goto_2

    :cond_9
    :goto_3
    invoke-static {v6}, Lowz;->b(Ljava/lang/Object;)Lowe;

    move-result-object v0

    iget-object v5, v0, Lowe;->a:Loop;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Loop;->b(Ljava/lang/Object;)V

    iget-wide v5, v0, Lowe;->b:J

    cmp-long v7, v5, v3

    if-gtz v7, :cond_0

    sget v3, Loxw;->f:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v2, v1

    sget-object v1, Loxw;->b:Loxb;

    iget-object v3, v0, Lowe;->d:Llhz;

    invoke-virtual {v3, v2}, Llhz;->o(I)Loop;

    move-result-object v3

    invoke-virtual {v3, v1}, Loop;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    sget v1, Loxw;->a:I

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_b

    iget-object v4, v0, Lowe;->d:Llhz;

    invoke-virtual {v4, v2}, Llhz;->o(I)Loop;

    move-result-object v4

    iget-object v4, v4, Loop;->a:Ljava/lang/Object;

    sget-object v5, Loxw;->c:Loxb;

    if-ne v4, v5, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    sget-object v1, Loxw;->b:Loxb;

    sget-object v3, Loxw;->d:Loxb;

    iget-object v0, v0, Lowe;->d:Llhz;

    invoke-virtual {v0, v2}, Llhz;->o(I)Loop;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_5
    return-void

    :cond_c
    sget-object v0, Loxw;->e:Loxb;

    if-eq v1, v0, :cond_0

    check-cast v1, Looz;

    sget-object v0, Lojk;->a:Lojk;

    iget-object v2, p0, Loxv;->d:Lomk;

    invoke-interface {v1, v0, v2}, Looz;->j(Ljava/lang/Object;Lomk;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Looz;->l()V

    return-void

    :cond_d
    check-cast v7, Lowe;

    if-eqz v7, :cond_e

    move-object v6, v7

    goto/16 :goto_1

    :cond_e
    iget-wide v7, v6, Lowe;->b:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    invoke-static {v7, v8, v6}, Loxw;->a(JLowe;)Lowe;

    move-result-object v7

    invoke-virtual {v6, v7}, Lowe;->e(Lowe;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Lowe;->g()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v6}, Lowe;->c()V

    :cond_f
    move-object v6, v7

    goto/16 :goto_1

    :cond_10
    return-void

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The number of released permits cannot be greater than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method
