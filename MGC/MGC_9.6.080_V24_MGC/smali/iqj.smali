.class public final Liqj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lilp;


# instance fields
.field public final a:Lpro;

.field public final b:Lcom/google/googlex/gcam/CyclopsParameters;

.field public c:I

.field final synthetic d:Liqk;

.field private final e:Lioy;

.field private final f:Llko;


# direct methods
.method public constructor <init>(Liqk;Llko;Lpro;Lcom/google/googlex/gcam/CyclopsParameters;Lioy;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/4 p1, -0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p4, p0, Liqj;->b:Lcom/google/googlex/gcam/CyclopsParameters;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Liqj;->d:Liqk;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Liqj;->f:Llko;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Liqj;->e:Lioy;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Liqj;->a:Lpro;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Liqj;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final f(Linb;Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 7

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Linb;->a()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    move-object v3, p3

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

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    invoke-direct/range {v0 .. v5}, Lhaq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[C)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Liqj;->e:Lioy;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-direct {p2, p3}, Lgbg;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, v6, p2, p3, p0}, Liqk;->b(Ljava/util/function/Consumer;Ljava/lang/Runnable;Llko;Lioy;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p3, p0, Liqj;->f:Llko;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

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
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x19

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Liqj;->c:I

    nop

    nop

    nop

    goto/32 :goto_1c

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

    :goto_14
    const v0, 0xd

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    new-instance v6, Lhaq;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object v2, p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    move-object v1, p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    new-instance p2, Lgbg;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Liqj;->d:Liqk;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v0, v6

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne p1, v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 p3, 0xa

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
