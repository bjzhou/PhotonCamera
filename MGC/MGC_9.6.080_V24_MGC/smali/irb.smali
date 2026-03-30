.class final Lirb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Lqnt;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    const-string v4, ""

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    sget-object v2, Ltcu;->a:Ltcu;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v1, Ltmx;->n:Ltmx;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    new-instance v3, Lqnt;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    sput-object v3, Lirb;->a:Lqnt;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Ltmx;->i:Ltmx;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    const v1, 0x8

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v3, v0, v4, v1, v2}, Lqnt;-><init>(Ltmx;Ljava/lang/Object;Ltmx;Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    iget v2, v2, Ltcu;->m:I

    nop

    goto/32 :goto_6

    nop

    nop
.end method
