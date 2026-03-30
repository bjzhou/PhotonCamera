.class public final Lglu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpdf;

.field public final b:Ljava/util/Set;

.field private c:Lglt;


# direct methods
.method public constructor <init>(Lpdf;Ljava/util/Set;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lglu;->b:Ljava/util/Set;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lglu;->a:Lpdf;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lglt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lglt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lglt;-><init>(Lglu;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput-object v0, p0, Lglu;->c:Lglt;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/io/File;)V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const v1, 0x9

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

    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lt v1, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    aget-object v2, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_1b

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v2}, Lglu;->b(Ljava/io/File;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    array-length v2, v0

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

    nop

    nop

    :goto_17
    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    :goto_19
    goto/32 :goto_11

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method
