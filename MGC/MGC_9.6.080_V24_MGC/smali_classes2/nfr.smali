.class public final Lnfr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljpv;
.implements Ljpt;
.implements Ljpu;


# instance fields
.field public final a:Landroid/content/Context;

.field final b:Landroid/os/Handler;

.field public c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

.field public d:Landroid/view/ViewStub;

.field public e:Lnfo;

.field public f:Landroid/content/Intent;

.field public g:Z

.field public h:Z

.field public final i:Landroid/content/BroadcastReceiver;

.field public j:Lixe;

.field private final k:Lltr;

.field private final l:Lltq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lltr;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lnfr;->k:Lltr;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lnfq;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lnfp;-><init>(Lnfr;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lnfr;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lnfp;

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

    :goto_6
    iput-object p1, p0, Lnfr;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    new-instance p2, Landroid/os/Handler;

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

    :goto_8
    iput-object p2, p0, Lnfr;->b:Landroid/os/Handler;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Lnfr;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lnfr;->l:Lltq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    invoke-direct {v0, p0}, Lnfq;-><init>(Lnfr;)V

    goto/32 :goto_f

    nop

    nop

    :goto_f
    iput-object v0, p0, Lnfr;->i:Landroid/content/BroadcastReceiver;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

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
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4
    const-string v0, "level"

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v3, "scale"

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->b:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->b:Landroid/widget/TextView;

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

    :goto_9
    const-string p1, "%"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_c
    if-gez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p1, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->jWqV:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    mul-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lnfr;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    const v0, 0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    div-float/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    const/16 v2, 0x64

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1e
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_20
    float-to-int p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    const v1, 0xf

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, -0x1

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

    :goto_24
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_26
    if-le p1, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    :goto_27
    int-to-float p1, p1

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
.end method

.method public final b(I)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lnfr;->b:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lkwi;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    invoke-direct {v0, p0, p1, v1}, Lkwi;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop
.end method

.method public final c(F)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, p1, v1}, Ljkf;-><init>(Ljava/lang/Object;FI)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    nop

    :goto_3
    new-instance v0, Ljkf;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lnfr;->b:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_7
    const v0, 0x1d

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

    :goto_8
    goto/32 :goto_e

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x15

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final dj()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnfr;->k:Lltr;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lltr;->d()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lnfr;->c(F)V

    :goto_7
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v1, p0, Lnfr;->h:Z

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Lnfr;->f(F)V

    :goto_a
    goto/32 :goto_11

    nop

    nop

    :goto_b
    iget v0, v0, Lltr;->d:F

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    iget-object v0, p0, Lnfr;->k:Lltr;

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

    :goto_d
    iget-object v0, p0, Lnfr;->k:Lltr;

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

    :goto_e
    iget v0, v0, Lltr;->c:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x16

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    iget-object v0, p0, Lnfr;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Lnfr;->b(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->a()V

    :goto_15
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    iget-boolean v1, v0, Lltr;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_18
    iget-object v0, p0, Lnfr;->k:Lltr;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    :goto_1a
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    iget v0, v0, Lltr;->f:F

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    iget-boolean v1, v0, Lltr;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lltr;->d()Z

    move-result v0

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

    :goto_1f
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Lnfr;->l:Lltq;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lnfr;->k:Lltr;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    :goto_24
    invoke-virtual {v0, v1}, Lltr;->a(Lltq;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lnfr;->k:Lltr;

    nop

    goto/32 :goto_1e

    nop

    nop
.end method

.method public final dv()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lnfr;->g:Z

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lixe;->f(Lixf;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnfr;->j:Lixe;

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

    :goto_4
    invoke-virtual {p0, v0}, Lixe;->h(Lixg;)V

    goto/32 :goto_5

    nop

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

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lltr;->b(Lltq;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lnfr;->j:Lixe;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_9
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    iget-object v1, p0, Lnfr;->i:Landroid/content/BroadcastReceiver;

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

    :goto_b
    iget-object v1, p0, Lnfr;->e:Lnfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lnfr;->l:Lltq;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x11

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

    :goto_f
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lnfr;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    iget-boolean v0, p0, Lnfr;->g:Z

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

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    :goto_15
    goto/32 :goto_14

    nop

    :goto_16
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v0, Lixg;->c:Lixg;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lnfr;->k:Lltr;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lnfr;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1b
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

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

    :cond_2
    goto/32 :goto_13

    nop
.end method

.method public final f(F)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnfr;->b:Landroid/os/Handler;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljkf;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    return-void

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
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    invoke-direct {v0, p0, p1, v1}, Ljkf;-><init>(Ljava/lang/Object;FI)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method
