.class public final Lfgu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput p3, p0, Lfgu;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p2, p0, Lfgu;->a:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;ZI[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Lfgu;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-boolean p2, p0, Lfgu;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZI[C)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput p3, p0, Lfgu;->c:I

    nop

    nop

    goto/32 :goto_3

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

    nop

    nop

    nop

    :goto_4
    iput-boolean p2, p0, Lfgu;->a:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput p3, p0, Lfgu;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lfgu;->a:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object p2, p0, Lfgu;->b:Ljava/lang/Object;

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

    nop
.end method


# virtual methods
.method public final run()V
    .locals 6

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_18e

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Ljku;->B:Lrss;

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_b7

    nop

    nop

    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Lfvp;->b(Ljava/lang/Runnable;)V

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_8
    const v1, 0x7f1405ce

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_b
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne v2, v0, :cond_1

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :cond_1
    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lgnz;->a:Lfvp;

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v5}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p0, :cond_3

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b8

    nop

    nop

    :goto_12
    iget-object p0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    :goto_13
    iget-object v2, v0, Llmd;->o:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    :goto_14
    sget-object p0, Lhdk;->a:Lsdb;

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

    :goto_15
    check-cast p0, Lifn;

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

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

    :goto_18
    iget-object v2, v0, Llmd;->p:Landroid/view/View;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_19
    iget-boolean v0, p0, Lfgu;->a:Z

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2}, Ljdc;->a()Lpci;

    move-result-object v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    iget-boolean v1, v0, Ljrw;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v1, 0x1f5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->setVisibility(I)V

    :goto_1e
    goto/32 :goto_133

    nop

    nop

    :goto_1f
    check-cast v0, Lmml;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    :goto_21
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    :pswitch_1
    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v0, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    :goto_25
    const v1, 0x7f1405cd

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_26
    iget-boolean v4, v1, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->a:Z

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

    nop

    nop

    :goto_27
    iget-object v2, v0, Llmd;->j:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1c2

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v3}, Ljku;->D(Z)V

    goto/32 :goto_1a6

    nop

    nop

    nop

    :goto_2b
    sget-object v1, Llyi;->a:Llyi;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v2}, Lkyf;->f()Lpci;

    move-result-object v2

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_2d
    if-eqz v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    :cond_4
    goto/32 :goto_107

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_14f

    nop

    nop

    :goto_2f
    iget-object v2, v0, Lifq;->g:Lglm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_30
    invoke-interface {v0}, Lnxc;->s()V

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, v0, Ljku;->D:Lnsr;

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2}, Lglm;->a()Lpci;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    :goto_34
    iget-object v2, v0, Lifq;->e:Lndu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-boolean p0, p0, Lfgu;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    :cond_5
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    :goto_38
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sget-object v3, Lixg;->a:Lixg;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, v0, Ljku;->D:Lnsr;

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

    nop

    :goto_3b
    iget-object p0, v0, Ljrw;->f:Lnxc;

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-boolean v0, p0, Lfgu;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    :goto_3d
    iget-boolean v0, p0, Lfgu;->a:Z

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v0, v0, Lgmy;->d:Lgnn;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_3f
    return-void

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setEnabled(Z)V

    goto/32 :goto_d2

    nop

    nop

    :goto_41
    invoke-interface {p0, v1, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_b6

    nop

    nop

    :goto_42
    iget-object p0, p0, Lifq;->k:Lows;

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    :goto_43
    check-cast v0, Llmd;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_45
    iget-object v0, v0, Ljku;->n:Lngo;

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v2, v3}, Lixe;->d(Lixg;)Lpci;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    :goto_47
    iget-object p0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v2}, Lngo;->c()Lpci;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast v0, Lfge;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v1, v0}, Lfdo;->I(Ljava/lang/String;)I

    goto/32 :goto_91

    nop

    nop

    :goto_4c
    move-object v4, v2

    nop

    nop

    :goto_4d
    goto/32 :goto_1a0

    nop

    nop

    nop

    :goto_4e
    const-string v0, "catshark_agency_tooltip"

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_190

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v0, v0, Ljku;->i:Lnxc;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v0, v0, Ljku;->k:Loyn;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v0, Lgjw;

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    :goto_53
    iget-object p0, v0, Lgql;->c:Lowu;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-interface {v0, p0}, Lnxc;->T(Z)V

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v1, v0, Lfge;->b:Lfgp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_56
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_148

    nop

    nop

    :goto_57
    const/4 v1, -0x1

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object p0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_59
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_5a
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->n(Z)V

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object p0, v0, Llmd;->i:Lnsa;

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-eq v0, v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-boolean v0, p0, Lfgu;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_5e
    iget-object v2, v0, Lifq;->i:Landroid/view/View;

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const-string v1, "Not showing \"%s\" warning since the app is in the background"

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_60
    sget-object p0, Lhdk;->a:Lsdb;

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_61
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_62
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_63
    iget-object v0, v0, Ljku;->S:Lkkm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v0, Lgmy;

    nop

    goto/32 :goto_12a

    nop

    nop

    :goto_65
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    :goto_66
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_67
    iget-object p0, v0, Llmd;->r:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    :goto_68
    check-cast v0, Ljkp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    :goto_69
    const/4 v2, 0x1

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-interface {p0, v0}, Lnxc;->T(Z)V

    goto/32 :goto_af

    nop

    nop

    :goto_6b
    iget-object p0, v0, Llmd;->r:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v0, p0}, Lfvp;->b(Ljava/lang/Runnable;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v2, v0, Llmd;->k:Lneh;

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    :goto_6f
    iget-object v0, v0, Lgnn;->f:Lgql;

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

    :goto_70
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_71
    new-instance v2, Lgpt;

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object p0, v0, Ljrw;->f:Lnxc;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    :goto_73
    invoke-interface {v0}, Lnsr;->s()V

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_74
    iget-object p0, p0, Lgnz;->j:Ljava/lang/Runnable;

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

    :goto_75
    iget-object v1, v0, Lkkm;->c:Lneh;

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_76
    if-nez v1, :cond_7

    nop

    nop

    goto/32 :goto_125

    nop

    :cond_7
    goto/32 :goto_171

    nop

    nop

    nop

    :goto_77
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_78
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_7b
    return-void

    nop

    :pswitch_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7c
    check-cast v0, Lfgv;

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v0, v0, Lfge;->c:Lfgg;

    nop

    goto/32 :goto_118

    nop

    nop

    :goto_7e
    add-int v0, v0, v1

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

    :goto_7f
    invoke-virtual {v2}, Lmxp;->b()Lpci;

    move-result-object v2

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-boolean v1, p0, Lfgu;->a:Z

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-interface {v0, v3}, Lnxc;->ai(I)V

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v2, v0, Lifq;->c:Ljdc;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_83
    const/16 v1, 0x3bf

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_84
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_85
    goto/16 :goto_4f

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_199

    nop

    :goto_88
    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_89
    if-nez v2, :cond_8

    nop

    goto/32 :goto_19d

    nop

    nop

    :cond_8
    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object v1, p0, Lgjw;->I:Lfdo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_8b
    iget-boolean v1, p0, Loyb;->a:Z

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-direct {v2, p0, v3}, Lhjc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v2, v0, Llmd;->o:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    :goto_8e
    iget-object v0, v0, Ljkp;->a:Ljku;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object p0, v0, Llmd;->s:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iput-boolean v2, p0, Lgjw;->u:Z

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

    :goto_92
    iget-object v0, p0, Ljkp;->a:Ljku;

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

    nop

    nop

    :goto_93
    iget-object v2, v0, Llmd;->j:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-nez v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_151

    nop

    nop

    nop

    :goto_95
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    const-string v1, "showing \"%s\" warning"

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget-boolean p0, p0, Lfgu;->a:Z

    nop

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-ne p0, v1, :cond_a

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_67

    nop

    nop

    :goto_99
    const v1, 0x15

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-boolean v0, p0, Lfgu;->a:Z

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    check-cast v0, Lmml;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_9c
    invoke-interface {v0}, Lnsr;->s()V

    :goto_9d
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-static {v5}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    return-void

    nop

    :pswitch_4
    goto/32 :goto_195

    nop

    nop

    nop

    :goto_a0
    invoke-direct {v2, v0, v1}, Lgpt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    iget-object p0, v0, Lgql;->c:Lowu;

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

    :goto_a2
    return-void

    nop

    :pswitch_5
    goto/32 :goto_1cc

    nop

    nop

    :goto_a3
    iget-object v0, p0, Lifn;->O:Lixe;

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    if-eqz v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_116

    nop

    nop

    nop

    :goto_a5
    iget-boolean v1, v0, Ljku;->J:Z

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_a6
    if-nez v0, :cond_c

    nop

    goto/32 :goto_f4

    nop

    nop

    :cond_c
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    const v1, 0x7f140034

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v2}, Lneb;->c()Lpci;

    move-result-object v2

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p0, v3}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->setVisibility(I)V

    :goto_aa
    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v0, p0, Ljkp;->a:Ljku;

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iput-object v1, v0, Lifq;->k:Lows;

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v0, p0}, Lixe;->f(Lixf;)V

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    :goto_af
    return-void

    nop

    :pswitch_6
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_b0
    iput-boolean v3, p0, Ljku;->K:Z

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_b2
    iget-object p0, p0, Lkyl;->o:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    iget-object v2, v0, Lifq;->p:Lixe;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_b4
    invoke-virtual {v0}, Lmml;->s()V

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iget-object v1, v1, Lpzi;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    :goto_b6
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_154

    nop

    nop

    nop

    nop

    :goto_b7
    iget-object v2, v0, Lifq;->m:Lneb;

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {v0, v1, p0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_b9
    iget v0, p0, Lfgu;->c:I

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_ba
    check-cast p0, Lgjw;

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_bb
    iget-object v1, v0, Llmd;->l:Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_bc
    check-cast p0, Lscz;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_be
    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    :goto_bf
    check-cast v0, Lifq;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget-object v0, v0, Ljku;->B:Lrss;

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    :goto_c1
    if-ne p0, v1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_1df

    nop

    nop

    :goto_c2
    invoke-virtual {v0, v1}, Lnee;->j(Lneh;)V

    goto/32 :goto_f3

    nop

    nop

    :goto_c3
    iget-boolean v0, p0, Lfgu;->a:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c4
    iget-boolean v0, p0, Lfgu;->a:Z

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    :goto_c7
    if-ne v2, v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    return-void

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v2}, Lglm;->d()Lpci;

    move-result-object v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_ca
    return-void

    nop

    :goto_cb
    goto/32 :goto_a1

    nop

    nop

    :goto_cc
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_1d4

    nop

    nop

    :goto_ce
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {p0, v0}, Ljrw;->w(Z)V

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object p0, v0, Llmd;->q:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_d1
    const/4 v4, 0x0

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_d2
    return-void

    nop

    :pswitch_9
    goto/32 :goto_3d

    nop

    nop

    :goto_d3
    iget-object v0, v0, Ljku;->A:Lrss;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_d4
    iget-boolean p0, p0, Lfgu;->a:Z

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    :goto_d6
    new-instance v1, Lows;

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    goto/16 :goto_ea

    nop

    nop

    nop

    :goto_d8
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    iget-object v2, v0, Lifq;->h:Lnia;

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    nop

    :goto_da
    if-eqz v2, :cond_f

    nop

    goto/32 :goto_16f

    nop

    :cond_f
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-interface {p0, v1, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    :goto_dc
    invoke-virtual {v2}, Lneb;->a()Lpci;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v0, v1}, Lmml;->m(Lrss;)V

    :goto_df
    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e1
    iget-object v0, p0, Ljkp;->a:Ljku;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    iget-object p0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_e3
    check-cast p0, Ljkp;

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    :goto_e4
    new-instance v1, Lgpt;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_e5
    goto/32 :goto_88

    nop

    nop

    :goto_e6
    invoke-interface {v1, v0}, Lngo;->ax(Llyi;)V

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    :goto_e8
    if-lez v0, :cond_10

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_87

    nop

    :goto_e9
    const v1, 0x7f0802dc

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    goto/32 :goto_bd

    nop

    nop

    :goto_eb
    check-cast p0, Lgnz;

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    iget-object v0, p0, Ljkp;->a:Ljku;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    :goto_ed
    if-eqz v1, :cond_11

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_d3

    nop

    nop

    :goto_ee
    check-cast v1, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_ef
    iget-object v0, v0, Ljku;->D:Lnsr;

    nop

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    return-void

    nop

    :goto_f1
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_f3
    goto/16 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    iget-boolean v1, v0, Ljku;->L:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_f6
    const/16 v1, 0x8

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_f7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_f8
    iget-object v2, v0, Lifq;->d:Lnxc;

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

    :goto_f9
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_fa
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_fb
    return-void

    nop

    :pswitch_a
    goto/32 :goto_c3

    nop

    nop

    :goto_fc
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_fd
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    check-cast p0, Ljrw;

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    iget-object v0, p0, Ljkp;->a:Ljku;

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

    :goto_100
    iget-object v0, v0, Ljku;->k:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_101
    check-cast v0, Llyi;

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_102
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-virtual {p0}, Lnsa;->e()V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_104
    iget-object v2, v2, Lgqc;->i:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-interface {p0, v0}, Lfrq;->a(Z)V

    :goto_106
    goto/32 :goto_17a

    nop

    nop

    nop

    :goto_107
    iput-boolean v2, v1, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->a:Z

    nop

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

    :goto_108
    check-cast p0, Lgnz;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_109
    iget-object v0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_10a
    iget-object v2, v0, Lifq;->o:Lkyf;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_10b
    iget-object v2, v0, Lifq;->i:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_10c
    if-nez v0, :cond_12

    nop

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

    :cond_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10d
    return-void

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    iget-object p0, p0, Lgnz;->i:Ljava/lang/Runnable;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_10f
    goto/16 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_110
    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_111
    iget-object v1, v0, Ljku;->n:Lngo;

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

    :goto_112
    const-string v5, "overlay"

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_113
    check-cast p0, Lmet;

    nop

    nop

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    :goto_114
    iget-object p0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_115
    iget-boolean v0, p0, Lfgu;->a:Z

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    :goto_116
    iget-object v0, p0, Ljkp;->a:Ljku;

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    :goto_117
    invoke-interface {v0}, Lngo;->l()V

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    nop

    :goto_118
    invoke-interface {v1, p0, v0}, Lfgp;->a(ZLfgv;)V

    goto/32 :goto_1cf

    nop

    nop

    nop

    :goto_119
    iget-object p0, p0, Ljkp;->a:Ljku;

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    :goto_11a
    return-void

    nop

    :pswitch_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    iget-object p0, v0, Llmd;->q:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-virtual {p0, v1}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_11d
    iget-object v0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_11e
    if-nez v0, :cond_13

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

    :cond_13
    goto/32 :goto_180

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    if-nez v1, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    :cond_14
    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :goto_120
    iget-object p0, p0, Ljjx;->h:Lnxc;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_121
    iget-object v0, v0, Ljku;->i:Lnxc;

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    :goto_122
    iget-object v1, v0, Llmd;->j:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_123
    iget-object p0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    :goto_124
    goto/16 :goto_9d

    nop

    :goto_125
    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_126
    check-cast p0, Ljjx;

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_127
    if-eqz v2, :cond_15

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_128
    iget-object v2, v0, Llmd;->o:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_129
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    iget-object v2, v0, Lgmy;->g:Lgqc;

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_12b
    iget-object v0, p0, Ljkp;->a:Ljku;

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_12c
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_12d
    goto/32 :goto_1c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    iget-object p0, p0, Lmsy;->a:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_130
    if-ne v5, v1, :cond_16

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_185

    nop

    nop

    :goto_131
    const v1, 0x7f0802db

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_132
    iget-object v0, p0, Ljkp;->a:Ljku;

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

    nop

    nop

    :goto_133
    return-void

    nop

    nop

    :pswitch_d
    goto/32 :goto_115

    nop

    nop

    nop

    :goto_134
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    :goto_135
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    :goto_136
    iget-object v0, v0, Ljrw;->f:Lnxc;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_137
    check-cast v0, Landroid/widget/ImageView;

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_138
    iget-boolean v0, p0, Lfgu;->a:Z

    nop

    goto/32 :goto_166

    nop

    nop

    :goto_139
    iget-object v3, v0, Llmd;->y:Lixe;

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

    :goto_13a
    move-object v2, v4

    nop

    nop

    nop

    nop

    :goto_13b
    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-interface {v2}, Lnxc;->g()Lpci;

    move-result-object v2

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    return-void

    nop

    nop

    nop

    :goto_13e
    goto/32 :goto_11

    nop

    nop

    :goto_13f
    return-void

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_140
    iget-object v0, v0, Ljkp;->a:Ljku;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_141
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_142
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_143
    if-nez v0, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_17
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_144
    iget-object v0, v0, Ljku;->i:Lnxc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_145
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_146
    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_147
    check-cast p0, Lkyl;

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    :goto_148
    iget-boolean v0, p0, Lfgu;->a:Z

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    :goto_149
    invoke-interface {p0, v3}, Lnxc;->T(Z)V

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    const/16 v3, 0xb

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    iget-object v2, v0, Llmd;->j:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    if-ne v2, v1, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    :cond_18
    goto/32 :goto_131

    nop

    nop

    nop

    :goto_14d
    invoke-direct {v1}, Lows;-><init>()V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_14e
    iget-object v0, v0, Ljku;->S:Lkkm;

    nop

    goto/32 :goto_16c

    nop

    nop

    :goto_14f
    iget-object v0, p0, Ljkp;->a:Ljku;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_150
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_151
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_152
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->h:Lnam;

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

    :goto_153
    sget-object v1, Ljku;->b:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_154
    iget-boolean v0, p0, Lfgu;->a:Z

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_155
    check-cast v1, Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :goto_157
    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_158
    invoke-static {}, Lftw;->g()V

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    :goto_159
    invoke-virtual {v0}, Lgjw;->m()V

    :goto_15a
    goto/32 :goto_1ac

    nop

    nop

    nop

    :goto_15b
    if-eqz v1, :cond_19

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_136

    nop

    nop

    :goto_15c
    iget-object v1, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_15d
    iget-boolean v1, v0, Ljku;->K:Z

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_15e
    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    iget-object v0, p0, Ljkp;->a:Ljku;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_160
    iget-object v0, v0, Llmd;->p:Landroid/view/View;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_161
    if-nez p0, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    :cond_1a
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_162
    invoke-virtual {p0, v2}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_163
    invoke-virtual {p0, v0}, Lnam;->c(Z)V

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_164
    iget-object v0, v0, Ljku;->i:Lnxc;

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    nop

    :goto_165
    iget-object v0, p0, Lifn;->O:Lixe;

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    :goto_166
    iget-object p0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_167
    iget-object v2, v0, Lifq;->m:Lneb;

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_168
    invoke-virtual {v0}, Lfgv;->c()Landroid/os/Handler;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_169
    iget-object p0, p0, Lmet;->e:Landroid/widget/FrameLayout;

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

    :goto_16a
    return-void

    nop

    nop

    :pswitch_f
    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    iget-boolean p0, p0, Lfgu;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_16c
    invoke-virtual {v0}, Lnee;->g()V

    :goto_16d
    goto/32 :goto_e3

    nop

    nop

    :goto_16e
    goto/16 :goto_4d

    nop

    :goto_16f
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_170
    iget-object p0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_171
    iget-object v0, v0, Ljku;->k:Loyn;

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

    :goto_172
    if-nez p0, :cond_1b

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_176

    nop

    nop

    nop

    nop

    :goto_173
    if-ne p0, v1, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_174
    check-cast v0, Ljkp;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_175
    check-cast p0, Lkyl;

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_176
    invoke-virtual {p0}, Lows;->close()V

    :goto_177
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_178
    check-cast p0, Lmsy;

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    :goto_179
    iget-object p0, p0, Lkyl;->o:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    return-void

    nop

    nop

    :pswitch_10
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    check-cast p0, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17c
    return-void

    nop

    :goto_17d
    goto/32 :goto_1d5

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    if-eqz v0, :cond_1d

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1d
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_180
    check-cast p0, Lifq;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_181
    iget-object v0, p0, Ljkp;->a:Ljku;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_182
    return-void

    nop

    :pswitch_11
    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    :goto_183
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    :goto_184
    new-instance v2, Lhjc;

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    :goto_185
    iput-boolean v1, v4, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->b:Z

    nop

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

    nop

    :goto_186
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_187
    if-nez v0, :cond_1e

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    :cond_1e
    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_188
    check-cast v0, Ljrw;

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

    nop

    :goto_189
    iget-object v2, v0, Lifq;->g:Lglm;

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_18a
    iget-object v0, v0, Ljku;->A:Lrss;

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_18b
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    check-cast p0, Lglm;

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

    :goto_18d
    iput-boolean v3, p0, Ljku;->J:Z

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_18e
    iget-boolean v0, p0, Lfgu;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    const v1, 0x7f0b03c4

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

    :goto_190
    iget-object p0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_191
    iget-object v0, p0, Ljkp;->a:Ljku;

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    :goto_192
    invoke-virtual {v0, p0}, Lixe;->a(Lixf;)Lpci;

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    :goto_193
    if-nez v0, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    :cond_1f
    goto/32 :goto_7

    nop

    nop

    :goto_194
    invoke-direct {v1, v0, v2}, Lgpt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11c

    nop

    nop

    :goto_195
    iget-object v0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_196
    iget-object v0, p0, Ljkp;->a:Ljku;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    :goto_197
    invoke-interface {v0}, Lnxc;->c()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_198
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_10
        :pswitch_1
        :pswitch_a
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_11
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_b
    .end packed-switch

    :goto_199
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    iput-boolean v0, p0, Loyb;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    :goto_19b
    iget-boolean v0, p0, Lfgu;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_19d
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_19e
    iget-object v0, v0, Ljku;->B:Lrss;

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    :goto_19f
    iget-object p0, p0, Lifn;->D:Lneh;

    nop

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    :goto_1a0
    const v2, 0x7f0b03fb

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_1a1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_1a2
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_2f

    nop

    nop

    :goto_1a3
    iget-object p0, p0, Lifn;->D:Lneh;

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_1a4
    iget-object v0, p0, Lgnz;->a:Lfvp;

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

    :goto_1a5
    check-cast v4, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    nop

    :goto_1a6
    iget-object v0, p0, Ljkp;->a:Ljku;

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    cmpl-float v0, v0, v1

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_1a8
    iget-boolean p0, p0, Lfgu;->a:Z

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

    :goto_1a9
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    iget-object p0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1da

    nop

    nop

    :goto_1ab
    const/16 v1, 0x3c0

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

    :goto_1ac
    iget-object v0, p0, Ljkp;->a:Ljku;

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_1ad
    invoke-interface {v2, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_1ae
    sget-object v1, Llyi;->a:Llyi;

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_1af
    iget-object v0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1b0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_1b1
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b2
    invoke-virtual {v0, v3, v1}, Lgmy;->o(ZI)Lsui;

    goto/32 :goto_16b

    nop

    nop

    :goto_1b3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_1b4
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_1b5
    invoke-interface {p0, v2}, Lnxc;->S(Z)V

    goto/32 :goto_16a

    nop

    nop

    nop

    :goto_1b6
    if-nez v0, :cond_20

    nop

    goto/32 :goto_15a

    nop

    :cond_20
    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    iget-object v2, v0, Lifq;->n:Lmxp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_1b8
    iput-boolean v3, v0, Ljrw;->p:Z

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    iget-object v1, v0, Llmd;->o:Landroid/view/View;

    nop

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    const-string v0, "catshark_toggle_tooltip"

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_1bb
    iget-object p0, p0, Loyb;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_1bc
    iget-object v0, p0, Ljkp;->a:Ljku;

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_1bd
    if-nez v2, :cond_21

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_1be
    invoke-interface {v0}, Lnxc;->L()V

    :goto_1bf
    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    :goto_1c0
    invoke-interface {v2}, Lnia;->f()Lpci;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    :goto_1c1
    iget-object p0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c2
    move-object v0, p0

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_1c3
    iget-object v0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_1c4
    iget-object p0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    nop

    :goto_1c5
    return-void

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c6
    iget-boolean v1, p0, Lfgu;->a:Z

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_1c7
    if-ne v1, v0, :cond_22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    :cond_22
    goto/32 :goto_1bb

    nop

    nop

    nop

    :goto_1c8
    invoke-virtual {v3, v2}, Lixe;->f(Lixf;)V

    :goto_1c9
    goto/32 :goto_13

    nop

    nop

    :goto_1ca
    iget-object p0, p0, Lfsd;->a:Loyb;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cb
    iget-object v0, p0, Ljkp;->a:Ljku;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_1cc
    iget-boolean v0, p0, Lfgu;->a:Z

    nop

    goto/32 :goto_1c1

    nop

    nop

    :goto_1cd
    iget-object p0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    :goto_1ce
    iget-object v0, p0, Lmet;->g:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    :goto_1cf
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_1c3

    nop

    nop

    :goto_1d0
    iget-object v0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_1d1
    check-cast p0, Lfsd;

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    :goto_1d2
    iget-object v1, v0, Lifq;->r:Lpzi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_1d3
    invoke-interface {v2}, Lndu;->a()Lpci;

    move-result-object v2

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d4
    iget-object v2, v0, Lifq;->f:Lngo;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d5
    check-cast p0, Lifn;

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_1d6
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_1d7
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_34

    nop

    nop

    :goto_1d8
    iget-boolean v5, v4, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->b:Z

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_1d9
    invoke-interface {v0}, Lnsr;->s()V

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_1da
    check-cast p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_1db
    iput-boolean v3, v0, Ljku;->L:Z

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_1dc
    if-eqz p0, :cond_23

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_1dd
    iget-boolean p0, p0, Lfgu;->a:Z

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1de
    iget-object v4, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    :goto_1df
    iget-object p0, v0, Llmd;->s:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_1e0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_1e1
    if-nez v0, :cond_24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :cond_24
    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    nop

    :goto_1e2
    iget-object p0, p0, Lfgu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_17b

    nop

    nop

    nop
.end method
