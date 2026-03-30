.class Ldws;
.super Ldwr;
.source "PG"


# instance fields
.field private c:Ldua;


# direct methods
.method public constructor <init>(Ldwy;Landroid/view/WindowInsets;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p1, p0, Ldws;->c:Ldua;

    nop

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
    const/4 p1, 0x0

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

    :goto_3
    invoke-direct {p0, p1, p2}, Ldwr;-><init>(Ldwy;Landroid/view/WindowInsets;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final j()Ldua;
    .locals 4

    goto/32 :goto_12

    nop

    nop

    :goto_0
    iget-object v0, p0, Ldws;->c:Ldua;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Ldws;->c:Ldua;

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1, v2, v3, v0}, Ldua;->b(IIII)Ldua;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    const v1, 0x14

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ldws;->a:Landroid/view/WindowInsets;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Ldws;->c:Ldua;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public k()Ldwy;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldws;->a:Landroid/view/WindowInsets;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Ldwy;->m(Landroid/view/WindowInsets;)Ldwy;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public l()Ldwy;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldws;->a:Landroid/view/WindowInsets;

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

    :goto_1
    invoke-static {p0}, Ldwy;->m(Landroid/view/WindowInsets;)Ldwy;

    move-result-object p0

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
    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop
.end method

.method public m()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldws;->a:Landroid/view/WindowInsets;

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

    :goto_2
    invoke-virtual {p0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p0

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

    nop
.end method
