.class public final Lgn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lgn;->b:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lgn;->a:Ljava/lang/Object;

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

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lfr;->k()V

    :goto_1
    goto/32 :goto_43

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lju;->k()V

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lgn;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    const v1, 0x1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lgn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Lgo;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lfr;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lib;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0}, Lid;->u()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_e
    iget-object v1, v1, Lib;->c:Landroid/graphics/Rect;

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_f
    goto/16 :goto_68

    nop

    nop

    :goto_10
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Lqxk;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, v0, Lie;->b:Lid;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v0, Lib;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lib;->n()V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3b

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v0, Lfr;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Lgo;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1b
    if-gtz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lgn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Lgo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-boolean v1, v1, Lju;->p:Z

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_2

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_42

    nop

    nop

    :goto_21
    iget-object p0, p0, Lgn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lgo;->k()V

    :goto_24
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, v0, Lfr;->d:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Lie;

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

    :goto_2a
    check-cast v0, Lfr;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_2b
    iget-boolean v0, v0, Lju;->p:Z

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Lgo;->u()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lgn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_6

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_6
    goto/32 :goto_47

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lgn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v0, Lie;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_33
    check-cast p0, Lfr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v0, Lqxk;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_38
    iget-object v0, p0, Lgn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p0, Lgn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_18

    nop

    :goto_3d
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, v0, Lgo;->c:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p0, Lfr;

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

    :goto_41
    iget-object v0, p0, Lgn;->a:Ljava/lang/Object;

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

    :goto_42
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_43
    return-void

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, p0, Lgn;->a:Ljava/lang/Object;

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

    :goto_46
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_47
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_48
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_49
    iget-object p0, p0, Lgn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_4c
    check-cast v0, Lju;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_7c

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v0, v0, Lib;->d:Lie;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_50
    iget-object v0, v0, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Lgo;->a:Ljx;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v0, Lju;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    check-cast v0, Lib;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_54
    if-nez v1, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_b
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v0, Lfr;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_56
    iget-object p0, p0, Lgn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p0, p0, Lgn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-eqz v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_f

    nop

    nop

    :goto_59
    iget-object v1, p0, Lgn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast v0, Lie;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_5b
    if-ne v0, v1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v0, p0, Lgn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0}, Lie;->b()V

    :goto_5e
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_5f
    iget-object p0, p0, Lgn;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_62
    iget-object p0, p0, Lfr;->b:Ljava/util/List;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_64
    iget-object v1, v0, Lgo;->a:Ljx;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_65
    check-cast v0, Lqxk;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_66
    iget-object v0, p0, Lgn;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_67
    goto/16 :goto_77

    nop

    nop

    :goto_68
    goto/32 :goto_57

    nop

    nop

    :goto_69
    check-cast p0, Lgo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast v1, Lib;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v0}, Lfr;->u()Z

    move-result v0

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p0}, Lju;->s()V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_e
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

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

    nop

    :goto_70
    if-lez v0, :cond_f

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_17

    nop

    :goto_71
    if-ne v0, v1, :cond_10

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    if-nez v0, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v0, p0, Lgn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v0, v0, Lqxk;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_75
    invoke-virtual {v0}, Lie;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_78
    check-cast p0, Lju;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_79
    invoke-static {p0}, Lib;->m(Lib;)V

    goto/32 :goto_3

    nop

    nop

    :goto_7a
    iget-object v0, p0, Lgn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_7b
    return-void

    nop

    nop

    :goto_7c
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v0}, Lju;->s()V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v0, v0, Lfr;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_37

    nop

    nop
.end method
