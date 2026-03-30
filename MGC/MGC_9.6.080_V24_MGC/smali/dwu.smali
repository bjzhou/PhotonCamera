.class Ldwu;
.super Ldwt;
.source "PG"


# instance fields
.field private c:Ldua;

.field private f:Ldua;

.field private g:Ldua;


# direct methods
.method public constructor <init>(Ldwy;Landroid/view/WindowInsets;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p1, p0, Ldwu;->f:Ldua;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput-object p1, p0, Ldwu;->c:Ldua;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-direct {p0, p1, p2}, Ldwt;-><init>(Ldwy;Landroid/view/WindowInsets;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Ldwu;->g:Ldua;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public d(IIII)Ldwy;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

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

    :goto_1
    iget-object p0, p0, Ldwu;->a:Landroid/view/WindowInsets;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object p0

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
.end method

.method public p()Ldua;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-object v0, p0, Ldwu;->f:Ldua;

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Ldwu;->a:Landroid/view/WindowInsets;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iget-object v0, p0, Ldwu;->f:Ldua;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    iget-object p0, p0, Ldwu;->f:Ldua;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Ldua;->c(Landroid/graphics/Insets;)Ldua;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop
.end method

.method public q()Ldua;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ldua;->c(Landroid/graphics/Insets;)Ldua;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldwu;->c:Ldua;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

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
    iget-object v0, p0, Ldwu;->c:Ldua;

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

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Ldwu;->a:Landroid/view/WindowInsets;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Ldwu;->c:Ldua;

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public r()Ldua;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ldua;->c(Landroid/graphics/Insets;)Ldua;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

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

    :goto_3
    iput-object v0, p0, Ldwu;->g:Ldua;

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Ldwu;->g:Ldua;

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

    :goto_6
    iget-object v0, p0, Ldwu;->a:Landroid/view/WindowInsets;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Ldwu;->g:Ldua;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop
.end method
