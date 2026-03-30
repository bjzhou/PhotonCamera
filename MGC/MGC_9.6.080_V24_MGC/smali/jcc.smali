.class public final Ljcc;
.super Landroid/widget/PopupWindow;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/Window;

.field public final c:Landroid/view/WindowManager;

.field public d:Landroid/view/View$OnLayoutChangeListener;

.field public e:Lnbh;

.field public f:Lnbe;

.field public g:Landroid/view/View;

.field public h:Z

.field public final i:Lfwv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lfwv;Landroid/view/WindowManager;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object v0, p0, Ljcc;->f:Lnbe;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lnbh;->a:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Ljcc;->b:Landroid/view/Window;

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

    :goto_4
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Ljcc;->e:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lnbe;->b:Lnbe;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Ljcc;->c:Landroid/view/WindowManager;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Ljcc;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    iput-object p3, p0, Ljcc;->i:Lfwv;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    const v1, 0xd

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    iget-object v0, p0, Ljcc;->c:Landroid/view/WindowManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    iget-object v0, p0, Ljcc;->e:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lnbh;->b:Lnbh;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v1, Lnbh;->c:Lnbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Ljcc;->h:Z

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v1}, Ljcc;->setWidth(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Ljcc;->b:Landroid/view/Window;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0}, Ljcc;->setHeight(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Ljcc;->b:Landroid/view/Window;

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

    :goto_17
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Ljcc;->g:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Ljcc;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Ljcc;->e:Lnbh;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_23
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

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

    :goto_26
    invoke-virtual {p0, v0, v1, v1, v1}, Ljcc;->showAtLocation(Landroid/view/View;III)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_3

    nop

    :goto_28
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    :goto_2a
    iget-object p0, p0, Ljcc;->d:Landroid/view/View$OnLayoutChangeListener;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Ljcc;->d:Landroid/view/View$OnLayoutChangeListener;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x19

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljcc;->dismiss()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Ljcc;->b:Landroid/view/Window;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method
