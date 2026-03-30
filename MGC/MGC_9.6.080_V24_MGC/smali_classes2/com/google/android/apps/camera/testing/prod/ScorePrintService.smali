.class public Lcom/google/android/apps/camera/testing/prod/ScorePrintService;
.super Landroid/app/IntentService;
.source "PG"


# static fields
.field private static final a:Lsdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const-string v0, "com.google.android.apps.camera.testing.prod.ScorePrintService"

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

    :goto_2
    sput-object v0, Lcom/google/android/apps/camera/testing/prod/ScorePrintService;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "CAM_ScorePrintService"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    :goto_0
    const/16 p1, 0x11a3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "The service isn\'t enabled."

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

    :goto_2
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lmne;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

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

    :goto_5
    new-instance v0, Lnzk;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0, v0}, Lmnc;->dw(Lnzk;)Lmhz;

    move-result-object p0

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

    :goto_c
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    const/16 p1, 0x11a2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    sget-object p0, Lcom/google/android/apps/camera/testing/prod/ScorePrintService;->a:Lsdb;

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

    :goto_10
    invoke-direct {v0}, Lnzk;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string p1, "No intent is given."

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_14
    invoke-interface {p0, p1}, Lmne;->a(Landroid/content/Intent;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/camera/testing/prod/ScorePrintService;->getApplication()Landroid/app/Application;

    move-result-object p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    sget-object p0, Lcom/google/android/apps/camera/testing/prod/ScorePrintService;->a:Lsdb;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p0, Lmnc;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0}, Ltur;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    if-eqz p0, :cond_1

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

    :cond_1
    goto/32 :goto_16

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method
