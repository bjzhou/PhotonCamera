.class final Lglt;
.super Landroid/os/AsyncTask;
.source "PG"


# instance fields
.field final synthetic a:Lglu;


# direct methods
.method public constructor <init>(Lglu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lglt;->a:Lglu;

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
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2
    if-lt v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter v2

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    iget-object v3, p0, Lglt;->a:Lglu;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lglu;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_1

    nop

    iget-object v3, p0, Lglt;->a:Lglu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Lglu;->b(Ljava/io/File;)V

    :cond_1
    monitor-exit v2

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

    :goto_4
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x9

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, v2, Lglu;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    aget-object p1, p1, v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lglt;->isCancelled()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    :goto_d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lglt;->a:Lglu;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    const/16 v0, 0xb

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Lglt;->a:Lglu;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    goto/32 :goto_16

    nop

    :cond_3
    goto/32 :goto_15

    nop

    :goto_13
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Lglu;->a:Lpdf;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_20

    nop

    nop

    :goto_16
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_2a

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_21

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    aget-object v1, p1, v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    array-length v1, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    :goto_20
    goto/32 :goto_25

    nop

    nop

    :goto_21
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    check-cast p1, [Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_23
    iget-object p0, p0, Lglu;->a:Lpdf;

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

    nop

    :goto_24
    const/4 v0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_25
    goto/32 :goto_16

    nop

    nop

    :goto_26
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    :goto_27
    iget-object p0, p0, Lglt;->a:Lglu;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_28
    const-string v1, "RemoveDeletedCacheTask"

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_4
    :goto_2a
    goto/32 :goto_1e

    nop

    nop
.end method
