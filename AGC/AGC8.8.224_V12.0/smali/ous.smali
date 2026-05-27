.class public final Lous;
.super Lovd;

# interfaces
.implements Loun;
.implements Lott;


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:J

.field public c:J

.field private final f:I

.field private final g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lovd;-><init>()V

    iput p1, p0, Lous;->f:I

    iput p2, p0, Lous;->g:I

    return-void
.end method

.method static synthetic d(Lous;Lotu;Loku;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lour;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lour;

    iget v4, v3, Lour;->c:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lour;->c:I

    goto :goto_0

    :cond_0
    new-instance v3, Lour;

    invoke-direct {v3, v1, v2}, Lour;-><init>(Lous;Loku;)V

    :goto_0
    iget-object v2, v3, Lour;->a:Ljava/lang/Object;

    sget-object v4, Lolc;->a:Lolc;

    iget v5, v3, Lour;->c:I

    const/4 v6, 0x1

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v3, Lour;->g:Lora;

    iget-object v1, v3, Lour;->f:Louu;

    iget-object v5, v3, Lour;->e:Lotu;

    iget-object v7, v3, Lour;->d:Lous;

    :try_start_0
    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :pswitch_1
    iget-object v0, v3, Lour;->g:Lora;

    iget-object v1, v3, Lour;->f:Louu;

    iget-object v5, v3, Lour;->e:Lotu;

    iget-object v7, v3, Lour;->d:Lous;

    :try_start_1
    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :pswitch_2
    iget-object v1, v3, Lour;->f:Louu;

    iget-object v0, v3, Lour;->e:Lotu;

    iget-object v5, v3, Lour;->d:Lous;

    :try_start_2
    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v1

    move-object v1, v5

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v7, v5

    goto/16 :goto_6

    :pswitch_3
    invoke-static {v2}, Lljr;->aO(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lovd;->i()Lovf;

    move-result-object v2

    check-cast v2, Louu;

    :try_start_3
    instance-of v5, v0, Lova;

    if-nez v5, :cond_a

    :goto_1
    invoke-interface {v3}, Loku;->d()Lola;

    move-result-object v5

    sget-object v7, Lora;->c:Lokv;

    invoke-interface {v5, v7}, Lola;->get(Loky;)Lokx;

    move-result-object v5

    check-cast v5, Lora;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object v7, v1

    move-object v1, v2

    move-object/from16 v16, v5

    move-object v5, v0

    move-object/from16 v0, v16

    :cond_1
    :goto_2
    :try_start_4
    sget-object v2, Love;->a:[Loku;

    monitor-enter v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-direct {v7, v1}, Lous;->m(Louu;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-gez v12, :cond_2

    sget-object v8, Lout;->a:Loxb;

    goto :goto_3

    :cond_2
    iget-wide v12, v1, Louu;->a:J

    iget-object v2, v7, Lous;->a:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v8, v9}, Lout;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v14, v2, Louq;

    if-eqz v14, :cond_3

    check-cast v2, Louq;

    iget-object v2, v2, Louq;->c:Ljava/lang/Object;

    :cond_3
    const-wide/16 v14, 0x1

    add-long/2addr v8, v14

    iput-wide v8, v1, Louu;->a:J

    invoke-virtual {v7, v12, v13}, Lous;->g(J)[Loku;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v16, v8

    move-object v8, v2

    move-object/from16 v2, v16

    :goto_3
    :try_start_6
    monitor-exit v7

    array-length v9, v2

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v9, :cond_5

    aget-object v13, v2, v12

    if-eqz v13, :cond_4

    sget-object v14, Lojk;->a:Lojk;

    invoke-interface {v13, v14}, Loku;->e(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_5
    sget-object v2, Lout;->a:Loxb;

    if-ne v8, v2, :cond_8

    iput-object v7, v3, Lour;->d:Lous;

    iput-object v5, v3, Lour;->e:Lotu;

    iput-object v1, v3, Lour;->f:Louu;

    iput-object v0, v3, Lour;->g:Lora;

    const/4 v2, 0x2

    iput v2, v3, Lour;->c:I

    new-instance v2, Lopa;

    invoke-static {v3}, Lolp;->g(Loku;)Loku;

    move-result-object v8

    invoke-direct {v2, v8, v6}, Lopa;-><init>(Loku;I)V

    invoke-virtual {v2}, Lopa;->x()V

    monitor-enter v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-direct {v7, v1}, Lous;->m(Louu;)J

    move-result-wide v8

    cmp-long v12, v8, v10

    if-gez v12, :cond_6

    iput-object v2, v1, Louu;->b:Loku;

    goto :goto_5

    :cond_6
    sget-object v8, Lojk;->a:Lojk;

    invoke-interface {v2, v8}, Loku;->e(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_5
    :try_start_8
    monitor-exit v7

    invoke-virtual {v2}, Lopa;->m()Ljava/lang/Object;

    move-result-object v2

    sget-object v8, Lolc;->a:Lolc;

    if-eq v2, v8, :cond_7

    sget-object v2, Lojk;->a:Lojk;

    :cond_7
    if-ne v2, v4, :cond_1

    return-object v4

    :catchall_3
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_8
    if-eqz v0, :cond_9

    invoke-static {v0}, Lolp;->T(Lora;)V

    :cond_9
    iput-object v7, v3, Lour;->d:Lous;

    iput-object v5, v3, Lour;->e:Lotu;

    iput-object v1, v3, Lour;->f:Louu;

    iput-object v0, v3, Lour;->g:Lora;

    const/4 v2, 0x3

    iput v2, v3, Lour;->c:I

    invoke-interface {v5, v8, v3}, Lotu;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_1

    return-object v4

    :catchall_4
    move-exception v0

    monitor-exit v7

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_6

    :cond_a
    :try_start_9
    move-object v4, v0

    check-cast v4, Lova;

    iput-object v1, v3, Lour;->d:Lous;

    iput-object v0, v3, Lour;->e:Lotu;

    iput-object v2, v3, Lour;->f:Louu;

    iput v6, v3, Lour;->c:I

    const/4 v0, 0x0

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v0

    move-object v7, v1

    move-object v1, v2

    :goto_6
    invoke-virtual {v7, v1}, Lovd;->j(Lovf;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final k()I
    .locals 2

    iget v0, p0, Lous;->h:I

    iget v1, p0, Lous;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method private final l()J
    .locals 4

    invoke-virtual {p0}, Lous;->c()J

    move-result-wide v0

    iget v2, p0, Lous;->h:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final m(Louu;)J
    .locals 6

    iget-wide v0, p1, Louu;->a:J

    invoke-direct {p0}, Lous;->l()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-wide v0

    :cond_0
    iget p1, p0, Lous;->g:I

    const-wide/16 v2, -0x1

    if-lez p1, :cond_1

    return-wide v2

    :cond_1
    invoke-virtual {p0}, Lous;->c()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-lez p1, :cond_2

    return-wide v2

    :cond_2
    iget p1, p0, Lous;->i:I

    if-nez p1, :cond_3

    return-wide v2

    :cond_3
    return-wide v0
.end method

.method private final n()V
    .locals 10

    iget-object v0, p0, Lous;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lous;->c()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lout;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    iget v0, p0, Lous;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lous;->h:I

    invoke-virtual {p0}, Lous;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lous;->b:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iput-wide v0, p0, Lous;->b:J

    :cond_0
    iget-wide v2, p0, Lous;->c:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_3

    iget v2, p0, Lovd;->e:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lovd;->d:[Lovf;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget-object v4, v2, v3

    if-eqz v4, :cond_1

    check-cast v4, Louu;

    iget-wide v5, v4, Louu;->a:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_1

    cmp-long v7, v5, v0

    if-gez v7, :cond_1

    iput-wide v0, v4, Louu;->a:J

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-wide v0, p0, Lous;->c:J

    :cond_3
    sget-boolean v0, Lopw;->a:Z

    return-void
.end method

.method private final o(Ljava/lang/Object;)V
    .locals 6

    invoke-direct {p0}, Lous;->k()I

    move-result v0

    iget-object v1, p0, Lous;->a:[Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v2}, Lous;->r([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    add-int/2addr v2, v2

    invoke-direct {p0, v1, v0, v2}, Lous;->r([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lous;->c()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3, p1}, Lout;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final p(JJJJ)V
    .locals 6

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sget-boolean v2, Lopw;->a:Z

    invoke-virtual {p0}, Lous;->c()J

    move-result-wide v2

    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iget-object v4, p0, Lous;->a:[Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5}, Lout;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lous;->b:J

    iput-wide p3, p0, Lous;->c:J

    sub-long p1, p5, v0

    long-to-int p2, p1

    iput p2, p0, Lous;->h:I

    sub-long/2addr p7, p5

    long-to-int p1, p7

    iput p1, p0, Lous;->i:I

    return-void
.end method

.method private final q(Ljava/lang/Object;)Z
    .locals 12

    iget v0, p0, Lovd;->e:I

    const/4 v9, 0x1

    if-nez v0, :cond_2

    sget-boolean v0, Lopw;->a:Z

    iget v0, p0, Lous;->f:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lous;->o(Ljava/lang/Object;)V

    iget v0, p0, Lous;->h:I

    add-int/2addr v0, v9

    iput v0, p0, Lous;->h:I

    iget v1, p0, Lous;->f:I

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lous;->n()V

    :cond_1
    invoke-virtual {p0}, Lous;->c()J

    move-result-wide v0

    iget v2, p0, Lous;->h:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lous;->c:J

    :goto_0
    return v9

    :cond_2
    iget v0, p0, Lous;->h:I

    iget v1, p0, Lous;->g:I

    if-lt v0, v1, :cond_4

    iget-wide v0, p0, Lous;->c:J

    iget-wide v2, p0, Lous;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lous;->o(Ljava/lang/Object;)V

    iget v0, p0, Lous;->h:I

    add-int/2addr v0, v9

    iput v0, p0, Lous;->h:I

    iget v1, p0, Lous;->g:I

    if-le v0, v1, :cond_5

    invoke-direct {p0}, Lous;->n()V

    :cond_5
    invoke-virtual {p0}, Lous;->c()J

    move-result-wide v0

    iget v2, p0, Lous;->h:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lous;->b:J

    sub-long/2addr v0, v2

    iget v4, p0, Lous;->f:I

    long-to-int v1, v0

    if-le v1, v4, :cond_6

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    iget-wide v4, p0, Lous;->c:J

    invoke-direct {p0}, Lous;->l()J

    move-result-wide v6

    invoke-virtual {p0}, Lous;->c()J

    move-result-wide v0

    iget v8, p0, Lous;->h:I

    int-to-long v10, v8

    add-long/2addr v0, v10

    iget v8, p0, Lous;->i:I

    int-to-long v10, v8

    add-long/2addr v10, v0

    move-object v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lous;->p(JJJJ)V

    :cond_6
    return v9
.end method

.method private final r([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 6

    if-lez p3, :cond_2

    new-array p3, p3, [Ljava/lang/Object;

    iput-object p3, p0, Lous;->a:[Ljava/lang/Object;

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p0}, Lous;->c()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    int-to-long v3, v2

    add-long/2addr v3, v0

    invoke-static {p1, v3, v4}, Lout;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p3, v3, v4, v5}, Lout;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p3

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Buffer size overflow"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final s([Loku;)[Loku;
    .locals 10

    iget v0, p0, Lovd;->e:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lovd;->d:[Lovf;

    if-eqz v0, :cond_2

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    check-cast v3, Louu;

    iget-object v4, v3, Louu;->b:Loku;

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lous;->m(Louu;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_1

    array-length v5, p1

    if-lt v1, v5, :cond_0

    const/4 v6, 0x2

    add-int/2addr v5, v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    add-int/lit8 v5, v1, 0x1

    move-object v6, p1

    check-cast v6, [Loku;

    aput-object v4, v6, v1

    const/4 v1, 0x0

    iput-object v1, v3, Louu;->b:Loku;

    move v1, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    check-cast p1, [Loku;

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p0, p1}, Lous;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lojk;->a:Lojk;

    goto/16 :goto_3

    :cond_0
    new-instance v6, Lopa;

    invoke-static {p2}, Lolp;->g(Loku;)Loku;

    move-result-object v0

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Lopa;-><init>(Loku;I)V

    invoke-virtual {v6}, Lopa;->x()V

    sget-object v8, Love;->a:[Loku;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lous;->q(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lojk;->a:Lojk;

    invoke-interface {v6, p1}, Loku;->e(Ljava/lang/Object;)V

    invoke-direct {p0, v8}, Lous;->s([Loku;)[Loku;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    new-instance v9, Louq;

    invoke-virtual {p0}, Lous;->c()J

    move-result-wide v0

    invoke-direct {p0}, Lous;->k()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    move-object v0, v9

    move-object v1, p0

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Louq;-><init>(Lous;JLjava/lang/Object;Loku;)V

    invoke-direct {p0, v9}, Lous;->o(Ljava/lang/Object;)V

    iget p1, p0, Lous;->i:I

    add-int/2addr p1, v7

    iput p1, p0, Lous;->i:I

    iget p1, p0, Lous;->g:I

    if-nez p1, :cond_2

    invoke-direct {p0, v8}, Lous;->s([Loku;)[Loku;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_0
    move-object p1, v8

    move-object v0, v9

    :goto_1
    monitor-exit p0

    if-eqz v0, :cond_3

    invoke-static {v6, v0}, Lonm;->o(Looz;Loqh;)V

    :cond_3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    if-eqz v2, :cond_4

    sget-object v3, Lojk;->a:Lojk;

    invoke-interface {v2, v3}, Loku;->e(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Lopa;->m()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lolc;->a:Lolc;

    if-ne p1, v0, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    if-eq p1, v0, :cond_7

    sget-object p1, Lojk;->a:Lojk;

    :cond_7
    if-eq p1, v0, :cond_8

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_8
    :goto_3
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 5

    sget-object v0, Love;->a:[Loku;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lous;->q(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lous;->s([Loku;)[Loku;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    sget-object v4, Lojk;->a:Lojk;

    invoke-interface {v3, v4}, Loku;->e(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final c()J
    .locals 4

    iget-wide v0, p0, Lous;->c:J

    iget-wide v2, p0, Lous;->b:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final di(Lotu;Loku;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lous;->d(Lous;Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e()Lovf;
    .locals 1

    new-instance v0, Louu;

    invoke-direct {v0}, Louu;-><init>()V

    return-object v0
.end method

.method public final f()V
    .locals 5

    iget v0, p0, Lous;->g:I

    if-nez v0, :cond_1

    iget v0, p0, Lous;->i:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lous;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget v1, p0, Lous;->i:I

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lous;->c()J

    move-result-wide v1

    invoke-direct {p0}, Lous;->k()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, -0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lout;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lout;->a:Loxb;

    if-ne v1, v2, :cond_2

    iget v1, p0, Lous;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lous;->i:I

    invoke-virtual {p0}, Lous;->c()J

    move-result-wide v1

    invoke-direct {p0}, Lous;->k()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lout;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final g(J)[Loku;
    .locals 20

    move-object/from16 v9, p0

    sget-boolean v0, Lopw;->a:Z

    iget-wide v0, v9, Lous;->c:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    sget-object v0, Love;->a:[Loku;

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lous;->c()J

    move-result-wide v0

    iget v2, v9, Lous;->h:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget v4, v9, Lous;->g:I

    const-wide/16 v5, 0x1

    if-nez v4, :cond_1

    iget v4, v9, Lous;->i:I

    if-lez v4, :cond_1

    add-long/2addr v2, v5

    goto :goto_0

    :cond_1
    :goto_0
    iget v4, v9, Lovd;->e:I

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    iget-object v4, v9, Lovd;->d:[Lovf;

    if-eqz v4, :cond_4

    const/4 v8, 0x0

    :goto_1
    array-length v10, v4

    if-ge v8, v10, :cond_4

    aget-object v10, v4, v8

    if-eqz v10, :cond_3

    check-cast v10, Louu;

    iget-wide v10, v10, Louu;->a:J

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-ltz v14, :cond_3

    cmp-long v12, v10, v2

    if-ltz v12, :cond_2

    goto :goto_2

    :cond_2
    move-wide v2, v10

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    goto :goto_3

    :cond_5
    :goto_3
    iget-wide v10, v9, Lous;->c:J

    cmp-long v4, v2, v10

    if-gtz v4, :cond_6

    sget-object v0, Love;->a:[Loku;

    return-object v0

    :cond_6
    invoke-direct/range {p0 .. p0}, Lous;->l()J

    move-result-wide v10

    iget v4, v9, Lovd;->e:I

    if-lez v4, :cond_7

    sub-long v12, v10, v2

    iget v4, v9, Lous;->i:I

    iget v8, v9, Lous;->g:I

    long-to-int v13, v12

    sub-int/2addr v8, v13

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_4

    :cond_7
    iget v4, v9, Lous;->i:I

    :goto_4
    sget-object v8, Love;->a:[Loku;

    iget v12, v9, Lous;->i:I

    int-to-long v12, v12

    add-long/2addr v12, v10

    if-lez v4, :cond_b

    new-array v8, v4, [Loku;

    iget-object v14, v9, Lous;->a:[Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v5, v10

    :goto_5
    cmp-long v15, v10, v12

    if-gez v15, :cond_a

    invoke-static {v14, v10, v11}, Lout;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    move-wide/from16 v16, v2

    sget-object v2, Lout;->a:Loxb;

    if-eq v15, v2, :cond_9

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v7, 0x1

    check-cast v15, Louq;

    move-wide/from16 v18, v12

    iget-object v12, v15, Louq;->d:Loku;

    aput-object v12, v8, v7

    invoke-static {v14, v10, v11, v2}, Lout;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v2, v15, Louq;->c:Ljava/lang/Object;

    invoke-static {v14, v5, v6, v2}, Lout;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v12, 0x1

    add-long/2addr v5, v12

    if-ge v3, v4, :cond_8

    move v7, v3

    goto :goto_6

    :cond_8
    move-object v10, v8

    goto :goto_8

    :cond_9
    move-wide/from16 v18, v12

    const-wide/16 v12, 0x1

    :goto_6
    add-long/2addr v10, v12

    move-wide/from16 v2, v16

    move-wide/from16 v12, v18

    goto :goto_5

    :cond_a
    move-wide/from16 v16, v2

    move-wide/from16 v18, v12

    goto :goto_7

    :cond_b
    move-wide/from16 v16, v2

    move-wide/from16 v18, v12

    move-wide v5, v10

    :goto_7
    move-object v10, v8

    :goto_8
    sub-long v0, v5, v0

    iget v2, v9, Lovd;->e:I

    if-nez v2, :cond_c

    move-wide v3, v5

    goto :goto_9

    :cond_c
    move-wide/from16 v3, v16

    :goto_9
    iget-wide v7, v9, Lous;->b:J

    iget v2, v9, Lous;->f:I

    long-to-int v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v5, v0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget v2, v9, Lous;->g:I

    if-nez v2, :cond_d

    cmp-long v2, v0, v18

    if-gez v2, :cond_d

    iget-object v2, v9, Lous;->a:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0, v1}, Lout;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    sget-object v7, Lout;->a:Loxb;

    invoke-static {v2, v7}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    add-long/2addr v0, v7

    move-wide v1, v0

    goto :goto_a

    :cond_d
    move-wide v1, v0

    :goto_a
    move-object/from16 v0, p0

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v8}, Lous;->p(JJJJ)V

    invoke-virtual/range {p0 .. p0}, Lous;->f()V

    array-length v0, v10

    if-nez v0, :cond_e

    return-object v10

    :cond_e
    invoke-direct {v9, v10}, Lous;->s([Loku;)[Loku;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()[Lovf;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Louu;

    return-object v0
.end method
