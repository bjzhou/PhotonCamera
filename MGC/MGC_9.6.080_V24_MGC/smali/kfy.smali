.class public Lkfy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkgn;


# static fields
.field private static final b:Lsdb;


# instance fields
.field public a:Lrss;

.field private final c:Lkhx;

.field private final d:Lqep;

.field private final e:Lpcg;

.field private f:Lkgn;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string v0, "kfy"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lkfy;->b:Lsdb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Lkhx;Lqep;Lpcg;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lkfy;->d:Lqep;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lkfy;->h:Z

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    iput-object p3, p0, Lkfy;->e:Lpcg;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    iput-boolean v0, p0, Lkfy;->g:Z

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

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_d
    return-void

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

    :goto_f
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    iput-object v1, p0, Lkfy;->a:Lrss;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lkfy;->c:Lkhx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lkfy;->f:Lkgn;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lprw;)Z
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p1

    nop

    nop

    :cond_0
    :try_start_1
    invoke-interface {p1}, Lprw;->d()J

    invoke-interface {p1}, Lprw;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

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

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_2
    iget-boolean v0, p0, Lkfy;->g:Z

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lkfy;->c:Lkhx;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lkhx;->a()Landroid/media/MediaFormat;

    move-result-object v0

    nop

    const-string v1, "width"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    const-string v2, "height"

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    invoke-interface {p1}, Lprw;->b()I

    move-result v1

    nop

    nop

    invoke-interface {p1}, Lprw;->c()I

    move-result v2

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    if-ge v0, v1, :cond_1

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    iput-boolean v0, p0, Lkfy;->h:Z

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Lkfy;->f:Lkgn;

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    iget-boolean v0, p0, Lkfy;->h:Z

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lkfy;->a:Lrss;

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lkfy;->a:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lkfy;->d:Lqep;

    nop

    iget-object v2, p0, Lkfy;->e:Lpcg;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Lkhx;->b(Lqep;Lpcg;)Lkgn;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lkfy;->f:Lkgn;

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v0, p0, Lkfy;->c:Lkhx;

    nop

    nop

    nop

    iget-object v1, p0, Lkfy;->d:Lqep;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lkfy;->e:Lpcg;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Lkhx;->b(Lqep;Lpcg;)Lkgn;

    move-result-object v0

    nop

    nop

    iput-object v0, p0, Lkfy;->f:Lkgn;

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_7
    iget-object v0, p0, Lkfy;->f:Lkgn;

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Lkgn;->a(Lprw;)Z

    move-result p1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x14

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x11

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop
.end method

.method public final declared-synchronized close()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v0, p0, Lkfy;->f:Lkgn;

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lkgn;->close()V

    goto :goto_3

    nop

    :cond_1
    iget-object v0, p0, Lkfy;->d:Lqep;

    nop

    nop

    invoke-interface {v0}, Lqep;->close()V

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lkfy;->g:Z

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x2

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lkfy;->g:Z

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    sget-object v0, Lkfy;->b:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/16 v1, 0xb7f

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    const-string v1, "Closing sink more than once"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_b
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method
