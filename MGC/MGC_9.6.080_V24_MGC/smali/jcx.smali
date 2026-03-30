.class public Ljcx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final d:Lsdb;


# instance fields
.field public final a:Llxc;

.field public final b:Llxg;

.field public final c:Lmjn;

.field private e:Z

.field private final f:Lidi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "jcx"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    sput-object v0, Ljcx;->d:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public constructor <init>(Lnch;Lidi;Lmjn;)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Llxg;->a(Ljava/lang/String;)Llxc;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljcx;->b:Llxg;

    nop

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

    :goto_2
    const v1, 0x9

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x8

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lpsz;->e:Lpsz;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Ljcx;->a:Llxc;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v1, v2, v0}, Lnch;->d(JZ)Llxg;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Ljcx;->f:Lidi;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_6

    nop

    :goto_10
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v1

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

    :goto_12
    iput-boolean v0, p0, Ljcx;->e:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    iput-object p3, p0, Ljcx;->c:Lmjn;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Lpsz;->j:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object p0, Lsed;->a:Lsdr;

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

    :goto_17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lpsf;)V
    .locals 3

    goto/32 :goto_3

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xe

    nop

    nop

    goto/32 :goto_2

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

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    return-void

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

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Ljcx;->d:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    sget-object v1, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "VideoKeplerSession"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p1

    nop

    nop

    check-cast p1, Lscz;

    nop

    const/16 v0, 0x84e

    nop

    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    const-string v0, "Error adding badge to output file."

    nop

    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

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
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_2
    iget-object v0, p0, Ljcx;->f:Lidi;

    nop

    nop

    nop

    sget-object v1, Lidb;->f:Lidb;

    nop

    nop

    invoke-virtual {v0, p1, v1}, Lidi;->c(Lpsf;Lidb;)V

    iget-object p1, p0, Ljcx;->c:Lmjn;

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    iput-boolean v0, p1, Lmjn;->u:Z

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Ljcx;->e:Z

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    monitor-enter p0

    nop

    :try_start_3
    iget-boolean v0, p0, Ljcx;->e:Z

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_11

    nop

    nop
.end method
