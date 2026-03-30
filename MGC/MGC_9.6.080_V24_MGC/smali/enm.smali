.class public final Lenm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Leoc;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/Window;

.field private final c:Landroidx/window/extensions/area/WindowAreaComponent;

.field private final d:Landroidx/window/extensions/area/ExtensionWindowAreaPresentation;


# direct methods
.method public constructor <init>(Landroidx/window/extensions/area/WindowAreaComponent;Landroidx/window/extensions/area/ExtensionWindowAreaPresentation;I)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto :goto_7

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_28

    nop

    :goto_5
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Landroid/view/Window;

    nop

    :goto_7
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    if-lt p3, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x13

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

    :goto_c
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    nop

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

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_e
    const-class v3, Landroid/view/Window;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    invoke-interface {p2}, Landroidx/window/extensions/area/ExtensionWindowAreaPresentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p1, p0, Lenm;->c:Landroidx/window/extensions/area/WindowAreaComponent;

    nop

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

    :goto_11
    goto/16 :goto_7

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    :goto_13
    iput-object p2, p0, Lenm;->d:Landroidx/window/extensions/area/ExtensionWindowAreaPresentation;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_16
    if-ge p3, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    :goto_1c
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_20
    goto :goto_25

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    array-length v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_23
    const-string v3, "getWindow"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_24
    move-object v2, v1

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_23

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object v0, v1

    nop

    :goto_28
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2a
    iput-object p1, p0, Lenm;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2b
    move-object p1, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 p1, 0x4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p2}, Landroidx/window/extensions/area/ExtensionWindowAreaPresentation;->getPresentationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    aget-object v0, p1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_30
    const/4 p3, 0x0

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_32
    add-int/lit8 p3, p3, 0x1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_33
    goto :goto_31

    nop

    nop

    :goto_34
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2a

    nop

    nop

    :goto_36
    return-void

    nop

    :goto_37
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput-object p1, p0, Lenm;->b:Landroid/view/Window;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lenm;->c:Landroidx/window/extensions/area/WindowAreaComponent;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Landroidx/window/extensions/area/WindowAreaComponent;->endRearDisplayPresentationSession()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Landroidx/window/extensions/area/ExtensionWindowAreaPresentation;->setPresentationView(Landroid/view/View;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lenm;->d:Landroidx/window/extensions/area/ExtensionWindowAreaPresentation;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop
.end method
