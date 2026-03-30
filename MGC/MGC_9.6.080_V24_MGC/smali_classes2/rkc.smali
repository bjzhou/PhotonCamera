.class final Lrkc;
.super Ldtw;
.source "PG"


# instance fields
.field final synthetic a:Lrkd;

.field final synthetic b:Lfse;


# direct methods
.method public constructor <init>(Lrkd;Lfse;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ldtw;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lrkc;->b:Lfse;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lrkc;->a:Lrkd;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lfse;->f()V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-static {p1}, Lrkd;->b(Lrkd;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lrkc;->a:Lrkd;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object p0, p0, Lrkc;->b:Lfse;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public final b(Landroid/graphics/Typeface;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :goto_1
    iget-object v0, p0, Lrkc;->a:Lrkd;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lrkc;->a:Lrkd;

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

    nop

    :goto_3
    invoke-virtual {p1, p0}, Lfse;->e(Landroid/graphics/Typeface;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Lrkd;->b(Lrkd;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, v0, Lrkd;->k:Landroid/graphics/Typeface;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    iget v1, v0, Lrkd;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lrkc;->b:Lfse;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lrkd;->k:Landroid/graphics/Typeface;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lrkc;->a:Lrkd;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method
