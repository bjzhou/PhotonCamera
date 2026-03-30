.class public final Lni;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lni;->a:Landroid/view/ViewGroup$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, -0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
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

    nop

    nop

    :goto_b
    const v0, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public static synthetic a(Lmy;Lubo;)V
    .locals 7

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lua;->g:Lua;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    instance-of v1, v0, Landroidx/compose/ui/platform/ComposeView;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, v1}, Lucg;->g(Ljava/lang/Object;Lubk;)Lueb;

    move-result-object v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    :goto_9
    invoke-static {p1, p0}, Ldvy;->e(Landroid/view/View;Leht;)V

    :goto_a
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, p0}, Ldvx;->d(Landroid/view/View;Leci;)V

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    sget-object v2, Lua;->h:Lua;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lmy;->getWindow()Landroid/view/Window;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_17
    invoke-static {p1}, Ldvy;->d(Landroid/view/View;)Leht;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xb

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object v2, p0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    :goto_1b
    goto/32 :goto_15

    nop

    nop

    :goto_1c
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Landroidx/compose/ui/platform/ComposeView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Landroidx/compose/ui/platform/ComposeView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1f
    invoke-static {v1}, Lucg;->h(Lueb;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_20
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p1, p0}, Ldvw;->v(Landroid/view/View;Leaw;)V

    :goto_22
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v0, p1}, Lmy;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_2f

    nop

    nop

    :goto_24
    const v1, 0x1020002

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_26
    invoke-static {p1}, Ldvw;->u(Landroid/view/View;)Leaw;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_27
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_29
    const/4 v5, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v1, :cond_5

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lmy;->getWindow()Landroid/view/Window;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1, v2}, Lucg;->j(Lueb;Lubk;)Lueb;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x0

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

    :goto_2e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    :goto_30
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_32
    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/ComposeView;->e(Lubo;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v1, Leci;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_35
    sget-object p1, Lni;->a:Landroid/view/ViewGroup$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILucd;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_1b

    nop

    :goto_38
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/ComposeView;->e(Lubo;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method
