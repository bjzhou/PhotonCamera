.class final Lrfx;
.super Ldvd;
.source "PG"


# instance fields
.field final synthetic a:Lrga;


# direct methods
.method public constructor <init>(Lrga;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ldvd;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrfx;->a:Lrga;

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
.method public final c(Landroid/view/View;Ldxb;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const/high16 p0, 0x100000

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1, p2}, Ldvd;->c(Landroid/view/View;Ldxb;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean p0, p0, Lrga;->d:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2, p0}, Ldxb;->p(Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lrfx;->a:Lrga;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, p0}, Ldxb;->f(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2, p0}, Ldxb;->p(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3

    nop

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

    :goto_b
    const/4 p0, 0x1

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

    :goto_c
    return-void

    nop

    nop

    nop
.end method

.method public final i(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move p2, v0

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

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_16

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x7

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

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    invoke-super {p0, p1, p2, p3}, Ldvd;->i(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    iget-object p2, p0, Lrfx;->a:Lrga;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    if-eq p2, v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    const/high16 v0, 0x100000

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    iget-boolean v1, p2, Lrga;->d:Z

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    goto/32 :goto_8

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_14
    invoke-virtual {p2}, Lrga;->cancel()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method
