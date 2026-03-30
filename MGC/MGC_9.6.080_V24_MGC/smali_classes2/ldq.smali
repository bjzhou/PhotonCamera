.class public final synthetic Lldq;
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

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p2, p0, Lldq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

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

    :goto_2
    iput-object p1, p0, Lldq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

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

    nop
.end method


# virtual methods
.method public final run()V
    .locals 21

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 v3, 0xbb8

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_3
    add-int/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_e
        :pswitch_12
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_10
        :pswitch_7
        :pswitch_9
        :pswitch_11
        :pswitch_13
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_5
    goto/32 :goto_157

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_9
    or-int/2addr v2, v4

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v5, v1, Llmd;->p:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v3, v0, Llgt;->d:Loxp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_c
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_d
    const/16 v2, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_e
    iget-object v1, v1, Llkr;->g:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, v0, v2}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v1, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

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

    :goto_13
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_14
    iput v5, v3, Lskj;->c:I

    nop

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

    :goto_15
    invoke-virtual {v0, v1}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_16
    iget v2, v1, Llck;->a:I

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_18
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, v0, Llmd;->h:Landroid/hardware/SensorManager;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1a
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    :goto_1c
    goto/32 :goto_144

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Ltkb;->o()V

    goto/32 :goto_62

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_1f
    throw v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    :goto_21
    throw v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v0, Llmd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v2, v0, Llgt;->b:Lows;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_24
    move-object v1, v0

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

    :goto_25
    iget-object v2, v0, Llgt;->c:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_26
    iget-object v1, v1, Llkr;->g:Ljava/util/concurrent/locks/ReentrantLock;

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

    :goto_27
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_28
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, v3, Lluy;->l:Lnnt;

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_2a
    cmpl-float v1, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v0, Llmd;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v1, "OneCamera closed."

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_2e
    const-wide/16 v3, 0x12c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_30
    iget-object v3, v1, Llmd;->q:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v2, Lskj;->a:Lskj;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_32
    iget-object v2, v1, Llmd;->l:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, v2}, Lnnt;->e(F)V

    :goto_34
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v1, Lldq;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v9, v1, Llmd;->o:Landroid/view/View;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_38
    if-eq v5, v7, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    :goto_39
    iget-object v0, v0, Llkv;->a:Llkw;

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_3a
    add-int/lit8 v2, v2, -0x1e

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v1}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_6b

    nop

    nop

    :goto_3d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3e
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_3f
    iget-object v2, v1, Llkr;->g:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_40
    const/16 v3, 0xb

    nop

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

    :goto_41
    const-wide/16 v7, 0x3c

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_43
    iget-object v0, v0, Llmd;->d:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    :goto_44
    iget-object v4, v1, Llmd;->j:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_45
    iput-object v2, v1, Llmd;->l:Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput v4, v3, Lskj;->b:I

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v1, Llmd;

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_4a
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4c
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v1, v0, Llmd;->n:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v0, Llgt;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    sub-int v3, v2, v3

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    :goto_50
    goto :goto_4c

    nop

    :goto_51
    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_53
    check-cast v1, Llkq;

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_54
    check-cast v0, Llmd;

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_55
    iget-object v3, v0, Llgt;->d:Loxp;

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    :goto_56
    if-eq v3, v7, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v2, v1, Llmd;->l:Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_58
    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iput v2, v3, Lskd;->b:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_5a
    check-cast v0, Lgjp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_5c
    check-cast v1, Llck;

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

    :goto_5d
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    move-object v2, v0

    nop

    nop

    nop

    nop

    check-cast v2, Llkr;

    nop

    nop

    iget-boolean v2, v2, Llkr;->f:Z

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    check-cast v0, Llkr;

    nop

    nop

    nop

    iget-object v0, v0, Llkr;->e:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;->unload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v1, :cond_3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_136

    nop

    nop

    nop

    :goto_60
    const/4 v7, -0x1

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const-string v4, "Low Priority OneCameraLifetime"

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_d7

    nop

    :pswitch_4
    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v2, v1, Llmd;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    :goto_64
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_65
    check-cast v3, Lskd;

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v0, v1, Llkr;->g:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_67
    iget-object v1, v0, Llmd;->n:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_69
    sget-object v3, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const/16 v2, 0xe

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast v1, Llkr;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const v1, 0x18

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v0, v1, Llkr;->g:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget v2, v3, Lskd;->b:I

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    move-object v2, v0

    nop

    nop

    nop

    check-cast v2, Llkr;

    nop

    nop

    iget-boolean v2, v2, Llkr;->f:Z

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    check-cast v0, Llkr;

    nop

    nop

    nop

    iget-object v0, v0, Llkr;->e:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;->reload()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_4
    goto/32 :goto_66

    nop

    nop

    :goto_72
    invoke-virtual {v1, v2}, Llva;->setVisibility(I)V

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_73
    iget-object v0, v0, Llmd;->h:Landroid/hardware/SensorManager;

    nop

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

    :goto_74
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_75
    invoke-interface {v0, v1}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_76
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->bringToFront()V

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_78
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_79
    monitor-enter v1

    nop

    nop

    nop

    :try_start_2
    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Llgt;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Llgt;->e:Lsui;

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    invoke-interface {v2, v9}, Lsui;->cancel(Z)Z

    :cond_5
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_12d

    nop

    nop

    :goto_7a
    invoke-interface {v2, v5, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_7b
    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/32 :goto_127

    nop

    nop

    :goto_7d
    check-cast v2, Lskj;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    move-object v0, v1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_7f
    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_80
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_3
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_81
    iput-object v0, v1, Llmd;->m:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v0, v0, Llmd;->d:Lowu;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v0, v0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->d:Lmjv;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v0, v1, Llkr;->g:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_87
    iget-object v1, v0, Lldq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v3, v1, Llck;->b:Lluy;

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_89
    move-object/from16 v0, p0

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-direct {v2, v0, v3}, Lhos;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_8b
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :cond_6
    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

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

    :goto_8d
    iget-object v5, v1, Llmd;->p:Landroid/view/View;

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    or-int/2addr v2, v9

    nop

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

    :goto_8f
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_90
    if-eqz v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    if-nez v3, :cond_8

    nop

    goto/32 :goto_10d

    nop

    :cond_8
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_92
    invoke-static {v3}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iput v2, v3, Lskd;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_94
    const-string v3, "Closing one camera."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_95
    check-cast v0, Llmd;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_96
    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_98
    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v0}, Llkw;->a()V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    return-void

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_9b
    if-eqz v3, :cond_9

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

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

    :goto_9d
    move-wide v5, v7

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const/16 v2, 0x13

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

    :goto_a0
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto/32 :goto_159

    nop

    nop

    :goto_a1
    return-void

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_a2
    invoke-static {v3, v2, v4}, Loxs;->a(Loxp;Lpci;Ljava/lang/String;)V

    goto/32 :goto_79

    nop

    nop

    :goto_a3
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto/32 :goto_105

    nop

    nop

    :goto_a4
    iget-object v5, v1, Llmd;->o:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v0, v1}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a8
    const/4 v9, 0x1

    nop

    nop

    nop

    packed-switch v1, :pswitch_data_0

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_a9
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    sget-object v1, Lldr;->a:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_ab
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    :goto_ac
    check-cast v1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    :goto_ad
    iget-object v0, v0, Llmd;->d:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-direct {v1, v0, v2}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_b0
    check-cast v0, Loxv;

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_b2
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    throw v0

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_b5
    return-void

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_99

    nop

    nop

    :goto_b7
    invoke-static {v1}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_132

    nop

    nop

    nop

    :goto_b8
    iput v2, v3, Lskd;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    :goto_b9
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v0, v0, Llkt;->a:Lkba;

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_bb
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_128

    nop

    nop

    nop

    :goto_bc
    invoke-static {}, Llva;->g()Lsui;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_be
    invoke-direct {v4, v0, v2}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    if-nez v5, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :goto_c0
    iget-object v3, v1, Llmd;->j:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_c1
    return-void

    nop

    :pswitch_a
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_c2
    invoke-interface {v1, v2, v3}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_116

    nop

    nop

    nop

    :goto_c3
    new-array v2, v2, [F

    nop

    nop

    nop

    fill-array-data v2, :array_1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v0, v1}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-static {v3, v2, v4}, Loxs;->a(Loxp;Lpci;Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    :goto_c6
    iget v4, v3, Lskj;->b:I

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_c8
    check-cast v0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_c9
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_ca
    iget-object v2, v0, Llgt;->a:Lows;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_cb
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_cd
    return-void

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    check-cast v1, Llkr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    check-cast v3, Lskd;

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    :goto_d0
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_d1
    return-void

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_d2
    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    :goto_d3
    invoke-virtual {v3}, Lnnt;->a()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_d6
    return-void

    nop

    :goto_d7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d8
    if-eqz v3, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    :cond_b
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_d9
    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception v0

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

    :goto_da
    return-void

    nop

    :pswitch_d
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_dc
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    iget-object v5, v1, Llmd;->s:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-interface {v2, v3}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    invoke-virtual {v0, v2, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto/32 :goto_12f

    nop

    nop

    :goto_e0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_4
    move-object v2, v0

    nop

    nop

    nop

    check-cast v2, Llkr;

    nop

    nop

    nop

    iget-boolean v2, v2, Llkr;->f:Z

    nop

    if-nez v2, :cond_11

    nop

    move-object v2, v0

    nop

    check-cast v2, Llkr;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Llkr;->d:Ltxm;

    nop

    nop

    nop

    nop

    check-cast v2, Ljye;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljye;->b()Lrss;

    move-result-object v2

    nop

    nop

    nop

    move-object v3, v0

    nop

    nop

    check-cast v3, Llkr;

    nop

    nop

    nop

    iget-object v3, v3, Llkr;->b:Landroid/content/Context;

    nop

    nop

    nop

    const-string v4, "facedetector-front.tflite.enc"

    nop

    nop

    nop

    nop

    const-string v5, "F25FB5752634BA2183D9A16FA878F60A"

    nop

    nop

    nop

    nop

    nop

    move-object v6, v0

    nop

    nop

    nop

    check-cast v6, Llkr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v3, v4, v5}, Llkr;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v17

    nop

    nop

    nop

    nop

    nop

    move-object v3, v0

    nop

    check-cast v3, Llkr;

    nop

    iget-object v3, v3, Llkr;->b:Landroid/content/Context;

    nop

    const-string v4, "face_model_468.xnft.enc"

    nop

    nop

    nop

    const-string v5, "DB22B14BAADB4BEB2FF3FE1205232CB2"

    nop

    nop

    nop

    nop

    move-object v6, v0

    nop

    check-cast v6, Llkr;

    nop

    invoke-virtual {v6, v3, v4, v5}, Llkr;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v16

    nop

    nop

    nop

    move-object v3, v0

    nop

    nop

    nop

    check-cast v3, Llkr;

    nop

    nop

    iget-object v3, v3, Llkr;->h:Lhoh;

    nop

    nop

    nop

    sget-object v4, Lhni;->s:Lhmn;

    nop

    nop

    invoke-virtual {v3, v4}, Lhoh;->p(Lhmn;)Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    move-object v3, v0

    nop

    check-cast v3, Llkr;

    nop

    nop

    iget-object v3, v3, Llkr;->h:Lhoh;

    nop

    nop

    sget-object v4, Lhni;->t:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lhoh;->p(Lhmn;)Z

    move-result v14

    nop

    move-object v3, v0

    nop

    check-cast v3, Llkr;

    nop

    nop

    nop

    iget-object v3, v3, Llkr;->h:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lhni;->u:Lhmn;

    nop

    nop

    invoke-virtual {v3, v4}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v14, :cond_e

    nop

    nop

    nop

    invoke-static {v3}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_c

    nop

    nop

    sget-object v0, Llkr;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/16 v2, 0xefe

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v2, "Darwinn offline compilation was enabled, but product class was not configured. Portrait Relighting cannot be initialized."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    goto/16 :goto_e3

    nop

    :cond_c
    if-eqz v13, :cond_d

    nop

    sget-object v0, Llkr;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v2, 0xefd

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v2, "Darwinn offline compilation was enabled, but it cannot be combined with XenoJetCL inference (invalid configuration). Portrait Relighting cannot be initialized."

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    goto/16 :goto_e3

    nop

    :cond_d
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Llkr;

    nop

    iget-object v4, v4, Llkr;->b:Landroid/content/Context;

    nop

    nop

    const-string v5, "face_light_256_256"

    nop

    nop

    nop

    move-object v6, v0

    nop

    nop

    nop

    nop

    check-cast v6, Llkr;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v4, v5, v3}, Llkr;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    move-object v5, v0

    nop

    nop

    nop

    nop

    check-cast v5, Llkr;

    nop

    nop

    nop

    iget-object v5, v5, Llkr;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "facemesh-full"

    nop

    nop

    nop

    nop

    nop

    move-object v7, v0

    nop

    nop

    check-cast v7, Llkr;

    nop

    nop

    nop

    invoke-virtual {v7, v5, v6, v3}, Llkr;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    nop

    move-object v6, v0

    nop

    check-cast v6, Llkr;

    nop

    nop

    nop

    iget-object v6, v6, Llkr;->b:Landroid/content/Context;

    nop

    nop

    const-string v7, "ffv6_holo040820_normals_net_mixed_fp16_256_256"

    nop

    move-object v8, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Llkr;

    nop

    nop

    invoke-virtual {v8, v6, v7, v3}, Llkr;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    nop

    nop

    move-object v7, v0

    nop

    nop

    nop

    nop

    check-cast v7, Llkr;

    nop

    nop

    iget-object v7, v7, Llkr;->b:Landroid/content/Context;

    nop

    nop

    const-string v8, "ffv6_holo040820_relighting_net_mixed_fp16_256_256"

    nop

    move-object v10, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v10, Llkr;

    nop

    invoke-virtual {v10, v7, v8, v3}, Llkr;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    nop

    move-object/from16 v20, v3

    nop

    move-object v15, v4

    nop

    move-object/from16 v18, v5

    nop

    nop

    nop

    nop

    move-object/from16 v19, v6

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_e1

    nop

    nop

    :cond_e
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Llkr;

    nop

    nop

    iget-object v3, v3, Llkr;->b:Landroid/content/Context;

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    sget-object v4, Lcom/google/android/apps/camera/keepalive/Rkn/deLMIrA;->RsDYG:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v5, "5BE6E9624DF061E5416D4D1D6215D6E6"

    nop

    nop

    nop

    nop

    nop

    move-object v6, v0

    nop

    nop

    check-cast v6, Llkr;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v3, v4, v5}, Llkr;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    nop

    nop

    move-object v4, v0

    nop

    check-cast v4, Llkr;

    nop

    nop

    iget-object v4, v4, Llkr;->b:Landroid/content/Context;

    nop

    const-string v5, "facemesh-full.tflite.enc"

    nop

    nop

    const-string v6, "606B34134C93CF8298025B58B6846736"

    nop

    nop

    nop

    nop

    nop

    move-object v7, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Llkr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v4, v5, v6}, Llkr;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    nop

    nop

    nop

    nop

    move-object v5, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Llkr;

    nop

    nop

    nop

    iget-object v5, v5, Llkr;->b:Landroid/content/Context;

    nop

    const-string v6, "ffv6_holo040820_normals_net_mixed_fp16_256_256.tflite.enc"

    nop

    const-string v7, "8EE4D0F472BB7FF0B259F3841B1EE273"

    nop

    nop

    nop

    nop

    nop

    move-object v8, v0

    nop

    check-cast v8, Llkr;

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v5, v6, v7}, Llkr;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    nop

    move-object v6, v0

    nop

    nop

    check-cast v6, Llkr;

    nop

    nop

    nop

    nop

    iget-object v6, v6, Llkr;->b:Landroid/content/Context;

    nop

    nop

    const-string v7, "ffv6_holo040820_relighting_net_mixed_fp16_256_256.tflite.enc"

    nop

    nop

    const-string v8, "E6BE4D7010D31926961DE0E45705C754"

    nop

    move-object v10, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v10, Llkr;

    nop

    nop

    invoke-virtual {v10, v6, v7, v8}, Llkr;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    nop

    nop

    nop

    nop

    move-object v15, v3

    nop

    nop

    nop

    nop

    move-object/from16 v18, v4

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v19, v5

    nop

    move-object/from16 v20, v6

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    move-object v3, v0

    nop

    nop

    nop

    check-cast v3, Llkr;

    nop

    nop

    nop

    iget-object v10, v3, Llkr;->e:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_f

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/io/File;

    nop

    nop

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto :goto_e2

    nop

    nop

    :cond_f
    const-string v2, ""

    nop

    nop

    nop

    :goto_e2
    move-object v11, v2

    nop

    nop

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    check-cast v2, Llkr;

    nop

    nop

    nop

    nop

    iget-boolean v12, v2, Llkr;->c:Z

    nop

    nop

    nop

    nop

    invoke-virtual/range {v10 .. v20}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;->initPortraitRelightingProcessor(Ljava/lang/String;ZZZ[B[B[B[B[B[B)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_10

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Llkr;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/16 v2, 0xefc

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const-string v2, "Unable to initialize Firefly Processor."

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    goto :goto_e3

    nop

    :cond_10
    check-cast v0, Llkr;

    nop

    nop

    nop

    nop

    nop

    iput-boolean v9, v0, Llkr;->f:Z

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_11
    :goto_e3
    goto/32 :goto_86

    nop

    nop

    :goto_e4
    iput-object v0, v1, Llmd;->m:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    :goto_e5
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    :goto_e7
    new-instance v4, Lldq;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    check-cast v0, Llkt;

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-static {v1, v2, v0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    return-void

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    iget-object v1, v1, Lnnt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    iget-object v1, v0, Llmd;->f:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    check-cast v0, Llkv;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_ee
    iget-object v3, v3, Lluy;->l:Lnnt;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    iget-object v0, v0, Llmd;->n:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    const/16 v2, 0xf28

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_f1
    iget-object v1, v3, Lluy;->e:Llva;

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-interface {v0, v1}, Lkba;->b(Lnne;)V

    goto/32 :goto_134

    nop

    nop

    :goto_f3
    invoke-virtual {v0, v3, v4}, Llkw;->c(J)V

    goto/32 :goto_b5

    nop

    nop

    :goto_f4
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_f5
    or-int/2addr v4, v9

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

    nop

    nop

    :goto_f6
    invoke-virtual {v7, v5}, Lixe;->a(Lixf;)Lpci;

    :goto_f7
    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_f9
    sget-object v1, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->a:Lsdb;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    if-gtz v4, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_12
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_fc
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    move-object v1, v0

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_fe
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    iget v2, v3, Lskd;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    :goto_100
    goto/16 :goto_b3

    nop

    nop

    nop

    nop

    :goto_101
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_102
    if-eqz v1, :cond_13

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_13
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-direct {v2, v3}, Ljic;-><init>(I)V

    goto/32 :goto_69

    nop

    nop

    :goto_104
    check-cast v0, Llmd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-static {}, Llmd;->g()V

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_106
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_8d

    nop

    nop

    :goto_107
    iget-object v5, v1, Llmd;->o:Landroid/view/View;

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_108
    if-lez v0, :cond_14

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

    :cond_14
    goto/32 :goto_11f

    nop

    :goto_109
    invoke-virtual {v0, v1}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_10a
    invoke-direct {v1, v0, v2}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_10b
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_112

    nop

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

    :goto_10d
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_10e
    check-cast v1, Llmd;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_10f
    move-object v1, v0

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_110
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    iget-object v2, v0, Llmd;->g:Landroid/hardware/SensorEventListener;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_112
    iget-object v1, v1, Llkr;->g:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    :goto_113
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_115
    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_116
    new-instance v2, Lhos;

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

    :goto_117
    return-void

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    :try_start_5
    monitor-exit v2

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    throw v0

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    monitor-exit v1

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_118
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_119
    if-gtz v2, :cond_15

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

    :cond_15
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    sget-object v2, Lskc;->q:Lskc;

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

    :goto_11b
    const/16 v2, 0xf

    nop

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

    nop

    :goto_11c
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    :goto_11d
    invoke-direct {v5, v0, v6}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    const/16 v6, 0x12

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    goto/32 :goto_5

    nop

    :goto_120
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    sget-object v1, Lnne;->g:Lnne;

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_122
    return-void

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_123
    invoke-static {v1}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_124
    if-ge v3, v4, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_125
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_6

    nop

    nop

    :goto_126
    const/4 v3, 0x4

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_127
    iget-object v3, v1, Llmd;->j:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_128
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    const/16 v4, 0x1e

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_12b
    invoke-virtual {v0, v1}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    iget-object v0, v0, Llgt;->c:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_12e
    const-wide/16 v5, 0x1388

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    return-void

    nop

    :pswitch_f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_130
    iget v2, v2, Lskc;->aG:I

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_131
    iget-object v2, v1, Llkr;->g:Ljava/util/concurrent/locks/ReentrantLock;

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

    :goto_132
    iget v4, v1, Lnnt;->a:I

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_133
    iget-object v1, v1, Llkq;->g:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    :goto_134
    return-void

    nop

    nop

    :pswitch_10
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_135
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    :goto_136
    iget-object v1, v3, Lluy;->l:Lnnt;

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_137
    return-void

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_138
    check-cast v1, Llkr;

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_139
    monitor-enter v1

    nop

    nop

    :try_start_7
    move-object v2, v0

    nop

    nop

    nop

    nop

    check-cast v2, Llkq;

    nop

    iget-boolean v2, v2, Llkq;->k:Z

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_17

    nop

    nop

    sget-object v0, Llkq;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v2, 0xef7

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "init() called on an already initialized PortraitController."

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :cond_17
    move-object v2, v0

    nop

    nop

    check-cast v2, Llkq;

    nop

    nop

    iget-object v2, v2, Llkq;->f:Ljava/lang/Object;

    nop

    nop

    monitor-enter v2

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    move-object v3, v0

    nop

    nop

    nop

    nop

    check-cast v3, Llkq;

    nop

    nop

    nop

    iget-object v3, v3, Llkq;->o:Llks;

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_1a

    nop

    move-object v4, v0

    nop

    nop

    nop

    check-cast v4, Llkq;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Llkq;->l:Llld;

    nop

    nop

    if-eqz v4, :cond_1a

    nop

    nop

    invoke-virtual {v3}, Llks;->a()J

    move-result-wide v3

    nop

    const-wide/16 v5, 0x0

    nop

    nop

    nop

    cmp-long v3, v3, v5

    nop

    nop

    nop

    if-nez v3, :cond_18

    nop

    sget-object v3, Llkq;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    const/16 v4, 0xef6

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    const-string v4, "Expected portrait segmenter to be initialized, but it wasn\'t. Initializing again."

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V

    move-object v3, v0

    nop

    nop

    check-cast v3, Llkq;

    nop

    nop

    iget-object v3, v3, Llkq;->o:Llks;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Llks;->b()V

    :cond_18
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Llkq;

    nop

    nop

    iget-object v3, v3, Llkq;->l:Llld;

    nop

    nop

    nop

    invoke-interface {v3}, Llld;->a()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    cmp-long v3, v3, v5

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_19

    nop

    nop

    nop

    move-object v3, v0

    nop

    nop

    nop

    check-cast v3, Llkq;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Llkq;->p:Lhoh;

    nop

    sget-object v4, Lhni;->D:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_19

    nop

    nop

    nop

    sget-object v3, Llkq;->a:Lsdb;

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    const/16 v4, 0xef5

    nop

    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    const-string v4, "Expected portrait relighting processor to be initialized, but it wasn\'t. Initializing again."

    nop

    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V

    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Llkq;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Llkq;->l:Llld;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Llld;->d()V

    :cond_19
    check-cast v0, Llkq;

    nop

    nop

    nop

    nop

    nop

    iput-boolean v9, v0, Llkq;->k:Z

    nop

    :cond_1a
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    monitor-exit v1

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_13a
    if-ne v1, v7, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_67

    nop

    nop

    :goto_13b
    new-instance v1, Lldq;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_13c
    iget v1, v0, Lldq;->b:I

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_13d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_13e
    check-cast v3, Lskj;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    iget-object v2, v1, Llkr;->g:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_140
    iget-object v3, v1, Llmd;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_141
    new-instance v1, Lldq;

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_142
    iput-object v2, v3, Lskd;->s:Lskj;

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_143
    iget-object v3, v1, Llmd;->j:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_144
    iget-object v5, v1, Llmd;->k:Lneh;

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_145
    iget-object v0, v0, Lldq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_146
    iget v3, v0, Llmd;->t:I

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_147
    throw v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_b1

    nop

    nop

    :goto_148
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    iget-object v1, v0, Llkw;->d:Ljava/lang/Boolean;

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

    :goto_14a
    const-string v2, "Prewarm timed out! This should not happen."

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_14b
    goto/16 :goto_17

    nop

    nop

    nop

    :goto_14c
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_14d
    invoke-virtual {v0}, Lgjp;->a()V

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    return-void

    nop

    :pswitch_13
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    iget-object v5, v1, Llmd;->o:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_150
    const v0, 0x4

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

    :goto_151
    new-array v2, v2, [F

    nop

    nop

    fill-array-data v2, :array_0

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_152
    iput-object v2, v1, Llmd;->l:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_153
    new-instance v5, Lldq;

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_154
    check-cast v0, Llmd;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_155
    const/high16 v4, 0x20000

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_156
    iget-object v2, v0, Llmd;->g:Landroid/hardware/SensorEventListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_157
    goto/32 :goto_120

    nop

    nop

    :goto_158
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_159
    iget-object v3, v1, Llmd;->j:Landroid/widget/FrameLayout;

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

    :goto_15a
    check-cast v1, Landroid/view/Window;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_15b
    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15c
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    const-string v4, "Critical Path OneCameraLifetime"

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    new-instance v2, Ljic;

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_15f
    const/4 v5, 0x3

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

    nop

    :goto_160
    invoke-virtual {v0, v1}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_137

    nop

    nop

    nop

    :goto_161
    iget-object v2, v0, Llmd;->j:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_162
    iget-object v7, v1, Llmd;->y:Lixe;

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_163
    iget-object v1, v0, Llmd;->f:Landroid/hardware/Sensor;

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    :goto_164
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop
.end method
