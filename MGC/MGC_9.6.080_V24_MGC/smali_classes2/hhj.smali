.class Lhhj;
.super Lhhr;
.source "PG"


# instance fields
.field final synthetic a:Lhhq;


# direct methods
.method public constructor <init>(Lhhq;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhhj;->a:Lhhq;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lhhr;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 5

    goto/32 :goto_2

    nop

    nop

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    nop

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

    :goto_1
    invoke-static {v0, v2, v1}, Lqrg;->F(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Lhex;->c(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Lhhq;->c:Lhex;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, v1, v2, v3}, Lrdv;->enableSubpipeline(JLjava/lang/String;)Z

    :goto_8
    goto/32 :goto_17

    nop

    nop

    :goto_9
    iget-object p0, p0, Lhhq;->c:Lhex;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_a
    iget-object v0, p0, Lhhj;->a:Lhhq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    if-eqz v3, :cond_0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_e
    cmp-long v3, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    sget-object v1, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->uaPttnFBV:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    const-string v0, "VKP"

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

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_23

    nop

    nop

    :goto_13
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    const-string v3, "LazyPipeline"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    const-string v1, "camera_vkp_enable_sub_pipeline"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, v0, Lrdx;->a:Lrdv;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lhex;->h:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_1b
    iget-object p0, p0, Lhhj;->a:Lhhq;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lhex;->g:Lhgg;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

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

    :goto_22
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_25
    const-string v2, "CameraVisionKitPipeline needs to be initialized first"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_26
    iget-object v0, p0, Lhex;->h:Lpdf;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_27
    iget-wide v1, v0, Lrdx;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop
.end method

.method public c()V
    .locals 0

    goto/32 :goto_2

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

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->W()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhhj;->a:Lhhq;

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

    :goto_3
    iget-object p0, p0, Lhhq;->l:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
