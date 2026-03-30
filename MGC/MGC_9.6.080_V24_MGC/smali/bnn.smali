.class public final Lbnn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbpy;


# instance fields
.field private final a:Lubo;

.field private final b:Lufs;

.field private c:Lugy;


# direct methods
.method public constructor <init>(Luad;Lubo;)V
    .locals 0

    goto/32 :goto_4

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
    iput-object p1, p0, Lbnn;->b:Lufs;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lufv;->i(Luad;)Lufs;

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

    nop

    :goto_3
    iput-object p2, p0, Lbnn;->a:Lubo;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

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

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput-object v0, p0, Lbnn;->c:Lugy;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    new-instance v1, Lbnp;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1}, Lbnp;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    :goto_e
    invoke-interface {v0, v1}, Lugy;->p(Ljava/util/concurrent/CancellationException;)V

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lbnn;->c:Lugy;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 5

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v3, v4, v1, v2}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_6
    const/4 v3, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lbnn;->c:Lugy;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, Lucu;->v(Lugy;Ljava/lang/String;)V

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    const v1, 0x20

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "Old job was still running!"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lbnn;->b:Lufs;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lbnn;->a:Lubo;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    iput-object v0, p0, Lbnn;->c:Lugy;

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

    :goto_13
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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
    const v0, 0x6

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

.method public final cc()V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lbnn;->c:Lugy;

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

    :goto_4
    new-instance v1, Lbnp;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, v1}, Lugy;->p(Ljava/util/concurrent/CancellationException;)V

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_e
    invoke-direct {v1}, Lbnp;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lbnn;->c:Lugy;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x11

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
