.class public final Lbve;
.super Lbva;
.source "PG"


# instance fields
.field private final c:Lbun;


# direct methods
.method public constructor <init>(Lbun;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lbva;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lbve;->c:Lbun;

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_11

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    aget-object v3, v2, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, p0, v3, v0}, Lbuh;-><init>(Lbun;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lbve;->c:Lbun;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    return-object v1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    new-instance v1, Lbuh;

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

    :goto_b
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, p0, Lbva;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    iput v1, p0, Lbva;->b:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v1, v0, 0x2

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

    :goto_f
    iget v0, p0, Lbva;->b:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    const v0, 0xb

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_13
    aget-object v0, v2, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method
