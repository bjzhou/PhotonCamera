.class public final Lqxp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrtm;


# static fields
.field public static final synthetic a:I

.field private static volatile b:Lqwh;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/Object;

.field private volatile f:I

.field private volatile g:Ljava/lang/Object;

.field private volatile h:Z

.field private final i:Lqwy;

.field private volatile j:Lqnt;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Lqvl;)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    :try_start_0
    iget-object v1, v2, Lqwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Lqxs;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_18

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lqxp;->j:Lqnt;

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lqxp;->i:Lqwy;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lqxp;->c:Ljava/lang/String;

    nop

    nop

    invoke-static {}, Lqvl;->c()V

    iget-object v2, p1, Lqvl;->d:Landroid/content/Context;

    nop

    nop

    invoke-static {v2, v1}, Lqvj;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {v0, p1, v1}, Lqwy;->b(Lqvl;Ljava/lang/String;)Lqxd;

    move-result-object v0

    nop

    iget-object v0, v0, Lqxd;->h:Lqnt;

    nop

    nop

    iput-object v0, p0, Lqxp;->j:Lqnt;

    nop

    nop

    :cond_1
    iget v0, p0, Lqxp;->f:I

    nop

    nop

    nop

    iget-object v1, p0, Lqxp;->j:Lqnt;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lqnt;->c()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-ge v0, v1, :cond_d

    nop

    nop

    nop

    iget-object v0, p0, Lqxp;->j:Lqnt;

    nop

    invoke-virtual {v0}, Lqnt;->c()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Lqxp;->f:I

    nop

    invoke-static {}, Lqvl;->c()V

    iget-object v0, p0, Lqxp;->d:Ljava/lang/String;

    nop

    nop

    iget-object v1, p0, Lqxp;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lqxp;->i:Lqwy;

    nop

    nop

    nop

    iget-object v3, p1, Lqvl;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lqvh;->a(Landroid/content/Context;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    if-eqz v4, :cond_3

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    invoke-static {v1}, Lqvj;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    nop

    check-cast v4, Lqop;

    nop

    invoke-virtual {v4, v6, v5, v0}, Lqop;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    if-nez v4, :cond_2

    nop

    goto :goto_9

    nop

    nop

    :cond_2
    invoke-virtual {v2, v0, v4}, Lqwy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    :cond_3
    :goto_9
    move-object v4, v5

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v6, p1, Lqvl;->d:Landroid/content/Context;

    nop

    invoke-static {v6, v1}, Lqvj;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    iget-boolean v6, v2, Lqwy;->a:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    if-eqz v6, :cond_4

    nop

    nop

    const-string v6, "DirectBoot aware package %s can not access account-scoped flags."

    nop

    nop

    nop

    invoke-static {v7, v6, v1}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p1}, Lqvl;->b()Lsul;

    move-result-object v6

    nop

    nop

    new-instance v8, Lqtz;

    nop

    nop

    nop

    nop

    const/4 v9, 0x3

    nop

    nop

    nop

    invoke-direct {v8, p1, v1, v9}, Lqtz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v8}, Lsul;->a(Ljava/lang/Runnable;)Lsui;

    move-result-object v6

    nop

    nop

    nop

    invoke-static {v6}, Lqqm;->e(Lsui;)V

    invoke-virtual {v2, p1, v1}, Lqwy;->b(Lqvl;Ljava/lang/String;)Lqxd;

    move-result-object p1

    nop

    nop

    invoke-virtual {p1}, Lqxd;->d()Ltlk;

    move-result-object p1

    nop

    nop

    nop

    iget-object p1, p1, Ltlk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lryh;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Lqxp;->j:Lqnt;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    const v1, 0x10

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Lqxp;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lqxp;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Lqxp;->j:Lqnt;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_6
    goto/32 :goto_1

    nop

    :goto_14
    if-eqz p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    :goto_17
    if-ge v0, v2, :cond_8

    nop

    goto/32 :goto_12

    nop

    :cond_8
    goto/32 :goto_11

    nop

    nop

    :goto_18
    goto :goto_19

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_2
    const-string v1, "Invalid Phenotype flag value for flag "

    nop

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    const-string v1, "PhenotypeCombinedFlags"

    nop

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    invoke-virtual {v3}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    if-ne v7, p1, :cond_9

    nop

    nop

    nop

    goto :goto_1a

    nop

    nop

    nop

    :cond_9
    move-object v4, v5

    nop

    nop

    :goto_1a
    if-nez v4, :cond_c

    nop

    iget-boolean p1, p0, Lqxp;->h:Z

    nop

    nop

    nop

    if-eqz p1, :cond_b

    nop

    monitor-enter p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean p1, p0, Lqxp;->h:Z

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_a

    nop

    nop

    iget-object p1, p0, Lqxp;->i:Lqwy;

    nop

    nop

    iget-object v0, p0, Lqxp;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lqxp;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    invoke-virtual {p1, v0, v1}, Lqwy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqxp;->e:Ljava/lang/Object;

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean p1, p0, Lqxp;->h:Z

    nop

    nop

    nop

    nop

    nop

    :cond_a
    monitor-exit p0

    nop

    goto :goto_1b

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    nop

    nop

    :cond_b
    :goto_1b
    iget-object v4, p0, Lqxp;->e:Ljava/lang/Object;

    nop

    :cond_c
    iput-object v4, p0, Lqxp;->g:Ljava/lang/Object;

    nop

    nop

    nop

    :cond_d
    iget-object v1, p0, Lqxp;->g:Ljava/lang/Object;

    nop

    nop

    monitor-exit p0

    nop

    :goto_1c
    return-object v1

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Lqnt;->c()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    :goto_0
    sput-object v0, Lqxp;->b:Lqwh;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-direct {v0, v1}, Lqwh;-><init>(Lqwi;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    new-instance v1, Lqxo;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v1, v2}, Lqxo;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lqwh;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

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

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xc

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lqwy;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lqxp;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lqxp;->h:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lqxp;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput-object p1, p0, Lqxp;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Lqxp;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p4, p0, Lqxp;->i:Lqwy;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Lqwy;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "com.google.android.libraries.performance.primes"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqxp;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lqxp;->i:Lqwy;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lqxp;->h:Z

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lqxp;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    const/4 p1, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    iput-object v0, p0, Lqxp;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    iput v0, p0, Lqxp;->f:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_a

    nop

    nop

    :goto_0
    sput-boolean v0, Lqvn;->b:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lqvm;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lqvm;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Lqvn;->a()V

    goto/32 :goto_6

    nop

    nop

    :goto_6
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lqvl;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    invoke-direct {p0, v0}, Lqxp;->33f5b80483094659737b73d90f80a8a4m(Lqvl;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lqvn;->c:Lqvm;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lqvl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lqvl;->a(Landroid/content/Context;)Lqvl;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    const-string v0, "Must call PhenotypeContext.setContext() first"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sput-object v0, Lqvn;->c:Lqvm;

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lqvl;->a(Landroid/content/Context;)Lqvl;

    move-result-object p1

    nop

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

    :goto_1
    invoke-direct {p0, p1}, Lqxp;->33f5b80483094659737b73d90f80a8a4m(Lqvl;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
