.class public final Lfr;
.super Lgf;
.source "PG"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lgi;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/util/List;

.field final c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field d:Landroid/view/View;

.field e:Landroid/view/ViewTreeObserver;

.field public f:Z

.field private final h:Landroid/content/Context;

.field private final i:I

.field private final j:I

.field private final k:Z

.field private final l:Ljava/util/List;

.field private final m:Landroid/view/View$OnAttachStateChangeListener;

.field private final n:Ljv;

.field private o:I

.field private p:I

.field private q:Landroid/view/View;

.field private r:I

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Lgh;

.field private z:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method private final 7dd154808b1c676d3d63f3a63e9edabfm(Lfx;)V
    .locals 16

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_0
    iget v5, v0, Lfr;->r:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_85

    nop

    :goto_2
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v4, Lqxk;

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v4, v0, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v8}, Lju;->x()V

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_6e

    nop

    nop

    :goto_9
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    aget v10, v10, v9

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_b
    new-instance v11, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_c
    iput-object v6, v8, Lju;->l:Landroid/view/View;

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_d
    iget v6, v0, Lfr;->i:I

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean v0, v0, Lfr;->x:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v3, v8, Lju;->g:I

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_12
    move-object v4, v7

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_13
    if-nez v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    :goto_14
    iput v6, v8, Lju;->j:I

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_15
    check-cast v11, Lfu;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_17
    new-array v10, v10, [I

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v3, v0, v7, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_8d

    nop

    :goto_1a
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_1b
    const v5, 0x7f0e000c

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_1c
    if-nez v14, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7c

    nop

    nop

    :goto_1d
    sub-int/2addr v15, v5

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v8}, Lju;->s()V

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v10, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_22
    iget-object v12, v0, Lfr;->d:Landroid/view/View;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v10}, Lfx;->size()I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_24
    iget-object v10, v8, Ljx;->q:Landroid/widget/PopupWindow;

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v10, v0, Lfr;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-boolean v3, v4, Lfu;->b:Z

    nop

    nop

    :goto_27
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v3, v8, v1, v5}, Lqxk;-><init>(Ljx;Lfx;I)V

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eq v15, v6, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lfr;->u()Z

    move-result v3

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

    nop

    :goto_2b
    const v2, 0x1020016

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v2, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_2d
    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v4, v0, Lfr;->b:Ljava/util/List;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_30
    check-cast v10, Lfx;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v8, v0}, Lju;->v(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_e0

    nop

    :goto_33
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v2, v0, Lfr;->h:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4e

    nop

    nop

    :goto_36
    invoke-static/range {p1 .. p1}, Lgf;->w(Lfx;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_39
    add-int/lit8 v15, v15, 0x1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

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

    :goto_3b
    invoke-virtual {v8, v3}, Lju;->r(I)V

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3d
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_3e
    move-object v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_c5

    nop

    :goto_40
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v8}, Lju;->y()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_42
    if-gt v10, v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v13, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sub-int/2addr v6, v3

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_45
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_47
    add-int/2addr v15, v12

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-boolean v3, v0, Lfr;->t:Z

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_49
    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :cond_6
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    aget v6, v10, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v13, :cond_7

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_d5

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v3, v0, Lfr;->u:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_4f
    const/4 v6, -0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_50
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v3, :cond_8

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_52
    iget v7, v0, Lfr;->j:I

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v8, v9}, Lju;->j(I)V

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-nez v0, :cond_9

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move v13, v9

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_58
    check-cast v6, Lqxk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-eq v12, v13, :cond_a

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_a
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5a
    if-gez v15, :cond_b

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto :goto_56

    nop

    :goto_5c
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v10, v12}, Lfx;->getItem(I)Landroid/view/MenuItem;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_5e
    iget-object v0, v1, Lfx;->e:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_5f
    iput-object v5, v8, Lju;->l:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_60
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_61
    if-nez v3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-eq v6, v10, :cond_d

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

    :cond_d
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v10, v8, Ljx;->q:Landroid/widget/PopupWindow;

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual/range {p0 .. p0}, Lfr;->u()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v8, v3}, Lju;->j(I)V

    :goto_66
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-eq v1, v14, :cond_e

    nop

    goto/32 :goto_e2

    nop

    :cond_e
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v11, v15}, Lfu;->a(I)Lfz;

    move-result-object v5

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iput v4, v8, Lju;->j:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_6c
    iput v13, v0, Lfr;->r:I

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_6d
    move v12, v9

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_6f
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v6, v0, Lfr;->h:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    add-int/2addr v10, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-nez v3, :cond_f

    nop

    goto/32 :goto_66

    nop

    :cond_f
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v8, v3}, Lju;->t(Landroid/graphics/Rect;)V

    :goto_75
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-eqz v4, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :cond_10
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_77
    iput-boolean v3, v8, Lju;->h:Z

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_78
    add-int/2addr v10, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_79
    iget v6, v0, Lfr;->p:I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v10, v4, Lqxk;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-boolean v3, v0, Lfr;->w:Z

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_7c
    invoke-interface {v13}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_7d
    iput-object v0, v8, Lju;->m:Landroid/widget/AdapterView$OnItemClickListener;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_7e
    iget-object v3, v0, Lfr;->h:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7f
    if-eqz v13, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :cond_11
    :goto_80
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_81
    if-lt v12, v11, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_12
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    new-instance v4, Lfu;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v12, v11}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_c3

    nop

    :goto_85
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    if-ltz v6, :cond_13

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_13
    :goto_87
    goto/32 :goto_2d

    nop

    nop

    :goto_88
    move v15, v6

    nop

    :goto_89
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    add-int/2addr v10, v3

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    instance-of v12, v11, Landroid/widget/HeaderViewListAdapter;

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    move v12, v9

    nop

    nop

    nop

    nop

    :goto_8d
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto/16 :goto_c3

    nop

    nop

    :goto_8f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_90
    move-object v13, v7

    nop

    :goto_91
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    new-instance v8, Ljx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    and-int/2addr v6, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_94
    iget-boolean v3, v0, Lfr;->s:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_95
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_96
    iget v3, v0, Lfr;->v:I

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_97
    invoke-interface {v13}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v10}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iput-boolean v5, v4, Lfu;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_9a
    goto/16 :goto_80

    nop

    nop

    :goto_9b
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-static {v4, v3, v6}, Lfr;->x(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    move-result v3

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/16 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v10}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_a0
    iput-object v6, v8, Ljx;->a:Ljv;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_a2
    if-lt v15, v14, :cond_14

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

    :cond_14
    goto/32 :goto_68

    nop

    nop

    :goto_a3
    iget-object v3, v0, Lgf;->g:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_a4
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a6
    iget-object v1, v1, Lfx;->e:Ljava/lang/CharSequence;

    nop

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

    nop

    :goto_a7
    const v0, 0x7f0e0013

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    const/4 v10, 0x2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a9
    if-lez v0, :cond_15

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_32

    nop

    :goto_aa
    iget-object v6, v0, Lfr;->n:Ljv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_ab
    goto/16 :goto_75

    nop

    nop

    :goto_ac
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v6}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_ae
    iput v3, v8, Lju;->g:I

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_48

    nop

    nop

    :goto_b0
    if-eq v13, v5, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :cond_16
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    iget-object v6, v0, Lfr;->q:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b2
    invoke-virtual {v8, v4}, Lju;->e(Landroid/widget/ListAdapter;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    if-ge v15, v5, :cond_17

    nop

    nop

    goto/32 :goto_9b

    nop

    :cond_17
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v10, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_b5
    invoke-direct {v4, v1, v2, v3, v5}, Lfu;-><init>(Lfx;Landroid/view/LayoutInflater;ZI)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v8}, Lju;->s()V

    :goto_b7
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {v6, v10}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-direct {v8, v6, v7}, Ljx;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_ba
    goto/16 :goto_89

    nop

    :goto_bb
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {v2, v0, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    if-nez v12, :cond_18

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_dc

    nop

    nop

    :goto_be
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_c0
    check-cast v11, Lfu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v4}, Lqxk;->c()Landroid/widget/ListView;

    move-result-object v10

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_c2
    neg-int v3, v3

    nop

    nop

    nop

    nop

    :goto_c3
    goto/32 :goto_11

    nop

    nop

    :goto_c4
    move v15, v9

    nop

    nop

    nop

    nop

    :goto_c5
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_c6
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v10, v7}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    if-nez v0, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :cond_19
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_c9
    iput-boolean v3, v8, Lju;->i:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_ca
    iget v6, v11, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    goto :goto_d5

    nop

    nop

    :goto_cc
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    iget v6, v0, Lfr;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget v12, v0, Lfr;->r:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iget-boolean v3, v0, Lfr;->k:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    const v0, 0x18

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    check-cast v0, Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_d4
    move-object v5, v4

    nop

    :goto_d5
    goto/32 :goto_13

    nop

    nop

    :goto_d6
    add-int/2addr v11, v6

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    iget v4, v0, Lfr;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_d8
    iget-object v5, v0, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_d9
    const/4 v13, 0x1

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_da
    invoke-virtual {v11}, Lfu;->getCount()I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_db
    new-instance v3, Lqxk;

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

    :goto_dc
    check-cast v11, Landroid/widget/HeaderViewListAdapter;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v6}, Lqxk;->c()Landroid/widget/ListView;

    move-result-object v6

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_de
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_df
    return-void

    nop

    nop

    nop

    :goto_e0
    goto/32 :goto_72

    nop

    nop

    :goto_e1
    goto/16 :goto_91

    nop

    nop

    nop

    :goto_e2
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_e3
    if-gtz v4, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_1a
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_e4
    iget-object v3, v8, Lju;->e:Ljb;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v10, v9}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    :goto_0
    iput-boolean v1, p0, Lfr;->w:Z

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lfr;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lfp;

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

    nop

    :goto_3
    goto/32 :goto_c

    nop

    :goto_4
    div-int/lit8 p2, p2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    const p3, 0x7f070017

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, v1}, Lfp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_f

    nop

    nop

    :goto_b
    goto/32 :goto_2c

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lgn;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    invoke-direct {p0}, Lfr;->d543f409229584e2e064495967092514m()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lfr;->m:Landroid/view/View$OnAttachStateChangeListener;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_11
    new-instance v0, Lfq;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p0}, Lfq;-><init>(Lfr;)V

    goto/32 :goto_29

    nop

    nop

    :goto_13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput p1, p0, Lfr;->i:I

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

    :goto_17
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    iput p3, p0, Lfr;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Lfr;->a:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

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

    :goto_1b
    iput v1, p0, Lfr;->o:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p2, p0, Lfr;->q:Landroid/view/View;

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

    :goto_1d
    invoke-direct {p0}, Lgf;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1e
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_20
    iput v1, p0, Lfr;->p:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    iput p2, p0, Lfr;->r:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_23
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    iput-boolean p4, p0, Lfr;->k:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_26
    new-instance p1, Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_29
    iput-object v0, p0, Lfr;->n:Ljv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2a
    iput-object v0, p0, Lfr;->l:Ljava/util/List;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    :goto_2c
    goto/32 :goto_3

    nop

    nop

    :goto_2d
    invoke-direct {v0, p0, v1}, Lgn;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_2e
    iput-object v0, p0, Lfr;->b:Ljava/util/List;

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

    :goto_2f
    iput-object p1, p0, Lfr;->h:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop
.end method

.method private final d543f409229584e2e064495967092514m()I
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq p0, v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

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

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return v0

    nop

    nop

    :goto_6
    iget-object p0, p0, Lfr;->q:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final bU()Landroid/widget/ListView;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lqxk;->c()Landroid/widget/ListView;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lqxk;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final c(Lfx;Z)V
    .locals 5

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_32

    nop

    :goto_1
    goto/32 :goto_5c

    nop

    nop

    :goto_2
    iget-object p2, p0, Lfr;->y:Lgh;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3
    if-lt v2, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_5
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_6
    iget-object v2, v0, Lqxk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lfr;->d:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lju;->k()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_a
    const/4 v2, -0x1

    nop

    nop

    :goto_b
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_d
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Lfx;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, v0, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, v3, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_11
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_1
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    :goto_16
    iget-object p1, p0, Lfr;->e:Landroid/view/ViewTreeObserver;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_1a

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v2, p0, Lfr;->r:I

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p0, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_1c
    iget-object v2, v0, Lqxk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, p0}, Lfx;->m(Lgi;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Lqxk;

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

    nop

    :goto_21
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_22
    invoke-direct {p0}, Lfr;->d543f409229584e2e064495967092514m()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_23
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    :cond_4
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lfr;->b:Ljava/util/List;

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

    :goto_25
    check-cast v2, Lfx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_27
    iput v2, p0, Lfr;->r:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_29
    iget-object v2, v0, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_2c
    goto/32 :goto_4e

    nop

    nop

    :goto_2d
    check-cast p0, Lqxk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p2, p0, Lfr;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v0, Lju;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    :goto_32
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_33
    check-cast v2, Lju;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_36
    if-eq p1, v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5a

    nop

    nop

    :goto_37
    iget-object v3, p0, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_38
    if-ltz v2, :cond_7

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_7
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0, v1}, Lfx;->i(Z)V

    :goto_3a
    goto/32 :goto_31

    nop

    nop

    :goto_3b
    if-nez p2, :cond_8

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v2, v2, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_3e
    iget-object p0, p0, Lfr;->z:Landroid/widget/PopupWindow$OnDismissListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_3f
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {p2, p1, v0}, Lgh;->a(Lfx;Z)V

    :goto_44
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-nez p2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_48
    add-int/lit8 v4, v0, -0x1

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_49
    iget-object v0, v0, Lqxk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_4a
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p1, p0, Lfr;->e:Landroid/view/ViewTreeObserver;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4d
    iget-boolean v2, p0, Lfr;->f:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4e
    iput-object v3, p0, Lfr;->e:Landroid/view/ViewTreeObserver;

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v3, p0, Lfr;->b:Ljava/util/List;

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

    :goto_51
    if-lt v0, v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_52
    iget-object p0, p0, Lqxk;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_53
    check-cast v0, Lqxk;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_54
    iget v2, v2, Lqxk;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v2, Ljx;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_56
    if-gtz v0, :cond_b

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0, v1}, Lfx;->i(Z)V

    :goto_58
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast v2, Lqxk;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5c
    iget-object v0, p0, Lfr;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast v3, Lqxk;

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

    :goto_5e
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    check-cast p0, Lfx;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p0}, Lfr;->k()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_62
    const v0, 0x12

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v2, v2, Ljx;->q:Landroid/widget/PopupWindow;

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

    :goto_64
    rem-int v0, v0, v1

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

    :goto_65
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_66
    iget-object p2, p0, Lfr;->m:Landroid/view/View$OnAttachStateChangeListener;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v0, p0, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_68
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_69
    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v3, p0, Lfr;->b:Ljava/util/List;

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

    nop

    nop

    :goto_6b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    add-int/lit8 v0, v2, 0x1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lgh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfr;->y:Lgh;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lgp;)Z
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Lqxk;->c()Landroid/widget/ListView;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_7
    iget-object v3, v1, Lqxk;->c:Ljava/lang/Object;

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

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_9
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_b
    return v2

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    if-eq p1, v3, :cond_3

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
    goto/32 :goto_1

    nop

    nop

    :goto_e
    invoke-interface {p0, p1}, Lgh;->b(Lfx;)Z

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p0, :cond_4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroid/widget/ListView;->requestFocus()Z

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    nop

    :goto_15
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1}, Lfr;->j(Lfx;)V

    goto/32 :goto_17

    nop

    nop

    :goto_17
    iget-object p0, p0, Lfr;->y:Lgh;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    return v2

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Lfx;->hasVisibleItems()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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

    nop

    :goto_21
    check-cast v1, Lqxk;

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

.method public final i()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lqxk;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_b

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lfu;->notifyDataSetChanged()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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
    invoke-static {v0}, Lfr;->v(Landroid/widget/ListAdapter;)Lfu;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lqxk;->c()Landroid/widget/ListView;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final j(Lfx;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lfr;->7dd154808b1c676d3d63f3a63e9edabfm(Lfx;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lfr;->u()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    iget-object v0, p0, Lfr;->h:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0, v0}, Lfx;->h(Lgi;Landroid/content/Context;)V

    goto/32 :goto_4

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    iget-object p0, p0, Lfr;->l:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop
.end method

.method public final k()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    check-cast v2, Lju;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    goto :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, [Lqxk;

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, v1, Lqxk;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v1, Lju;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    :goto_11
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    aget-object v1, p0, v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lfr;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Lju;->k()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    :goto_16
    if-gtz v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_18
    if-gez v0, :cond_3

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

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-array v1, v0, [Lqxk;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2}, Lju;->u()Z

    move-result v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    iget-object v1, v1, Lqxk;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lfr;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method

.method public final l(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_8

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
    iput-object p1, p0, Lfr;->q:Landroid/view/View;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ne v0, p1, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput p1, p0, Lfr;->p:I

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lfr;->o:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lfr;->q:Landroid/view/View;

    nop

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

.method public final m(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lfr;->w:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public final n(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget v0, p0, Lfr;->o:I

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lfr;->p:I

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Lfr;->o:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    iget-object v0, p0, Lfr;->q:Landroid/view/View;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop
.end method

.method public final o(I)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lfr;->u:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lfr;->s:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final onDismiss()V
    .locals 5

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, v3, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v4, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_1c

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

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v1}, Lfx;->i(Z)V

    :goto_5
    goto/32 :goto_13

    nop

    nop

    :goto_6
    if-nez v3, :cond_1

    nop

    nop

    nop

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

    nop

    :goto_7
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v3, p0, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v4, v3, Lqxk;->b:Ljava/lang/Object;

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

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    const/4 v3, 0x0

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    const v1, 0x13

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

    :goto_10
    move v2, v1

    nop

    :goto_11
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v4}, Lju;->u()Z

    move-result v4

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

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    goto :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_1a
    check-cast v4, Lju;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1c
    goto :goto_e

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v3, Lqxk;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_20
    check-cast p0, Lfx;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_21
    if-lt v2, v0, :cond_3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    :goto_22
    const v0, 0x11

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq p1, p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    const/16 p1, 0x52

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lfr;->k()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    return p3

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq p2, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p3, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final p(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lfr;->z:Landroid/widget/PopupWindow$OnDismissListener;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final q(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lfr;->x:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final r(I)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lfr;->v:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lfr;->t:Z

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

    :goto_2
    return-void

    nop

    :goto_3
    const/4 v0, 0x1

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
.end method

.method public final s()V
    .locals 2

    goto/32 :goto_24

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfr;->l:Ljava/util/List;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lfr;->l:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lfr;->d:Landroid/view/View;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lfr;->u()Z

    move-result v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    iget-object v1, p0, Lfr;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lfr;->d:Landroid/view/View;

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
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_13

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_27

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    check-cast v1, Lfx;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_15

    nop

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_19
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    :goto_1a
    iget-object p0, p0, Lfr;->m:Landroid/view/View$OnAttachStateChangeListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, v1}, Lfr;->7dd154808b1c676d3d63f3a63e9edabfm(Lfx;)V

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lfr;->e:Landroid/view/ViewTreeObserver;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_4

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lfr;->q:Landroid/view/View;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    iget-object v1, p0, Lfr;->e:Landroid/view/ViewTreeObserver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_24
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_26
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1e

    nop

    nop

    nop
.end method

.method protected final t()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final u()Z
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    :goto_2
    iget-object p0, p0, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    return v1

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    iget-object v0, p0, Lfr;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lju;->u()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lqxk;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_c
    check-cast p0, Lju;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x1

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

    :goto_10
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

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

    :goto_12
    goto/32 :goto_4

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    check-cast p0, Lqxk;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    if-gtz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method
