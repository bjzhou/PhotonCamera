.class public final Lsfx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsfo;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/util/logging/Level;

.field public final d:Z

.field public final e:Ljava/util/Set;

.field public final f:Lsew;

.field public final g:I

.field private volatile h:Lsfy;


# direct methods
.method private constructor <init>()V
    .locals 8

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1b

    nop

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

    :goto_1
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v0, p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct/range {v0 .. v7}, Lsfx;-><init>(Ljava/lang/String;ZILjava/util/logging/Level;ZLjava/util/Set;Lsew;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, ""

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xb

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v6, Lsfz;->a:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

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

    :goto_10
    sget-object v7, Lsfz;->b:Lsew;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    sget-object v4, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;ZILjava/util/logging/Level;ZLjava/util/Set;Lsew;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p5, p0, Lsfx;->d:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object p7, p0, Lsfx;->f:Lsew;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput p1, p0, Lsfx;->g:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lsfx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-boolean p2, p0, Lsfx;->b:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iput-object p6, p0, Lsfx;->e:Ljava/util/Set;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Lsfx;->c:Ljava/util/logging/Level;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lsel;
    .locals 9

    goto/32 :goto_19

    nop

    nop

    :goto_0
    const-string v0, "."

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v0, p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    iget-object v6, p0, Lsfx;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v5, p0, Lsfx;->c:Ljava/util/logging/Level;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lsfx;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct/range {v0 .. v7}, Lsfz;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/util/logging/Level;Ljava/util/Set;Lsew;)V

    goto/32 :goto_13

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lsfx;->h:Lsfy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-boolean v3, p0, Lsfx;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Lsfx;->d:Z

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    move-object v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

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

    :goto_13
    return-object p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    :goto_17
    monitor-enter p0

    nop

    :try_start_0
    iget-object p1, p0, Lsfx;->h:Lsfy;

    nop

    if-nez p1, :cond_3

    nop

    new-instance p1, Lsfy;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lsfx;->a:Ljava/lang/String;

    nop

    nop

    iget-boolean v3, p0, Lsfx;->b:Z

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lsfx;->c:Ljava/util/logging/Level;

    nop

    nop

    nop

    nop

    iget-object v7, p0, Lsfx;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    iget-object v8, p0, Lsfx;->f:Lsew;

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    move-object v0, p1

    nop

    invoke-direct/range {v0 .. v8}, Lsfy;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/util/logging/Level;ZLjava/util/Set;Lsew;)V

    iput-object p1, p0, Lsfx;->h:Lsfy;

    nop

    :cond_3
    monitor-exit p0

    nop

    goto :goto_1f

    nop

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

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v7, p0, Lsfx;->f:Lsew;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1b
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p0, Lsfz;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1e
    throw p1

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method
