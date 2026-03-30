.class public final synthetic Lhhs;
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

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput p2, p0, Lhhs;->b:I

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

    :goto_3
    iput-object p1, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 8

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lhip;->r:Liuy;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lhiw;->j:Z

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ltz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lrsx;

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lhiw;->h:Z

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

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_4b

    nop

    nop

    :goto_8
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Lhhr;

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lhir;->a()V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Lmiy;->a()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lhip;->b()V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_f
    iget v2, v0, Ljyz;->b:F

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-wide v0, p0, Lhiw;->l:J

    nop

    goto/32 :goto_73

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

    :pswitch_1
    goto/32 :goto_24

    nop

    nop

    :goto_12
    float-to-double v2, v0

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_13
    iget-boolean v4, v0, Lhii;->c:Z

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0}, La;->aF(Loyn;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lhip;->k()V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lhhr;->l()V

    goto/32 :goto_d5

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lhze;->d()Lhxs;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lhiw;->f:Lrss;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean v0, p0, Lhiw;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lhiw;->e:Loyd;

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Lhii;

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lhjl;->c()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_1f
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_20
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p0, Lhip;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v0, Lrsx;

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_24
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lhiz;->a()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

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

    :goto_28
    invoke-virtual {p0}, Lhhr;->h()V

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-wide v6, Lhiw;->b:J

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, p0}, Lhjh;->e(Lrss;)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    :pswitch_4
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lhiw;->n:Lhjh;

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_32
    iget v3, v0, Ljyz;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Lhii;->e()V

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_34
    check-cast p0, Lhhr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v0, Lrsx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_36
    return-void

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_eb

    nop

    :goto_39
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v4, Lhil;

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

    :goto_3c
    const/16 v0, 0x3f5

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v0, Lrsx;

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

    :goto_3e
    check-cast p0, Lhjg;

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_3f
    check-cast p0, Lhiz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/16 v2, 0x3f9

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p0, p0, Lhiw;->k:Lrss;

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

    :goto_42
    iget-object v0, v0, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_43
    goto :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget v0, p0, Lhhs;->b:I

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_47
    const/4 v5, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_48
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iput-wide v4, p0, Lhiw;->l:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Lhhr;->k()V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

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

    nop

    :goto_4c
    return-void

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4d
    check-cast p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_4e
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4f
    check-cast p0, Lhir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_50
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

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

    :goto_52
    check-cast v0, Lhze;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0}, Lhir;->a()V

    goto/32 :goto_2c

    nop

    nop

    :goto_54
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0}, Lhiw;->b()V

    :goto_56
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_58
    check-cast p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_59
    const-wide/16 v2, 0x3e8

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0}, Lhjg;->b()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object p0, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lrss;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {p0}, La;->aG(Loyn;)V

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_5f
    check-cast p0, Lhhr;

    nop

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

    :goto_60
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_61
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_62
    return-void

    nop

    nop

    :pswitch_a
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v0, Lhze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_65
    return-void

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_d2

    nop

    nop

    :goto_67
    iget-object v0, v0, Lhiy;->b:Lhjl;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_68
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p0}, Lhiw;->b()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-wide v6, p0, Lhiw;->l:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_6c
    cmp-long v0, v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_6d
    check-cast v0, Lixe;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iput-boolean v5, p0, Lhiw;->i:Z

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_a6

    nop

    nop

    :goto_72
    invoke-virtual {v0}, Lhjh;->f()V

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_73
    return-void

    nop

    nop

    :pswitch_b
    goto/32 :goto_a4

    nop

    nop

    :goto_74
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_75
    return-void

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

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

    :goto_77
    iget-object v0, v0, Lrsx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_78
    check-cast p0, Lhhr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-static {v3, v0, p0, v1, v2}, Lfey;->e(Ljava/lang/String;CLscz;CLjava/util/concurrent/TimeUnit;)V

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_7c
    check-cast p0, Lhhr;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    return-void

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :goto_80
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-direct {v4, v0, v3, v2, v5}, Lhil;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;FFI)V

    goto/32 :goto_7f

    nop

    nop

    :goto_82
    invoke-virtual {v0}, Lhze;->g()Z

    move-result v0

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_83
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_e
        :pswitch_9
        :pswitch_10
        :pswitch_7
        :pswitch_1
        :pswitch_13
        :pswitch_5
        :pswitch_c
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_f
        :pswitch_6
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_11
    .end packed-switch

    :goto_84
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    check-cast p0, Lhhr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v0}, Liuy;->a()V

    goto/32 :goto_d

    nop

    nop

    :goto_87
    invoke-virtual {p0}, Lhip;->j()V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_88
    const/4 v1, 0x1

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_89
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_8a
    invoke-virtual {v0, v2}, Lixe;->g(Lixg;)V

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    check-cast p0, Lhhr;

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_8c
    invoke-virtual {p0}, Lhhr;->j()V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_8d
    float-to-double v3, v3

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

    :goto_8e
    invoke-virtual {p0}, Lhjg;->b()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    if-gez v0, :cond_6

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_6
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_91
    invoke-virtual {p0}, Lhhr;->c()V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_92
    goto/16 :goto_71

    nop

    nop

    :goto_93
    goto/32 :goto_70

    nop

    nop

    :goto_94
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-interface {v0, v2, v1, v1, p0}, Lscz;->G(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    float-to-double v2, v2

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_98
    iget-boolean p0, p0, Lhiw;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_99
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object p0, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_9b
    iget-boolean v4, v0, Lhii;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_9c
    double-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_9d
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_7
    goto/32 :goto_ec

    nop

    nop

    :goto_9e
    add-long/2addr v0, v2

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

    :goto_9f
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    check-cast p0, Lhiw;

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_a1
    return-void

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_99

    nop

    nop

    :goto_a2
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_a3
    iget-object v0, v0, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_a5
    sget-object v2, Lixg;->e:Lixg;

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

    :goto_a6
    iget-boolean v0, p0, Lhiw;->h:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a7
    if-nez v0, :cond_8

    nop

    goto/32 :goto_b9

    nop

    :cond_8
    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_a8
    check-cast p0, Lhir;

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

    :goto_a9
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v0, v2, v3, v4, v5}, Lhiy;->a(FFJ)V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_ac
    iget-boolean v0, p0, Lhiw;->i:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_ad
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_ae
    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_af
    iget-object p0, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b0
    return-void

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    check-cast p0, Lhjg;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-static {v0}, Ljyz;->a(Lhxs;)Ljyz;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b5
    iget-object v0, p0, Lhiw;->n:Lhjh;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    iget-object v0, p0, Lhiw;->f:Lrss;

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_b7
    check-cast v0, Lhii;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_b8
    goto/16 :goto_56

    nop

    nop

    :goto_b9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v0, p0, Lhiw;->d:Lhiy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_bc
    iget-object v0, p0, Lhiw;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_be
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iput-boolean v1, p0, Lhiw;->h:Z

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_c1
    invoke-virtual {v0}, Lhjh;->d()V

    :goto_c2
    goto/32 :goto_ca

    nop

    nop

    :goto_c3
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_c4
    iget-object v0, p0, Lhiw;->g:Lrss;

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

    :goto_c5
    check-cast p0, Lhip;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_c7
    iget-object v0, p0, Lhiw;->d:Lhiy;

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {v0}, Lhiy;->b()V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    if-lez v0, :cond_9

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_be

    nop

    :goto_ca
    iput-boolean v1, p0, Lhiw;->i:Z

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v0, v0, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_cc
    if-nez v4, :cond_a

    nop

    goto/32 :goto_80

    nop

    :cond_a
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_cd
    const-string v2, "Can not update PitchRollIndicator: cameraCoachHudController = %s, inAppNotificationController = %s, isHintEnabled = %s,"

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_ce
    check-cast p0, Lhiz;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    float-to-double v3, v0

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    return-void

    nop

    :pswitch_f
    goto/32 :goto_48

    nop

    nop

    :goto_d1
    iget-object v0, p0, Lhiw;->c:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d2
    iget-object v0, p0, Lhiw;->n:Lhjh;

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    iput-object v0, p0, Lhiw;->k:Lrss;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    double-to-float v3, v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_d5
    return-void

    nop

    :pswitch_10
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d7
    if-nez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d8
    if-gez v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_29

    nop

    nop

    :goto_d9
    return-void

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_89

    nop

    nop

    :goto_da
    sget-object v0, Lhiw;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_db
    check-cast p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_dc
    check-cast p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

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

    :goto_dd
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {p0}, Lhhr;->f()V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_df
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    :goto_e0
    iget-object p0, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lrss;

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

    :goto_e1
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_e2
    iget-object v0, v0, Lhii;->d:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_e3
    iget-object v0, v0, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_e4
    iget-object p0, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_e5
    iget-object v4, v0, Lhii;->d:Lrss;

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_e6
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_e7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_e8
    if-nez v4, :cond_d

    nop

    goto/32 :goto_80

    nop

    :cond_d
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    iget-object v0, p0, Lhiw;->n:Lhjh;

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

    nop

    :goto_ea
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_eb
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_ec
    sget-object p0, Lhiw;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_ed
    iget-object p0, p0, Lhhs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    cmpg-double v0, v2, v6

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

    nop

    :goto_ef
    check-cast p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

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

    :goto_f0
    check-cast p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_f1
    add-long/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    return-void

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_f4
    invoke-virtual {v0}, Lhjh;->g()V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {p0}, Lhiz;->a()V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    check-cast v0, Lrsx;

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    iget-object v0, p0, Lhiw;->n:Lhjh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_f8
    check-cast p0, Lhip;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v0}, Lhjh;->g()V

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_fa
    check-cast p0, Lhiw;

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

    nop

    :goto_fb
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_fc
    const-string v3, "Can not update pitch roll indicator because camera orientation feature is empty."

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_fe
    invoke-virtual {p0}, Lhhr;->d()V

    goto/32 :goto_e6

    nop

    nop

    :goto_ff
    iget-object p0, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lrss;

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

    :goto_100
    cmpg-double v0, v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_101
    move v0, v5

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

    :goto_102
    iget-object v0, p0, Lhiw;->d:Lhiy;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_103
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop
.end method
