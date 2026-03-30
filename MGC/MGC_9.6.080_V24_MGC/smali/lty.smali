.class public final Llty;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field a:Ljava/lang/Integer;

.field b:Z

.field final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:Lpcm;

.field final synthetic e:Lltz;


# direct methods
.method public constructor <init>(Lltz;Ljava/util/concurrent/Executor;Lpcm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Llty;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Llty;->a:Ljava/lang/Integer;

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
    const/4 p1, -0x1

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

    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Llty;->e:Lltz;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    iput-object p3, p0, Llty;->d:Lpcm;

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, v1, Lltz;->a:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v2, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    new-instance v1, Llcc;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v3, 0x0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Llty;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Llty;->b:Z

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Llty;->a:Ljava/lang/Integer;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Llty;->e:Lltz;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean v0, p0, Llty;->b:Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    if-ltz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Llty;->a:Ljava/lang/Integer;

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_b

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    const v0, 0xa

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Llty;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    if-lt v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    :goto_1c
    invoke-direct {v1, p0, p1, v2, v3}, Llcc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    goto :goto_16

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    :goto_24
    check-cast p1, Ljava/lang/Integer;

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

    nop

    :goto_25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_26
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_12

    nop
.end method
