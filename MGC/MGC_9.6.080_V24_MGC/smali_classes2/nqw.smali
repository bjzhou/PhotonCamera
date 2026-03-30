.class Lnqw;
.super Lnqu;
.source "PG"


# instance fields
.field final synthetic b:Lnqy;


# direct methods
.method public constructor <init>(Lnqy;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lnqu;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lnqw;->b:Lnqy;

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
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lnqq;->a()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnqw;->b:Lnqy;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnqw;->b:Lnqy;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    :goto_6
    iput-boolean v1, v0, Lnra;->m:Z

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

    nop

    :goto_7
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lnqw;->b:Lnqy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v1, v0, Lnra;->n:Z

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

    :goto_a
    iget-object v0, v0, Lnqy;->d:Landroid/widget/VideoView;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lnra;->d()V

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lnqy;->f:Lnqt;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    iget-object v0, v0, Lnqy;->k:Lnra;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x5

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lnqq;->b()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnqw;->b:Lnqy;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnqy;->f:Lnqt;

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
.end method

.method public d()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnqw;->b:Lnqy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnqy;->d:Landroid/widget/VideoView;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public e()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lnra;->c(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnqy;->k:Lnra;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnqw;->b:Lnqy;

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
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

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
.end method

.method public f()V
    .locals 0

    goto/32 :goto_3

    nop

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
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnqy;->d:Landroid/widget/VideoView;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnqw;->b:Lnqy;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
