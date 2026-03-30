.class public final synthetic Lghh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lghh;->b:I

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

    :goto_2
    iput-object p1, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljtn;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p1, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lghh;->b:I

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
.end method


# virtual methods
.method public final run()V
    .locals 9

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v3, v0, Lgfj;->e:Z

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lglc;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_3
    const/16 v7, 0xe

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :pswitch_0
    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_7
    new-instance v2, Landroid/widget/PopupWindow;

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_a
    check-cast v2, Lghj;

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Ljbd;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    :goto_e
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Lpdh;->a()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lgkk;->l:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v2, "Cannot be started when closed"

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Ljjr;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_15f

    nop

    :goto_15
    check-cast p0, Lglc;

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p0, Lghj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lglm;->d:Loyd;

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_1a
    iget-object v4, p0, Lgla;->g:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x7f0c000e

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    :goto_1c
    iget v4, v0, Lgfj;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_185

    nop

    nop

    :goto_1e
    invoke-virtual {v1}, Lhco;->a()Lpog;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v0}, Lglm;->e(Lgln;)V

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    :pswitch_2
    goto/32 :goto_166

    nop

    nop

    nop

    nop

    :goto_21
    move-object v0, p0

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p0, Lgmc;

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v7, 0x7f140070

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v3, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p0, Lliq;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_27
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_180

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v0, Lgfj;->g:Landroid/widget/PopupWindow;

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v1, Lgmu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v3, p0, Lgla;->a:Landroid/widget/TextView;

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_2e
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_150

    nop

    nop

    :goto_2f
    iget-object v1, v0, Lgkk;->g:Loyd;

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_31
    iget-object v1, v0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_32
    const v2, 0x7f0e00fc

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast p0, Lgli;

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_35
    const/16 v5, 0x8

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    :goto_36
    iget-object p0, v0, Ljbd;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    int-to-long v3, v3

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_17e

    nop

    nop

    :goto_39
    const v2, 0x7f0b04f6

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    :pswitch_3
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_48

    nop

    nop

    :goto_3d
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p0}, Lpci;->close()V

    :goto_40
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_43
    invoke-interface {v1, v2, v3}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_44
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v0}, Lnnr;->k(Landroid/content/Context;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_46
    invoke-interface {v0}, Lpgh;->close()V

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Lkmh;->f()V

    goto/32 :goto_b6

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Lliq;->close()V

    goto/32 :goto_11f

    nop

    nop

    :goto_4b
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_4c
    new-instance v1, Lhxm;

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v4, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iput-object v2, v0, Lgfj;->g:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

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

    :goto_50
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    :goto_51
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {v2, v1, v7}, Lhow;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {v6, v0, v7}, Lghh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_54
    new-instance v4, Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_55
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    nop

    :goto_56
    check-cast p0, Lgjw;

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_57
    new-instance v6, Lghh;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p0, v3}, Lglc;->setAlpha(F)V

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_59
    iget-object v0, p0, Lglb;->b:Lglc;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v1, p0, Ljjr;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_5c
    iget-object v3, v0, Lgfj;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p0, v0, v1, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_5f
    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_61
    check-cast v1, Landroid/widget/Button;

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    :goto_62
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p0}, Lgjs;->a()F

    move-result v0

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    :goto_64
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_65
    iget-object v1, p0, Ljjr;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_66
    iget-object v1, v0, Lgfj;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_67
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    :try_start_0
    move-object v0, p0

    nop

    nop

    nop

    check-cast v0, Lgli;

    nop

    invoke-virtual {v0}, Lgli;->f()V

    move-object v0, p0

    nop

    check-cast v0, Lgli;

    nop

    iget-object v0, v0, Lgli;->h:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_69
    invoke-virtual {p0}, Lgjn;->b()V

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v7, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_6b
    check-cast v2, Landroid/widget/Button;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-interface {v2, v1}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p0}, Lgla;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_6e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    check-cast p0, Lglm;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_71
    iget-object v0, p0, Lglb;->b:Lglc;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_72
    const v4, 0x7f0c000c

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_73
    iget-object v0, p0, Lgkk;->m:Lpgh;

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v0}, Lglc;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_75
    goto/16 :goto_29

    nop

    :goto_76
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_77
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    :goto_78
    xor-int/2addr v1, v7

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_79
    iget-object v4, p0, Lgla;->b:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v0}, Lglc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v2, p0, Ljjr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_7c
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_40

    nop

    :goto_7f
    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    new-instance v7, Lghh;

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_81
    const-string v3, "#run"

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_82
    new-instance v0, Lgky;

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    :goto_83
    check-cast v0, Lgkk;

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_84
    new-instance v4, Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_86
    return-void

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p0, v0}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_89
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_8a
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_8c
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iput-object v4, p0, Lgla;->g:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_8e
    check-cast v0, Lgfj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_8f
    move v8, v7

    nop

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_16e

    nop

    nop

    :goto_91
    iget-object p0, p0, Ljjr;->a:Ljava/lang/Object;

    nop

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

    :goto_92
    check-cast v1, Lgmc;

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_93
    check-cast p0, Ljtn;

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_94
    iget-object p0, v0, Lgfj;->g:Landroid/widget/PopupWindow;

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_95
    check-cast p0, Ljjr;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_96
    iget-boolean v1, v0, Lgkk;->o:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {p0}, Lgla;->getVisibility()I

    move-result v0

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_99
    int-to-long v3, v3

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

    :goto_9a
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {p0}, Lgla;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    if-nez v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :cond_4
    goto/32 :goto_14a

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-direct {v4, v3, v7}, Lfxf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const/16 v3, 0x10

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_a1
    iget-object p0, p0, Ljtn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    new-instance v0, Lgkz;

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    :goto_a3
    const v3, 0x7f08017d

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-static {v1, v2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_168

    nop

    nop

    :goto_a5
    iget-object p0, p0, Lgkk;->n:Lpci;

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v3, p0, Lgla;->a:Landroid/widget/TextView;

    nop

    goto/32 :goto_172

    nop

    nop

    :goto_a7
    iget-object v0, p0, Lgla;->d:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-interface {v2, v3, v1}, Lpdf;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    check-cast v0, Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {p0}, Lgla;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_ac
    return-void

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    int-to-long v5, v2

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    :goto_ae
    check-cast p0, Lgmc;

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    check-cast p0, Lows;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_b0
    check-cast p0, Lglb;

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_b1
    int-to-long v5, v1

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    sget-object v0, Lgln;->a:Lgln;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_b3
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_b4
    iput-boolean v7, p0, Lglm;->i:Z

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

    :goto_b5
    iget-object v5, p0, Lgla;->e:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_b6
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    goto/16 :goto_3c

    nop

    :goto_b8
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_ba
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v1, v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

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

    :goto_bc
    sget-object v0, Lhci;->c:Lhci;

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    :goto_bd
    const/16 v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_be
    check-cast p0, Lglb;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_bf
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v1, v2}, Lhco;->e(Lpog;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    return-void

    nop

    nop

    nop

    :goto_c2
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-direct {v1, p0, v7}, Lhxm;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_c4
    new-instance v1, Lgt;

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_c5
    const-string v1, "#get-all"

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_c6
    if-eqz v1, :cond_6

    nop

    goto/32 :goto_146

    nop

    nop

    :cond_6
    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_c7
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_c8
    if-eqz v1, :cond_7

    nop

    goto/32 :goto_90

    nop

    :cond_7
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    iget-object v1, v0, Lgkk;->m:Lpgh;

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_cb
    invoke-direct {v3, v4, v7, v6}, Lgt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iput-object v1, v0, Lgkk;->n:Lpci;

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    :goto_cd
    const/4 v3, -0x2

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-direct {v1, p0, v5, v6}, Lgt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_cf
    iput-object v4, p0, Lgla;->g:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v1, v1, Lgmc;->d:Lhco;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_d2
    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    iget-object v2, v2, Lghj;->b:Lpdf;

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

    :goto_d4
    if-eq v0, v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_c1

    nop

    nop

    :goto_d5
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    const v4, 0x7f0b04f7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_d7
    sget-object v0, Lgln;->a:Lgln;

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    new-instance v2, Lgfs;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_d9
    iget-object v0, v0, Lgfj;->c:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_da
    invoke-interface {v0}, Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;->close()V

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-direct {v2, p0, v3}, Lgfs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_dd
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_de
    iget-object p0, p0, Lglb;->c:Lgla;

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_df
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v3

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    :goto_e0
    iget-object p0, p0, Ljbd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-interface {v0, v1}, Lpgh;->l(Lpgg;)V

    goto/32 :goto_126

    nop

    nop

    nop

    :goto_e2
    check-cast v2, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_e3
    iget-object v3, v0, Lgkk;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_e4
    const-string v2, "#run-all"

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_e5
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_e6
    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_e7
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_e8
    iget-object v0, p0, Lgla;->f:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    :goto_e9
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    iget-object v1, v0, Lgkk;->e:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    iget-object v2, v2, Lghj;->b:Lpdf;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_ec
    const v3, 0x10600aa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    iget-object v2, v0, Lgkk;->j:Lphh;

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-interface {v1, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_fd

    nop

    nop

    :goto_ef
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_f1
    iget-object p0, p0, Lgli;->h:Lsuu;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    check-cast v1, Lghj;

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-direct {v1, p0, v7}, Lgmu;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_f5
    return-void

    nop

    :pswitch_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f6
    check-cast p0, Lgkk;

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    :goto_f7
    return-void

    nop

    :pswitch_b
    goto/32 :goto_67

    nop

    nop

    :goto_f8
    const/16 v7, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_f9
    check-cast v2, Lghj;

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    check-cast v1, Lmiu;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_fb
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_fc
    iget-object v1, v1, Lghj;->b:Lpdf;

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    iget-object v0, p0, Ljjr;->b:Ljava/lang/Object;

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

    :goto_fe
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    check-cast v1, Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    :goto_100
    iget-object v0, v0, Lgkk;->m:Lpgh;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    iput-boolean v8, p0, Lglm;->i:Z

    nop

    nop

    nop

    :goto_103
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_104
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_106
    invoke-virtual {p0, v0}, Lglm;->f(Lgln;)V

    goto/32 :goto_102

    nop

    nop

    :goto_107
    return-void

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_108
    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_109
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_10a
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_10b
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_10c
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_10d
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    :goto_10e
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    const v3, 0x7f0b0174

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    :goto_111
    int-to-long v1, v1

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

    :goto_112
    const/16 v8, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_113
    check-cast p0, Lgjs;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_114
    if-nez v4, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_a
    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_115
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_116
    invoke-direct {v2, v1, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_117
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_118
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_119
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    :cond_b
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_11b
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    iput-object v6, p0, Lgkk;->m:Lpgh;

    nop

    nop

    nop

    :goto_11d
    goto/32 :goto_10

    nop

    nop

    :goto_11e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d9

    nop

    nop

    :goto_11f
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    const v7, 0x7f140071

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_121
    iget-object v1, v0, Lgfj;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_122
    const v0, 0x3

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_123
    invoke-virtual {p0, v8}, Lglc;->setVisibility(I)V

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_125
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_126
    return-void

    nop

    :pswitch_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    iget-object v2, p0, Ljjr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_128
    return-void

    nop

    nop

    :pswitch_11
    goto/32 :goto_154

    nop

    nop

    :goto_129
    invoke-direct {v7, v0, v8}, Lghh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    if-eqz p0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    :cond_c
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_12b
    invoke-direct {v0, p0}, Lgkz;-><init>(Lgla;)V

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12d
    invoke-static {v4}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    iget-object p0, p0, Lgmc;->d:Lhco;

    nop

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    :goto_130
    invoke-interface {v2}, Lmiu;->run()V

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_131
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_132
    iget-boolean v0, p0, Lgkk;->o:Z

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_133
    check-cast p0, Lglc;

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

    :goto_134
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto/32 :goto_143

    nop

    nop

    :goto_135
    iget-object v3, p0, Lgla;->c:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_136
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_137
    check-cast p0, Ljbd;

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_138
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_139
    invoke-virtual {p0, v5}, Lglc;->setVisibility(I)V

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    invoke-virtual {p0}, Lgjw;->g()V

    goto/32 :goto_107

    nop

    nop

    :goto_13b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_156

    nop

    nop

    :goto_13c
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_13d
    return-void

    nop

    :pswitch_12
    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    :goto_13e
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    iget-object v3, p0, Lgla;->d:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_140
    invoke-static {v8, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_141
    iget-object v1, v0, Lgkk;->p:Lpik;

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_142
    if-eqz v1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_143
    iget-object v4, p0, Lgla;->g:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_114

    nop

    nop

    :goto_144
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_145
    iput-object v1, v0, Lgkk;->l:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    nop

    :goto_146
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_147
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_148
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_149
    const/4 v7, 0x7

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    iget-object v3, v0, Lgfj;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_14b
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_14c
    invoke-virtual {p0}, Lgla;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    :goto_14e
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    invoke-virtual {v1, v2}, Lpik;->d(Lphh;)Lpgo;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    :goto_150
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_a
        :pswitch_e
        :pswitch_0
        :pswitch_7
        :pswitch_11
        :pswitch_2
        :pswitch_c
        :pswitch_9
        :pswitch_10
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_f
        :pswitch_d
        :pswitch_13
        :pswitch_b
        :pswitch_5
        :pswitch_8
        :pswitch_6
    .end packed-switch

    :goto_151
    goto/32 :goto_14

    nop

    nop

    :goto_152
    invoke-virtual {v0}, Lglc;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_153
    iget v0, p0, Lghh;->b:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_154
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    :goto_155
    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

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

    :goto_156
    new-instance v2, Lhow;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_157
    iput-object v1, v0, Lgkk;->m:Lpgh;

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_158
    invoke-virtual {p0, v8}, Lgmc;->g(Z)V

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_159
    check-cast p0, Lkmh;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    check-cast p0, Lgjn;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_15b
    invoke-static {v4}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_15c
    if-lez v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_15e

    nop

    :goto_15d
    const v2, 0x7f0c000f

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_15e
    goto/32 :goto_151

    nop

    :goto_15f
    goto/32 :goto_153

    nop

    nop

    :goto_160
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_161
    invoke-virtual {p0, v0}, Lgmc;->c(Lhci;)V

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_162
    iget-object v0, p0, Lgla;->c:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_163
    iget-object v3, v0, Lgfj;->c:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_164
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_165
    if-nez v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_166
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :goto_167
    invoke-virtual {p0, v0}, Lgjs;->e(F)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_168
    iget-object v1, v0, Lgkk;->l:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_169
    iget-object p0, v0, Lgfj;->g:Landroid/widget/PopupWindow;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    iget-object p0, p0, Lghh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    if-nez p0, :cond_10

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_16d
    iput-boolean v7, p0, Lgkk;->o:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    const-string v1, "Already started"

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    :goto_16f
    int-to-long v1, v1

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_170
    return-void

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_144

    nop

    nop

    nop

    :goto_171
    iget-object v1, v0, Lgfj;->b:Landroid/view/LayoutInflater;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_172
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto/32 :goto_135

    nop

    nop

    :goto_173
    invoke-virtual {v1, v2, v7}, Lpik;->c(Lpgo;I)Lpgh;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    :goto_174
    iget-object v4, p0, Lgla;->b:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_175
    new-instance v4, Lfxf;

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_176
    new-instance v3, Lgt;

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_177
    invoke-interface {p0}, Lpci;->close()V

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_178
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_179
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_17a
    iput-object v6, p0, Lgkk;->l:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    nop

    nop

    :goto_17b
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_17c
    check-cast v4, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_17d
    iget-object p0, p0, Lghj;->b:Lpdf;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    iget-object p0, p0, Lglb;->c:Lgla;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    check-cast p0, Lgmc;

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    :goto_180
    iget-boolean v0, p0, Lglm;->i:Z

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_181
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_182
    invoke-direct {v0, p0}, Lgky;-><init>(Lgla;)V

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_183
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_184
    invoke-virtual {p0, v1}, Lhco;->h(Ljava/lang/Runnable;)V

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_185
    const v2, 0x7f0b04f0

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop
.end method
