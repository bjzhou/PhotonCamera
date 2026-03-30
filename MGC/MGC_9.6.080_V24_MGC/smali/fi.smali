.class final Lfi;
.super Ldwl;
.source "PG"


# instance fields
.field final synthetic a:Lfj;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Lfj;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ldwl;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lfi;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput p1, p0, Lfi;->c:I

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

    :goto_3
    const/4 p1, 0x0

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
    return-void

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lfi;->a:Lfj;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iget-object v1, p0, Lfi;->a:Lfj;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    iget-object v0, v0, Lfj;->b:Ldwk;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    iget v0, p0, Lfi;->c:I

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

    :goto_5
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Lfj;->c:Z

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Lfi;->c:I

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
    iget-object v0, p0, Lfi;->a:Lfj;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    iget-object v1, v1, Lfj;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_10
    iput-boolean v0, p0, Lfi;->b:Z

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eq v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lfi;->a:Lfj;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    iput v0, p0, Lfi;->c:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Ldwk;->a()V

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ldwk;->b()V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lfi;->b:Z

    nop

    goto/32 :goto_9

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

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    iget-object p0, p0, Lfj;->b:Ldwk;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lfi;->a:Lfj;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    iget-boolean v0, p0, Lfi;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method
