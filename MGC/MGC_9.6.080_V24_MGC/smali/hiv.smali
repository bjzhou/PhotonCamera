.class public final synthetic Lhiv;
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
    iput p2, p0, Lhiv;->b:I

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

    :goto_1
    iput-object p1, p0, Lhiv;->a:Ljava/lang/Object;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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
.method public final run()V
    .locals 15

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhjd;->a:Lrss;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1
    check-cast v5, Lhii;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-virtual {v5}, Lhjl;->c()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_104

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v5

    nop

    goto/32 :goto_192

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_6
    check-cast v6, Lhpf;

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

    nop

    :goto_7
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_71

    nop

    nop

    :cond_0
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v5}, Lhii;->e()V

    goto/32 :goto_1e3

    nop

    nop

    :goto_c
    iget-object v5, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_d
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lhpj;->f()Lggk;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_f
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_11
    check-cast v2, Lggk;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v5, v6}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :goto_13
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v5, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lhot;->g:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :pswitch_1
    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_12
        :pswitch_d
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_e
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_a
        :pswitch_11
        :pswitch_10
        :pswitch_13
        :pswitch_8
        :pswitch_5
        :pswitch_b
        :pswitch_9
        :pswitch_c
    .end packed-switch

    :goto_19
    goto/32 :goto_174

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Lnpk;-><init>()V

    goto/32 :goto_d8

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lhot;->i:Lhpj;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput v1, v2, Lskd;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0}, Lggk;->b()Lggl;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-boolean v2, v0, Lhot;->h:Z

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_22
    check-cast v5, Lskd;

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_23
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_24
    iget-object v5, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_1d4

    nop

    nop

    :goto_25
    const-string v5, "CameraFilmstripDataAdapter#queryFilmStrip#querySince"

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

    :goto_26
    iget-object v1, p0, Lhja;->e:Landroid/view/View$OnClickListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_1b1

    nop

    nop

    :goto_28
    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    :pswitch_2
    goto/32 :goto_8d

    nop

    nop

    :goto_2b
    iget-object v2, v0, Lhot;->g:Lpdf;

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    :goto_2d
    check-cast p0, Lscz;

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_2e
    const v3, 0x7f0b03f2

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v5, Lixe;

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v0, Lrsx;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_31
    aget v5, v5, v6

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    :goto_34
    float-to-double v0, v0

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, v0, Lrsx;->a:Ljava/lang/Object;

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

    :goto_36
    invoke-virtual {v0}, Lhpj;->a()I

    move-result v0

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v3, :cond_2

    nop

    goto/32 :goto_6a

    nop

    nop

    :cond_2
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast p0, Lhiw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    :pswitch_3
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v5}, Lnpk;->b([F)V

    goto/32 :goto_10d

    nop

    nop

    :goto_3b
    if-nez v0, :cond_3

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-eqz v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iput-boolean v4, p0, Lhjd;->e:Z

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    :goto_3e
    invoke-static {v0, v1}, Lhjd;->k(FF)Z

    move-result v0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3f
    iget-object v5, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f2

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v0, v2, v3}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_a0

    nop

    nop

    :goto_43
    goto/16 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    :goto_45
    check-cast p0, Lhja;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, v1}, Lj$/time/Instant;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Instant;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_47
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    :goto_48
    check-cast v2, Lggk;

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v0, Lhkm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_7f

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast p0, Lhox;

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v0, v3, v4, v1}, Ldvw;->z(Left;ZZLubk;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_4f
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1eb

    nop

    nop

    :goto_50
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v5, :cond_6

    nop

    goto/32 :goto_169

    nop

    :cond_6
    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-eqz v5, :cond_7

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {v1, v5, v6, v3}, Lhrg;-><init>(JI)V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_54
    iget-object v0, p0, Lhrd;->e:Lj$/time/Clock;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_55
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_27

    nop

    nop

    :goto_56
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v4, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    :goto_58
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_169

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_168

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    aget v0, v5, v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v0, p0, Lhot;->g:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    float-to-double v1, v1

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_169

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    check-cast p0, Lmse;

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_63
    check-cast v5, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_64
    return-void

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_15e

    nop

    nop

    nop

    :goto_65
    check-cast v0, Lhze;

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    monitor-enter v2

    nop

    :try_start_0
    iget-object v0, v0, Lfwv;->g:Lgig;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lgig;->a()Z

    move-result v0

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_67
    neg-float v1, v1

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-interface {v3}, Lggk;->b()Lggl;

    move-result-object v2

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    :goto_6d
    const-string v2, "deleted "

    nop

    nop

    nop

    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    sget-object v3, Lsjl;->a:Lsjl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    :goto_6f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    :goto_70
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_71
    goto/32 :goto_1c9

    nop

    nop

    :goto_72
    invoke-virtual {v1, v0}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_183

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_75
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_196

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_77
    iget-object v1, v0, Lhot;->g:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_78
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v0}, Lhjb;->c()V

    goto/32 :goto_181

    nop

    nop

    nop

    :goto_7a
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v0, v0, Lhkm;->a:Ljph;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    :goto_7d
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    sget-object v2, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    return-void

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_ae

    nop

    nop

    :goto_81
    invoke-static {v1, v0}, Lnzk;->K([FLnpk;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v1, p0, Lhrd;->d:Lpcu;

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

    nop

    :goto_83
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_84
    sget-object p0, Lhot;->a:Lsdb;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_85
    iget-object v6, p0, Lhot;->e:Lhpl;

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v4, p0, Lhot;->i:Lhpj;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    check-cast p0, Lhjb;

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_88
    if-eqz v5, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v5, p0, Lhjd;->c:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_8b
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_f1

    nop

    nop

    :goto_8c
    if-lt v5, v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1f4

    nop

    nop

    nop

    :goto_8d
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {p0}, Lhsg;->a()V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget v3, v3, Lskc;->aG:I

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    :goto_90
    check-cast v2, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_91
    iget-object p0, v0, Lhot;->g:Lpdf;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_12b

    nop

    nop

    nop

    :goto_93
    new-instance v1, Lhrg;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_85

    nop

    nop

    :goto_95
    check-cast p0, Lhjd;

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_96
    or-int/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_97
    const v0, 0x7f1405f9

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    :goto_98
    iget-object v3, v0, Lhot;->g:Lpdf;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_99
    check-cast p0, Lhjd;

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

    :goto_9a
    iget-boolean v5, p0, Lhjd;->e:Z

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    return-void

    nop

    nop

    :pswitch_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9c
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    :goto_9d
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    :goto_9e
    iget-boolean v5, p0, Lhjd;->h:Z

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_9f
    add-int v0, v0, v1

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

    nop

    :goto_a0
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

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

    nop

    :goto_a1
    new-instance v0, Lnpk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a2
    sget-object v1, Lhrd;->c:Lj$/time/Duration;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-interface {v2}, Lggk;->b()Lggl;

    move-result-object v2

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    return-void

    nop

    nop

    :goto_a5
    goto/32 :goto_15

    nop

    nop

    :goto_a6
    if-nez v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1d1

    nop

    nop

    nop

    :goto_a7
    iget-object v0, p0, Lhjd;->j:Lhjh;

    nop

    goto/32 :goto_130

    nop

    nop

    :goto_a8
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    :goto_a9
    check-cast v2, Lskd;

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v5, v5, Lhjf;->f:Lrss;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_ac
    iget-boolean v5, p0, Lhjd;->e:Z

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_ad
    if-nez v6, :cond_c

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_af
    goto/16 :goto_1d6

    nop

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_149

    nop

    nop

    :goto_b1
    invoke-virtual {p0}, Lhjd;->b()V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    throw p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    sget-object v6, Lrsa;->a:Lrsa;

    nop

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

    :goto_b5
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

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

    :goto_b6
    new-instance v5, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_b7
    iget-object v0, p0, Lhot;->j:Lhpj;

    nop

    nop

    nop

    goto/32 :goto_1d5

    nop

    nop

    nop

    nop

    :goto_b8
    iget-object v5, p0, Lhjd;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    :goto_ba
    goto/32 :goto_1c7

    nop

    nop

    :goto_bb
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-direct {v6, v5, v0, v1, v7}, Lhil;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;FFI)V

    goto/32 :goto_12

    nop

    nop

    :goto_bd
    if-eqz v7, :cond_d

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_1d2

    nop

    nop

    :goto_be
    iget-object v3, v0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v0}, Lhjf;->b()V

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_c0
    if-nez v6, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_186

    nop

    nop

    nop

    nop

    :goto_c1
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

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

    :goto_c2
    invoke-interface {p0}, Ltud;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    :goto_c4
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_c6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    if-nez v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    :cond_f
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_c8
    neg-float v0, v0

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    if-nez v5, :cond_10

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v0}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    if-gtz v0, :cond_11

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    const/16 v0, 0x435

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_ce
    check-cast v5, Landroid/widget/Button;

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_cf
    iget-object v0, v0, Lhot;->g:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_d0
    invoke-interface {v2}, Lggl;->c()Landroid/net/Uri;

    move-result-object v4

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_d1
    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object v0, v0, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_d5
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-interface {v2}, Lggl;->h()Lj$/time/Instant;

    move-result-object v2

    nop

    nop

    nop

    :goto_d7
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object v1, v1, Ljzb;->a:[F

    nop

    goto/32 :goto_1ba

    nop

    nop

    :goto_d9
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    :goto_da
    cmpl-float v5, v5, v6

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

    :goto_db
    invoke-interface {v3}, Lggk;->b()Lggl;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_dc
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    iput-boolean v4, p0, Lhjd;->g:Z

    nop

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

    :goto_de
    or-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    :goto_df
    check-cast v5, Lhjl;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e0
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_e1
    iput-boolean v0, p0, Lhjd;->f:Z

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    add-int/lit8 v5, v5, 0x1

    nop

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

    :goto_e3
    check-cast p0, Lhsc;

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    return-void

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {v7, v6}, Lhpj;->j(Landroid/net/Uri;)Z

    :goto_e6
    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_e7
    iget-boolean v0, p0, Lhja;->c:Z

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

    :goto_e8
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-interface {v4}, Lggl;->g()Lj$/time/Instant;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_eb
    new-instance v2, Landroid/util/Pair;

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    return-void

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    if-nez v0, :cond_12

    nop

    goto/32 :goto_12d

    nop

    :cond_12
    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v0, v1}, Lhpb;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    :goto_ef
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_f0
    iget-object v0, p0, Lhja;->b:Lhjb;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_f1
    iget-object p0, v0, Lhot;->g:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    iget-object v0, p0, Lhjd;->b:Lhjf;

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

    nop

    :goto_f4
    double-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {p0}, Lhrd;->m()V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_f6
    iget-object v1, p0, Lhot;->g:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    :goto_f7
    invoke-direct {v1, v0}, Ljzb;-><init>([F)V

    goto/32 :goto_a1

    nop

    nop

    :goto_f8
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f9
    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    if-nez v3, :cond_13

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :cond_13
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_fb
    invoke-virtual {p0}, Lhiw;->f()V

    goto/32 :goto_18

    nop

    nop

    :goto_fc
    invoke-interface {v0}, Lggk;->b()Lggl;

    move-result-object v2

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

    :goto_fd
    check-cast p0, Lhrd;

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    :goto_fe
    invoke-interface {v2}, Lggk;->b()Lggl;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    :goto_ff
    check-cast v5, Lhii;

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    :goto_100
    or-int/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_101
    invoke-virtual {p0}, Lhjb;->a()V

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-virtual {v0}, Lhot;->o()Lhpj;

    move-result-object v3

    nop

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

    :goto_104
    return-void

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_133

    nop

    nop

    nop

    :goto_105
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_106
    invoke-interface {v2}, Lggl;->k()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    :goto_107
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    :goto_108
    iget-boolean v0, p0, Lhjd;->g:Z

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    aget v1, v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_10b
    invoke-interface {v0}, Lpdf;->g()V

    :goto_10c
    goto/32 :goto_1c

    nop

    nop

    :goto_10d
    const/4 v0, 0x5

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

    nop

    :goto_10e
    move-object v4, v2

    nop

    :goto_10f
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    iput v2, v5, Lsjl;->b:I

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_111
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_1be

    nop

    nop

    :goto_112
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_113
    invoke-interface {p0, v0}, Lstu;->b(Ljava/lang/Object;)V

    goto/32 :goto_161

    nop

    nop

    nop

    :goto_114
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    :goto_115
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    goto/32 :goto_1de

    nop

    nop

    nop

    :goto_116
    const/4 v7, 0x2

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

    :goto_117
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    :try_start_1
    monitor-exit v2

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_118
    if-eqz v0, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_119
    iget-object v5, v5, Lhii;->d:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    :goto_11a
    iget-object v0, p0, Lhot;->i:Lhpj;

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

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

    :goto_11c
    const-string v3, "CameraFilmstripDataAdapter#queryFilmStrip"

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_11d
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-virtual {v5, v6}, Lixe;->g(Lixg;)V

    goto/32 :goto_3d

    nop

    nop

    :goto_11f
    invoke-virtual {p0}, Lhsc;->c()V

    goto/32 :goto_e4

    nop

    nop

    :goto_120
    invoke-interface {v2}, Lggl;->g()Lj$/time/Instant;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_121
    check-cast p0, Lhjd;

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    :goto_122
    iget v3, v5, Lskd;->b:I

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_123
    invoke-virtual {v5, v6}, Lhjh;->e(Lrss;)V

    goto/32 :goto_1e5

    nop

    nop

    nop

    nop

    :goto_124
    const/4 v6, 0x0

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    invoke-interface {v0, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_126
    const-string v0, "Activity is destroyed. Canceling load."

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_127
    new-instance v6, Lhil;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_128
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    :goto_129
    invoke-interface {v2}, Lggl;->c()Landroid/net/Uri;

    move-result-object v2

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_12b
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    :try_start_2
    check-cast p0, Lhou;

    nop

    iget-object p0, p0, Lhou;->b:Llwk;

    nop

    nop

    invoke-virtual {p0, v3}, Llwk;->b(Z)V

    iget-object v0, p0, Llwk;->c:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lhmq;->bs:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_15

    nop

    nop

    invoke-virtual {p0, v4}, Llwk;->b(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_15
    goto/32 :goto_1c0

    nop

    nop

    nop

    :goto_12c
    invoke-virtual {p0, v2, v0, v4}, Lmse;->m(IILandroid/view/View;)V

    :goto_12d
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_12e
    iget-object p0, p0, Lhja;->d:Landroid/view/View$OnClickListener;

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-virtual {v3}, Lhpj;->b()Lggk;

    move-result-object v3

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_130
    invoke-virtual {v0}, Lhjh;->d()V

    goto/32 :goto_dd

    nop

    nop

    :goto_131
    check-cast v0, Lrsx;

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_132
    const-string v1, "Failed to restore JPEG files"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_133
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_134
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    :goto_135
    goto/16 :goto_165

    nop

    :cond_16
    :goto_136
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_137
    iget-object v0, p0, Lhja;->f:Lrss;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_138
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_139
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    if-gtz v5, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_13c
    iget-object p0, p0, Lhot;->c:Lstu;

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_13e
    iget-object v0, p0, Lhot;->g:Lpdf;

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_13f
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_140
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_141
    iget-object v1, p0, Lhrd;->g:Lhrf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_142
    if-nez v2, :cond_18

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_d4

    nop

    nop

    :goto_143
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_144
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_145
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_146
    iget-object v0, p0, Lhjd;->a:Lrss;

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_147
    return-void

    nop

    nop

    :pswitch_f
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_148
    iget-object v5, p0, Lhjd;->d:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    iget-object v0, p0, Lhot;->m:Lhpb;

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_14a
    check-cast p0, Lhqq;

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    if-lez v0, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_f8

    nop

    :goto_14c
    new-instance v1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_14d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14b

    nop

    nop

    :goto_14e
    sget-object v3, Lskc;->B:Lskc;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    invoke-interface {v1, v0}, Lpcu;->b(Ljava/lang/String;)V

    :goto_150
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_151
    sget-object v0, Lhou;->a:Lsdb;

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    :goto_152
    check-cast v3, Lsjl;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e4

    nop

    nop

    nop

    nop

    :goto_153
    invoke-static {v3, v5, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_154
    invoke-virtual {v5, v0, v1, v6, v7}, Lhjf;->a(FFJ)V

    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    :goto_155
    const v0, 0x20

    nop

    goto/32 :goto_184

    nop

    nop

    :goto_156
    check-cast p0, Lhjb;

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :goto_157
    invoke-virtual {v6, v2, v0, v4}, Lhpf;->e(Lj$/time/Instant;Lj$/time/Instant;Z)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_158
    if-eqz v5, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_159
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    const-string v2, "CameraFilmstripDataAdapter#removeDeletedItems"

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_15c
    check-cast p0, Lhsg;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_15d
    if-nez v5, :cond_1b

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    :goto_15f
    check-cast v0, Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    :goto_160
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    :goto_161
    return-void

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_16e

    nop

    nop

    :goto_162
    iget-boolean v6, v5, Lhii;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_163
    invoke-interface {v3, v5}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_3
    new-instance v3, Lrxw;

    nop

    nop

    invoke-direct {v3}, Lrxw;-><init>()V

    move-object v5, p0

    nop

    check-cast v5, Lhot;

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lhot;->e:Lhpl;

    nop

    nop

    iget-object v6, v5, Lhpl;->f:Lhpf;

    nop

    nop

    nop

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    sget-object v8, Lhpf;->c:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v9

    nop

    nop

    invoke-virtual {v2}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v11

    nop

    new-instance v14, Lgct;

    nop

    invoke-direct {v14, v6, v1}, Lgct;-><init>(Ljava/lang/Object;I)V

    const/4 v13, 0x5

    nop

    nop

    nop

    nop

    invoke-virtual/range {v6 .. v14}, Lhpf;->d(Landroid/net/Uri;[Ljava/lang/String;JJILjava/util/function/Function;)Ljava/util/List;

    move-result-object v1

    nop

    nop

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    nop

    new-instance v6, Lgct;

    nop

    nop

    const/16 v7, 0x9

    nop

    nop

    nop

    invoke-direct {v6, v5, v7}, Lgct;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v6}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v5

    nop

    nop

    invoke-interface {v1, v5}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Lrxw;->j(Ljava/lang/Iterable;)V

    move-object v1, p0

    nop

    nop

    nop

    nop

    check-cast v1, Lhot;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lhot;->s:Llko;

    nop

    iget-object v5, v1, Llko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Lhpf;->c:[Ljava/lang/String;

    nop

    invoke-virtual {v4}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v11

    nop

    new-instance v14, Lgct;

    nop

    nop

    nop

    const/4 v2, 0x7

    nop

    nop

    nop

    nop

    invoke-direct {v14, v5, v2}, Lgct;-><init>(Ljava/lang/Object;I)V

    move-object v6, v5

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Lhpf;

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x5

    nop

    nop

    nop

    invoke-virtual/range {v6 .. v14}, Lhpf;->d(Landroid/net/Uri;[Ljava/lang/String;JJILjava/util/function/Function;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    nop

    nop

    new-instance v4, Lgct;

    nop

    const/16 v5, 0xa

    nop

    nop

    nop

    nop

    invoke-direct {v4, v1, v5}, Lgct;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v2

    nop

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Lrxw;->j(Ljava/lang/Iterable;)V

    invoke-virtual {v3}, Lrxw;->g()Lryb;

    move-result-object v1

    nop

    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Lsbh;

    nop

    nop

    nop

    iget v2, v2, Lsbh;->c:I

    nop

    move-object v2, p0

    nop

    nop

    nop

    check-cast v2, Lhot;

    nop

    nop

    nop

    iget-object v2, v2, Lhot;->g:Lpdf;

    nop

    nop

    nop

    const-string v3, "CameraFilmstripDataAdapter#queryFilmStrip#loadMetadata"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpdf;->h(Ljava/lang/String;)V

    invoke-virtual {v1}, Lryb;->t()Lscq;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_164
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_1c

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lggk;

    nop

    move-object v4, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lhot;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lhot;->r:Lgvg;

    nop

    nop

    move-object v5, p0

    nop

    nop

    nop

    check-cast v5, Lhot;

    nop

    nop

    nop

    iget-object v5, v5, Lhot;->d:Landroid/content/Context;

    nop

    nop

    nop

    invoke-virtual {v4, v5, v3}, Lgvg;->p(Landroid/content/Context;Lggk;)Z

    goto :goto_164

    nop

    nop

    :cond_1c
    move-object v2, p0

    nop

    nop

    nop

    check-cast v2, Lhot;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lhot;->i:Lhpj;

    nop

    invoke-virtual {v2}, Lhpj;->a()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_1d

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lhot;

    nop

    iget-object p0, p0, Lhot;->i:Lhpj;

    nop

    nop

    invoke-virtual {p0, v1}, Lhpj;->h(Ljava/util/Collection;)V

    goto/16 :goto_136

    nop

    nop

    nop

    nop

    :cond_1d
    invoke-virtual {v1}, Lryb;->t()Lscq;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_165
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_16

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lggk;

    nop

    move-object v3, p0

    nop

    check-cast v3, Lhot;

    nop

    nop

    iget-object v3, v3, Lhot;->i:Lhpj;

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Lhpj;->l(Lggk;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_135

    nop

    nop

    :goto_166
    if-nez v0, :cond_1e

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_167
    iget-object v0, p0, Lhja;->f:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_168
    iput-boolean v3, p0, Lhjd;->g:Z

    nop

    nop

    nop

    nop

    nop

    :goto_169
    goto/32 :goto_115

    nop

    nop

    nop

    :goto_16a
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_16c
    if-nez v2, :cond_1f

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    :goto_16d
    check-cast v6, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_16e
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    :goto_16f
    invoke-virtual {p0}, Lhjd;->b()V

    :goto_170
    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_171
    throw p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_18b

    nop

    nop

    nop

    :goto_172
    iget-object v0, p0, Lhot;->j:Lhpj;

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    :goto_173
    invoke-virtual {p0}, Lhjb;->b()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_174
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_175
    const/16 v2, 0x43e

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_176
    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_177
    invoke-virtual {v3}, Ltkg;->m()Ltkb;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_178
    const-string v5, "RemoveDeletedMarsItems"

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    :goto_179
    neg-double v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    invoke-virtual {v0}, Lhze;->g()Z

    move-result v0

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    new-instance v1, Ljzb;

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_17c
    iget-object v2, p0, Lhot;->g:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_1f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    iget v2, v5, Lsjl;->b:I

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_17e
    iput v3, v5, Lskd;->f:I

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    const v5, 0x7f0e0138

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    :goto_180
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_1ea

    nop

    nop

    nop

    :goto_181
    sget-object v0, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_182
    move v5, v3

    nop

    nop

    :goto_183
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_184
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_185
    const-string v1, "deleting old data from per-shot log"

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_186
    iget-object v6, v5, Lhii;->d:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_187
    iget-object p0, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_188
    invoke-virtual {p0}, Lhsc;->b()V

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_189
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    invoke-virtual {p0}, Lhqq;->a()V

    goto/32 :goto_92

    nop

    nop

    :goto_18b
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    :goto_18c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18d
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_159

    nop

    nop

    :goto_18e
    iget-object v5, p0, Lhjd;->j:Lhjh;

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_18f
    iget-object v5, p0, Lhjd;->b:Lhjf;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_190
    new-array v5, v5, [F

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_191
    if-nez v0, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_192
    check-cast v1, Lhrk;

    nop

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    :goto_193
    iget-object v6, p0, Lhot;->s:Llko;

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :goto_194
    iget v3, v2, Lskd;->c:I

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_195
    check-cast v0, Lhot;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_196
    return-void

    nop

    nop

    nop

    nop

    :goto_197
    goto/32 :goto_146

    nop

    nop

    nop

    :goto_198
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_199
    check-cast v0, Lhze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    :goto_19a
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19b
    iget-object v3, v0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    invoke-interface {v2, v5}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    const/4 v6, 0x6

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    iget-object v0, v0, Lhxs;->a:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    iput-object v3, v2, Lskd;->F:Lsjl;

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    :goto_1a1
    iget v0, p0, Lhiv;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    :goto_1a2
    iget-object v1, p0, Lhot;->q:Llyv;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_1a3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->a()Ljava/lang/Runnable;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_1a4
    invoke-virtual {v4, v2}, Lhpj;->j(Landroid/net/Uri;)Z

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    if-nez v5, :cond_21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_9e

    nop

    nop

    :goto_1a6
    invoke-interface {v0}, Lggl;->h()Lj$/time/Instant;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_1a7
    check-cast p0, Lhiw;

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_1a8
    double-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_1a9
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    :goto_1ab
    iget-object v6, v5, Lhjf;->f:Lrss;

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

    :goto_1ac
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    :goto_1ad
    iget-object v0, p0, Lhrd;->d:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    :goto_1ae
    iget-object v0, p0, Lhot;->g:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_1af
    iget-boolean v6, v5, Lhii;->c:Z

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    invoke-virtual {v0}, Lhpj;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_1b1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1b2
    invoke-virtual {v0, p0}, Ljph;->e(Ljpv;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b3
    invoke-direct {v4, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_1b4
    return-void

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_58

    nop

    nop

    :goto_1b5
    check-cast v3, Landroid/content/Context;

    nop

    goto/32 :goto_1b3

    nop

    nop

    :goto_1b6
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    iget-object v6, v6, Llko;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1b8
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1b9
    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_1ba
    const/16 v5, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    :goto_1bb
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_1bc
    sget-object v6, Lixg;->e:Lixg;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1bd
    iget-object p0, p0, Lhot;->g:Lpdf;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_1be
    iget-object v0, p0, Lhot;->o:Lfwv;

    nop

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    :goto_1bf
    invoke-virtual {p0}, Lhox;->a()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1c0
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    :goto_1c1
    iget-object v6, v6, Lhpl;->f:Lhpf;

    nop

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    nop

    :goto_1c2
    if-nez v6, :cond_22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_1c3
    sget-object v0, Llyr;->aG:Llze;

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    nop

    :goto_1c4
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    :goto_1c5
    iget-object v5, p0, Lhjd;->b:Lhjf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    :goto_1c6
    iget-object v2, v0, Lfwv;->a:Ljava/lang/Object;

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

    nop

    nop

    :goto_1c7
    if-lt v3, v0, :cond_23

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_23
    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_1c8
    if-nez v6, :cond_24

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_24
    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    :goto_1c9
    iget-object p0, p0, Lhja;->h:Lmjv;

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    :goto_1ca
    const-string v1, "CameraFilmstripDataAdapter#removeMarsDeletedItems"

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_1cb
    invoke-interface {v2}, Lggl;->c()Landroid/net/Uri;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_1cc
    if-eqz v4, :cond_25

    nop

    nop

    goto/32 :goto_1b1

    nop

    :cond_25
    goto/32 :goto_d0

    nop

    nop

    :goto_1cd
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_1ce
    check-cast v3, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    :goto_1cf
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

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

    :goto_1d0
    invoke-virtual {p0}, Lhjd;->f()V

    goto/32 :goto_139

    nop

    nop

    nop

    :goto_1d1
    iget-object v2, v0, Lhot;->l:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d2
    iget-object v7, p0, Lhot;->j:Lhpj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_1d3
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d4
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1d5
    invoke-virtual {v0}, Lhpj;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_1d6
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d7
    iput v3, v5, Lskd;->b:I

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_1d8
    invoke-virtual {p0}, Lhiw;->j()V

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    nop

    :goto_1d9
    invoke-virtual {p0}, Lhiw;->b()V

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_1da
    invoke-virtual {v6, v2, v0, v3}, Lhpf;->e(Lj$/time/Instant;Lj$/time/Instant;Z)Ljava/util/List;

    move-result-object v6

    nop

    goto/32 :goto_1aa

    nop

    nop

    :goto_1db
    iget-object v5, p0, Lhjd;->j:Lhjh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    :goto_1dc
    iget-object v0, v1, Lhrk;->a:Left;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_1dd
    invoke-virtual {p0}, Lhjd;->j()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1de
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1df
    invoke-virtual {v5}, Lhjh;->f()V

    goto/32 :goto_1c5

    nop

    nop

    :goto_1e0
    check-cast p0, Lhot;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    :goto_1e1
    invoke-virtual {v0}, Lhze;->d()Lhxs;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :goto_1e2
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e3
    iget-object v5, p0, Lhjd;->c:Lrss;

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1a0

    nop

    nop

    nop

    :goto_1e5
    goto/16 :goto_170

    nop

    nop

    :goto_1e6
    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    :goto_1e7
    check-cast p0, Lhja;

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_1e8
    const v5, 0x7f0b03f3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1e9
    invoke-static {v0, v1}, Lhjd;->k(FF)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_1ea
    check-cast v3, Landroid/widget/Button;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e8

    nop

    nop

    :goto_1eb
    return-void

    nop

    nop

    nop

    nop

    :goto_1ec
    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_1ed
    iput v2, v5, Lsjl;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    :goto_1ee
    iget-object v2, p0, Lhot;->g:Lpdf;

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    :goto_1ef
    check-cast p0, Lhjd;

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    :goto_1f0
    const-string v2, "RemoveDeleted"

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_1f1
    const-string v3, " rows"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_1f2
    check-cast v5, Lsjl;

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    :goto_1f3
    iget-object v5, p0, Lhjd;->d:Lrss;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1f4
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :goto_1f5
    invoke-interface {v2}, Lpdf;->g()V

    goto/32 :goto_1ee

    nop

    nop

    :goto_1f6
    check-cast p0, Lhot;

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f7
    iget-object p0, p0, Lhiv;->a:Ljava/lang/Object;

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
.end method
