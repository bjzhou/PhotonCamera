.class public final Lrox;
.super Lroy;
.source "PG"


# static fields
.field public static final a:Lroy;

.field static final b:Lroy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lrox;->b:Lroy;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Lroy;->b()Lroy;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v0}, Lroy;->d(Lrkm;)Z

    move-result v4

    nop

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

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    const v1, 0x2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v4, v1, Lroy;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    const-string v4, "Key already present"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v2, v1}, Lrox;-><init>(Lroy;Lyo;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lrox;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v1, Lyo;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    const-string v5, "Can\'t mutate after handing to trace"

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_d
    xor-int/2addr v2, v4

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

    :goto_e
    new-instance v0, Lrox;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v2, v4}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_11
    invoke-direct {v1, v2}, Lyo;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    sput-object v0, Lrox;->a:Lroy;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    const v0, 0xb

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

    :goto_14
    sget-object v0, Lroy;->e:Lrkm;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v0, v3}, Lyo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1

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

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    xor-int/2addr v4, v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    invoke-static {v4, v5}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1b
    iget-object v2, v1, Lroy;->c:Lyo;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lroy;->b()Lroy;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v2, Lyo;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_20
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_e

    nop

    nop

    :goto_22
    invoke-direct {v2}, Lyo;-><init>()V

    goto/32 :goto_24

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v1, v0, v2}, Lrox;-><init>(Lroy;Lyo;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lroy;Lyo;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Lroy;-><init>(Lroy;Lyo;)V

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

    nop

    nop
.end method
