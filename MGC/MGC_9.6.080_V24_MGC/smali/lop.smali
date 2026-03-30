.class public final synthetic Llop;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iput-object p2, p0, Llop;->b:Ljava/lang/Object;

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput p3, p0, Llop;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Llop;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public synthetic constructor <init>(Lnbh;Lnbe;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llop;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput p3, p0, Llop;->c:I

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Llop;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p2, Ljava/lang/Boolean;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p2, Llor;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_1f

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lkzu;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Llos;->f:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Llop;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_9
    check-cast p1, Lnbf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_a
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xb

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

    :goto_c
    invoke-virtual {v0, p2}, Lkyw;->equals(Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_0
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v3, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p2, Llor;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    sget-object p0, Lkzt;->b:Lkzt;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_13
    if-nez p2, :cond_1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v4, 0x7f080338

    nop

    nop

    :goto_15
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    sget-object v0, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v0, p0, Llop;->c:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v0, Lnbe;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Lryd;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0}, Lnzk;->s(Landroid/view/View;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Llop;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p2, Loyn;

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

    :goto_25
    move v1, v2

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p0, p2, Llor;->b:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eq p1, v0, :cond_2

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_2a
    move v1, v2

    nop

    :goto_2b
    goto/32 :goto_5c

    nop

    nop

    :goto_2c
    iget-object p0, p0, Llop;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2d
    goto :goto_2b

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_2a

    nop

    nop

    :goto_2f
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_30
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, v0, p0}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p1, Lkyf;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-ne v0, v1, :cond_5

    nop

    goto/32 :goto_3d

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_4a

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_26

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_25

    nop

    nop

    :goto_38
    iget-object p0, p2, Llor;->d:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v4, 0x7f080337

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_3a
    iget-object p0, p0, Llop;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object p2, Lkyw;->k:Lkyw;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    :goto_3d
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast p0, Llos;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3f
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->s(Lnbh;Lnbe;Lnbf;)Lnbh;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p0, p0, Llop;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_6
    goto/32 :goto_53

    nop

    :goto_42
    check-cast p1, Llpe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_43
    iget-object v3, p2, Llor;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    return-void

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_47
    if-eq p1, v0, :cond_7

    nop

    goto/32 :goto_2e

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v0, Lkyw;->k:Lkyw;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_49
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_12

    nop

    nop

    :goto_4b
    invoke-virtual {p1, v1, p0}, Lkyf;->r(ZLkyr;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez p0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4f
    iget-object p2, p0, Llop;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_51
    invoke-static {p0, v1}, Lrgw;->f(Landroid/view/View;I)I

    move-result v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v0, p0, Llop;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_53
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast p0, Lnbh;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const v1, 0x7f04018f

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v0, p0, Llop;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-interface {p2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5c
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_9
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_5d
    invoke-interface {p2, p0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_3c

    nop

    nop

    :goto_5e
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez p2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_a
    goto/32 :goto_4f

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    if-ne v0, v1, :cond_1

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Llop;->c:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    const v1, 0x13

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    if-ne v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1

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

    :goto_17
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method
