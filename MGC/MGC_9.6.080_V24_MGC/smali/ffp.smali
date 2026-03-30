.class public final Lffp;
.super Lfgv;
.source "PG"


# instance fields
.field public final a:Lfhh;

.field public b:Z

.field public final synthetic c:Lffy;

.field private final d:Lffy;

.field private final e:I

.field private final f:Lffz;

.field private g:Lfhn;


# direct methods
.method public constructor <init>(Lffy;Lffy;ILfhh;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0

    goto/32 :goto_7

    nop

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
    iput p3, p0, Lffp;->e:I

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

    :goto_2
    iput-object p1, p0, Lffp;->f:Lffz;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p5}, Lffz;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lffp;->d:Lffy;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lffp;->g:Lfhn;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    iput-object p1, p0, Lffp;->c:Lffy;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    iput-boolean p1, p0, Lffp;->b:Z

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

    :goto_9
    invoke-direct {p0}, Lfgv;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Lffz;

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

    :goto_c
    iput-object p4, p0, Lffp;->a:Lfhh;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lffp;->e:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method public final b()Landroid/hardware/Camera$Parameters;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final c()Landroid/os/Handler;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lffy;->b:Lffw;

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
    iget-object p0, p0, Lffp;->c:Lffy;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final d()Lfgz;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lffp;->d:Lffy;

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

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final e()Lfhg;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lffp;->f:Lffz;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final f()Lfhn;
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lffp;->c:Lffy;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget-object p0, p0, Lffp;->g:Lfhn;

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

    :goto_2
    iput-object v0, p0, Lffp;->g:Lfhn;

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Lffy;->b:Lffw;

    nop

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

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lffw;->b()Lfhn;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lffp;->g:Lfhn;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final g()Lfho;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lffp;->c:Lffy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lffy;->c:Lfho;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final h()Lfhp;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lffy;->d:Lfhp;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lffp;->c:Lffy;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i([B)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final j(Landroid/os/Handler;Lfgp;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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
    iget-object p0, p0, Lffy;->g:Lfhm;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    const v1, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    :try_start_0
    iget-object v0, p0, Lffp;->c:Lffy;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lffy;->d:Lfhp;

    nop

    nop

    nop

    new-instance v1, Las;

    nop

    nop

    nop

    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, p2, p1, v2}, Las;-><init>(Lffp;Lfgp;Landroid/os/Handler;I)V

    invoke-virtual {v0, v1}, Lfhp;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lffp;->d:Lffy;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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
    goto/32 :goto_5

    nop

    :goto_9
    return-void

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Lfhm;->c(Ljava/lang/RuntimeException;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final k(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lffp;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public final l(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v1, v0, Lfhn;->g:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Lfgv;->l(Landroid/graphics/SurfaceTexture;)V

    goto/32 :goto_7

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lffp;->f()Lfhn;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

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

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x2

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

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final m(Lfhn;)V
    .locals 1

    goto/32 :goto_b

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

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Lffy;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    instance-of v0, p1, Lfga;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_7
    sget-object p0, Lffy;->a:Lfht;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    const/4 v0, -0x2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, p1}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, p1}, Lfhu;->a(Lfht;Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string p1, "Provided settings not compatible with the backing framework API"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string p1, "null parameters in applySettings()"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1, v0}, Lfgv;->s(Lfhn;I)Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    iput-object p1, p0, Lffp;->g:Lfhn;

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final n()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    iput-boolean v1, v0, Lfhn;->g:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-super {p0, v0}, Lfgv;->l(Landroid/graphics/SurfaceTexture;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    :goto_9
    invoke-virtual {p0}, Lffp;->f()Lfhn;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    :goto_e
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final o(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Lfgt;Lfgt;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iget-object p0, p0, Lffy;->g:Lfhm;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lfhm;->c(Ljava/lang/RuntimeException;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    new-instance p3, Lffx;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lffp;->d:Lffy;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-direct {p3, p0, p2, p1, p4}, Lffx;-><init>(Lffp;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Landroid/os/Handler;Lfgt;)V

    :try_start_0
    iget-object p1, p0, Lffp;->c:Lffy;

    nop

    nop

    nop

    iget-object p1, p1, Lffy;->d:Lfhp;

    nop

    nop

    new-instance p2, Less;

    nop

    nop

    nop

    nop

    const/4 p4, 0x6

    nop

    invoke-direct {p2, p0, p3, p4}, Less;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Lfhp;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final p(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final q(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method
