.class public Lfzs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Landroid/content/res/Resources;

.field private final c:Z


# direct methods
.method private final declared-synchronized 33f5b80483094659737b73d90f80a8a4m()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean v0, p0, Lfzs;->c:Z

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lfzs;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "fzs"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lfzm;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Lfzm;->c()Z

    move-result p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lfzs;->c:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput-object p1, p0, Lfzs;->b:Landroid/content/res/Resources;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private final declared-synchronized f875135777c17da3cef2ea6eeff5be29m(I)I
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_7

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Lfzs;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    invoke-interface {v1, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const/16 v1, 0x6f

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const-string v1, "Dimension not found: %d"

    nop

    invoke-interface {v0, v1, p1}, Lscz;->t(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    float-to-int p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lfzs;->b:Landroid/content/res/Resources;

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_11
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lpby;)Lgab;
    .locals 5

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_4

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xd

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v0, Lgab;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lgab;-><init>()V

    iput-object p1, v0, Lgab;->d:Lpby;

    nop

    nop

    invoke-direct {p0}, Lfzs;->33f5b80483094659737b73d90f80a8a4m()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, v0, Lgab;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    sget-object v1, Lgad;->c:Lgad;

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lgab;->b:Lgad;

    nop

    nop

    nop

    nop

    sget-object v1, Lgad;->d:Lgad;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lgab;->c:Lgad;

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    sget-object v1, Lgad;->b:Lgad;

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lgab;->b:Lgad;

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lgad;->c:Lgad;

    nop

    nop

    nop

    iput-object v1, v0, Lgab;->c:Lgad;

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lpby;->b:Lpby;

    nop

    invoke-virtual {p1, v1}, Lpby;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    const p1, 0x7f070710

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v1

    nop

    nop

    nop

    iput v1, v0, Lgab;->l:I

    nop

    nop

    nop

    nop

    nop

    const v1, 0x7f07070d

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    iput v2, v0, Lgab;->m:I

    nop

    iget-boolean v2, v0, Lgab;->a:Z

    nop

    const v3, 0x7f070700

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    const v2, 0x7f0706f7

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    :cond_2
    invoke-direct {p0, v3}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    nop

    nop

    :goto_c
    iput v2, v0, Lgab;->e:I

    nop

    nop

    iget-boolean v2, v0, Lgab;->a:Z

    nop

    const v4, 0x7f0706fd

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    const v2, 0x7f0706f4

    nop

    invoke-direct {p0, v2}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    :cond_3
    invoke-direct {p0, v4}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    :goto_d
    iput v2, v0, Lgab;->f:I

    nop

    iget-boolean v2, v0, Lgab;->a:Z

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    invoke-direct {p0, v3}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    :cond_4
    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput p1, v0, Lgab;->n:I

    nop

    iget-boolean p1, v0, Lgab;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_5

    nop

    invoke-direct {p0, v4}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    goto :goto_f

    nop

    nop

    nop

    :cond_5
    invoke-direct {p0, v1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput p1, v0, Lgab;->o:I

    nop

    nop

    const p1, 0x7f070709

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    const p1, 0x7f070706

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    const p1, 0x7f0706fa

    nop

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    iput p1, v0, Lgab;->g:I

    nop

    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_6
    sget-object v1, Lpby;->a:Lpby;

    nop

    nop

    invoke-virtual {p1, v1}, Lpby;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_b

    nop

    nop

    nop

    nop

    const p1, 0x7f070711

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iput v1, v0, Lgab;->l:I

    nop

    nop

    nop

    const v1, 0x7f07070e

    nop

    nop

    nop

    invoke-direct {p0, v1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    iput v2, v0, Lgab;->m:I

    nop

    nop

    nop

    iget-boolean v2, v0, Lgab;->a:Z

    nop

    const v3, 0x7f070701

    nop

    nop

    nop

    if-eqz v2, :cond_7

    nop

    const v2, 0x7f0706f8

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    nop

    goto :goto_10

    nop

    :cond_7
    invoke-direct {p0, v3}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    nop

    nop

    :goto_10
    iput v2, v0, Lgab;->e:I

    nop

    nop

    iget-boolean v2, v0, Lgab;->a:Z

    nop

    nop

    nop

    nop

    nop

    const v4, 0x7f0706fe

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_8

    nop

    const v2, 0x7f0706f5

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    goto :goto_11

    nop

    nop

    nop

    :cond_8
    invoke-direct {p0, v4}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    :goto_11
    iput v2, v0, Lgab;->f:I

    nop

    iget-boolean v2, v0, Lgab;->a:Z

    nop

    nop

    if-eqz v2, :cond_9

    nop

    invoke-direct {p0, v3}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    :cond_9
    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    :goto_12
    iput p1, v0, Lgab;->n:I

    nop

    nop

    nop

    nop

    nop

    iget-boolean p1, v0, Lgab;->a:Z

    nop

    nop

    nop

    if-eqz p1, :cond_a

    nop

    invoke-direct {p0, v4}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    :cond_a
    invoke-direct {p0, v1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    :goto_13
    iput p1, v0, Lgab;->o:I

    nop

    nop

    const p1, 0x7f07070a

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    const p1, 0x7f070707

    nop

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    const p1, 0x7f0706fb

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    iput p1, v0, Lgab;->g:I

    nop

    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_b
    const p1, 0x7f070712

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    iput v1, v0, Lgab;->l:I

    nop

    const v1, 0x7f07070f

    nop

    nop

    nop

    invoke-direct {p0, v1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    iput v2, v0, Lgab;->m:I

    nop

    nop

    nop

    nop

    nop

    iget-boolean v2, v0, Lgab;->a:Z

    nop

    nop

    const v3, 0x7f070702

    nop

    nop

    if-eqz v2, :cond_c

    nop

    const v2, 0x7f0706f9

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    :cond_c
    invoke-direct {p0, v3}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    :goto_14
    iput v2, v0, Lgab;->e:I

    nop

    nop

    iget-boolean v2, v0, Lgab;->a:Z

    nop

    nop

    nop

    nop

    nop

    const v4, 0x7f0706ff

    nop

    nop

    if-eqz v2, :cond_d

    nop

    nop

    const v2, 0x7f0706f6

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    :cond_d
    invoke-direct {p0, v4}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v2, v0, Lgab;->f:I

    nop

    nop

    nop

    nop

    iget-boolean v2, v0, Lgab;->a:Z

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_e

    nop

    nop

    nop

    invoke-direct {p0, v3}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    nop

    nop

    :cond_e
    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    :goto_16
    iput p1, v0, Lgab;->n:I

    nop

    iget-boolean p1, v0, Lgab;->a:Z

    nop

    nop

    if-eqz p1, :cond_f

    nop

    nop

    invoke-direct {p0, v4}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    nop

    :cond_f
    invoke-direct {p0, v1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    :goto_17
    iput p1, v0, Lgab;->o:I

    nop

    nop

    nop

    nop

    nop

    const p1, 0x7f07070b

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    const p1, 0x7f070708

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    const p1, 0x7f0706fc

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    iput p1, v0, Lgab;->g:I

    nop

    nop

    nop

    nop

    :goto_18
    const p1, 0x7f0706f3

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    nop

    nop

    iput p1, v0, Lgab;->h:I

    nop

    nop

    nop

    const p1, 0x7f070705

    nop

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    nop

    nop

    iput p1, v0, Lgab;->i:I

    nop

    nop

    nop

    nop

    nop

    const p1, 0x7f0706f2

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    nop

    nop

    iput p1, v0, Lgab;->j:I

    nop

    nop

    nop

    nop

    const p1, 0x7f070704

    nop

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    iput p1, v0, Lgab;->k:I

    nop

    nop

    nop

    nop

    const p1, 0x7f0706f1

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    iput p1, v0, Lgab;->p:I

    nop

    nop

    nop

    const p1, 0x7f070703

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lfzs;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    iput p1, v0, Lgab;->q:I

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object v0

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method
