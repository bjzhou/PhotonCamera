.class final Lejw;
.super Lejq;
.source "PG"


# instance fields
.field final a:Lejx;


# direct methods
.method public constructor <init>(Lejx;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lejw;->a:Lejx;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lejq;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Lejp;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lejw;->a:Lejx;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget v1, v0, Lejx;->v:I

    nop

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

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    invoke-virtual {v0}, Lejp;->r()V

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iput-boolean v1, v0, Lejx;->w:Z

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    invoke-virtual {p1, p0}, Lejp;->E(Lejm;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    iput v1, v0, Lejx;->v:I

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

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v1, v1, -0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final e(Lejp;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lejp;->y()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lejw;->a:Lejx;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iget-boolean v0, p1, Lejx;->w:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Lejx;->w:Z

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lejw;->a:Lejx;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop
.end method
