.class public final Landroidx/wear/ambient/AmbientMode$AmbientController;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

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

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

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
    iput-object p1, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;[B)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p1, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

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

    :goto_1
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

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

    nop

    :goto_2
    goto/16 :goto_1e

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_1e

    nop

    nop

    :pswitch_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, ""

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne p1, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Landroidx/profileinstaller/ProfileInstallReceiver;

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

    :goto_7
    const/16 v1, 0x8

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

    :goto_8
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

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

    :goto_9
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    const-string v0, "RESULT_PARSE_EXCEPTION"

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    packed-switch p1, :pswitch_data_0

    :pswitch_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    :goto_f
    check-cast p2, Ljava/lang/Throwable;

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

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_8
    .end packed-switch

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "ProfileInstaller"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x7

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x20

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

    :goto_15
    goto :goto_1e

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_2d

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_19
    goto :goto_1e

    nop

    nop

    :pswitch_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_1e

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne p1, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_1d
    const-string v0, "RESULT_INSTALL_SUCCESS"

    nop

    nop

    :goto_1e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x6

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

    nop

    :goto_20
    const-string v0, "RESULT_IO_EXCEPTION"

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_21
    goto :goto_1e

    nop

    :pswitch_8
    goto/32 :goto_2e

    nop

    nop

    :goto_22
    goto :goto_1e

    nop

    nop

    :pswitch_9
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

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

    :goto_24
    const-string v0, "RESULT_NOT_WRITABLE"

    nop

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

    :goto_25
    const-string v0, "RESULT_ALREADY_INSTALLED"

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

    :goto_26
    if-ne p1, v1, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, p1}, Landroidx/profileinstaller/ProfileInstallReceiver;->setResultCode(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_28
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    :goto_29
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2a
    goto/16 :goto_1e

    nop

    :pswitch_a
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2b
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2c
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljbs;->m()V

    goto/32 :goto_1

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
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ljcb;->g:Ljbs;

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

    :goto_4
    check-cast p0, Ljcb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljbs;->h()V

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

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
.end method

.method public final c(Lrr;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lve;->a:Ljava/util/List;

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

    nop

    :goto_1
    monitor-exit v0

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

    :goto_2
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p1, Lrr;->a:Z

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

    nop

    :goto_6
    move-object v0, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Lve;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    :try_start_0
    check-cast p0, Lve;

    nop

    nop

    iget-object p0, p0, Lve;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    monitor-exit v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(I)Llb;
    .locals 7

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    move-object v4, v5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    return-object v4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object v3

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v6, p1, :cond_1

    nop

    goto/32 :goto_1f

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4, v6}, Lip;->k(Landroid/view/View;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v5, v2}, Lip;->f(I)Landroid/view/View;

    move-result-object v5

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

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

    :goto_10
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Lip;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v5}, Llb;->u()Z

    move-result v6

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->g:Lip;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Llb;

    move-result-object v5

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

    :goto_15
    return-object v3

    nop

    :goto_16
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    :goto_1a
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->g:Lip;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1c
    move-object v4, v5

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    :goto_1e
    goto :goto_18

    nop

    nop

    :goto_1f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    :goto_21
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->g:Lip;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, v4, Llb;->a:Landroid/view/View;

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

    :goto_23
    invoke-virtual {v1}, Lip;->c()I

    move-result v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_4

    nop

    goto/32 :goto_1a

    nop

    :cond_4
    goto/32 :goto_19

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

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

    :goto_27
    if-eqz v6, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v6, v5, Llb;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2a
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v5, :cond_6

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2c
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, p1}, Lip;->k(Landroid/view/View;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v4, :cond_7

    nop

    goto/32 :goto_5

    nop

    :cond_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object v4, v3

    nop

    nop

    :goto_31
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v6, v5, Llb;->c:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final e(Lhh;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iget p1, p1, Lhh;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, p1}, Lkl;->x(II)V

    goto/32 :goto_1e

    nop

    nop

    :goto_3
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const v0, 0x14

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p1, Lhh;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

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
    goto/32 :goto_6

    nop

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
    goto/32 :goto_1b

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, p1, Lhh;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    :goto_13
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

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

    :goto_14
    const/4 v1, 0x4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

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

    :goto_16
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

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

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_23

    nop

    nop

    :goto_19
    iget v0, p1, Lhh;->a:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p1, Lhh;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    :goto_1c
    iget p1, p1, Lhh;->d:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, v0, v1}, Lkl;->y(II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0, p1}, Lkl;->w(II)V

    goto/32 :goto_c

    nop

    nop

    :goto_23
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_24
    iget v1, p1, Lhh;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_25
    if-ne v0, v1, :cond_2

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_27
    iget v0, p1, Lhh;->b:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-ne v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    :goto_29
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method public final f(IILjava/lang/Object;)V
    .locals 9

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    add-int v3, p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2
    add-int/lit8 p3, p3, -0x1

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

    :goto_3
    if-gez p3, :cond_0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_4
    iget-object v0, p2, Lkq;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v4}, Llb;->e(I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_9
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

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

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v7, :cond_1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v6, v2}, Lip;->f(I)Landroid/view/View;

    move-result-object v6

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

    :goto_e
    goto :goto_7

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    iget-object p2, v0, Landroid/support/v7/widget/RecyclerView;->e:Lkq;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->P:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Lip;->c()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    iget v8, v7, Llb;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_16
    invoke-virtual {v7, v4}, Llb;->e(I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_17
    iget v1, v0, Llb;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_18
    invoke-virtual {v7}, Llb;->z()Z

    move-result v8

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

    :goto_19
    if-nez v8, :cond_2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_2
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    :goto_1b
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

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

    :goto_1c
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_1e
    if-lt v2, v1, :cond_4

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

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v7, p3}, Llb;->d(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Lip;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ge v1, p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_24
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_25
    if-lt v1, v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_6
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_26
    iget-object p3, p2, Lkq;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->g:Lip;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    nop

    nop

    :goto_2a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto :goto_2a

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v0, Llb;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2f
    if-ge v8, p1, :cond_7

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_30
    goto :goto_39

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2b

    nop

    nop

    :goto_33
    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Llb;

    move-result-object v7

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto :goto_2a

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_37
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-boolean v5, v3, Lkm;->e:Z

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p2, p3}, Lkq;->h(I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-lt v8, v3, :cond_9

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v1, 0x3

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v3, Lkm;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop
.end method

.method public final g(II)V
    .locals 8

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Lip;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    if-ge v6, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v5, p2, v2}, Llb;->j(IZ)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->g:Lip;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    check-cast v6, Llb;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    move v5, v2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    iget-object v3, v1, Lkq;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Llb;

    move-result-object v5

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_e
    iget v6, v5, Llb;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v5, v3}, Lip;->f(I)Landroid/view/View;

    move-result-object v5

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

    :goto_10
    const v1, 0x18

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_12
    goto :goto_a

    nop

    nop

    :goto_13
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    :goto_15
    if-nez v6, :cond_1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_16
    const v0, 0x1b

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

    :goto_17
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->N:Lky;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-boolean v4, v5, Lky;->f:Z

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_36

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    :goto_1c
    invoke-virtual {v5}, Llb;->z()Z

    move-result v6

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1e
    iget-object v6, v1, Lkq;->c:Ljava/util/ArrayList;

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

    :goto_1f
    invoke-virtual {v1}, Lip;->c()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

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

    :goto_23
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v6, p2, v2}, Llb;->j(IZ)V

    :goto_25
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_27
    iget v7, v6, Llb;->c:I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2d

    nop

    nop

    :goto_2a
    if-nez v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v6, :cond_3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    :goto_2d
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto/32 :goto_26

    nop

    nop

    :goto_2e
    if-ge v7, p1, :cond_5

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v4, 0x1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_30
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->e:Lkq;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_31
    if-lt v5, v3, :cond_6

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_32
    if-lt v3, v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5

    nop

    nop

    :goto_33
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->O:Z

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final h(II)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->N:Lky;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lky;->c:I

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

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    nop

    :goto_6
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_8
    iget p1, p0, Lky;->c:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

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
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x17

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->O:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->O(IIZ)V

    goto/32 :goto_b

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    const v1, 0x1d

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
.end method

.method public final i()I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p0

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

    :goto_3
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

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
.end method

.method public final isAmbient()Z
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    check-cast p0, Landroidx/wear/ambient/AmbientMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->h()Z

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(Landroid/view/View;)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final k(I)Landroid/view/View;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

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

    :goto_2
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop
.end method

.method public final l(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iget v0, p1, Llb;->o:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Llb;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->as(Llb;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    iput p0, p1, Llb;->o:I

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final m(I)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

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

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_e
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->removeViewAt(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    nop

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

    :goto_14
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->y(Landroid/view/View;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final n(Llb;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

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

    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

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
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1, p0}, Lkl;->aP(Landroid/view/View;Lkq;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iget-object p1, p1, Llb;->a:Landroid/view/View;

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
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->e:Lkq;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final o(Llb;Ldvn;Ldvn;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Lki;

    nop

    nop

    nop

    goto/32 :goto_5

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

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

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

    :goto_5
    invoke-virtual {v0, p1, p2, p3}, Lki;->o(Llb;Ldvn;Ldvn;)Z

    move-result p1

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

    :goto_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->T()V

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Llb;->m(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

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
.end method

.method public final p(Llb;Ldvn;Ldvn;)V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Lkq;->l(Llb;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->T()V

    :goto_3
    goto/32 :goto_c

    nop

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Lki;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->q(Llb;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, v0}, Llb;->m(Z)V

    goto/32 :goto_5

    nop

    nop

    :goto_b
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Lkq;

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

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p1, p2, p3}, Lki;->q(Llb;Ldvn;Ldvn;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final q(Lrkk;)Lrkk;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    check-cast p0, Lrkp;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    instance-of v0, p1, Lrkr;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    neg-float p0, p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lrki;

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

    nop

    :goto_9
    invoke-virtual {p0}, Lrkp;->b()F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, p1}, Lrki;-><init>(FLrkk;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final r(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

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
    invoke-static {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop
.end method

.method public final s()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    check-cast p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final setAmbientOffloadEnabled(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

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

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientDelegate;->setAmbientOffloadEnabled(Z)V

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Landroidx/wear/ambient/AmbientMode;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final t(Lofz;)V
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

    :goto_1
    invoke-interface {p0, p1}, Lojc;->i(Lofz;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final u()Z
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->d:F

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
    invoke-static {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->b(Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;F)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1, v2}, Lnzk;->d(FFF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    if-eqz v2, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->b:F

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

    :goto_6
    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->a:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    check-cast p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;

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

    :goto_a
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    :goto_c
    return p0

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_12
    sub-float/2addr v0, v2

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->c:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    cmpl-float v2, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final v()Z
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    add-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    check-cast p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;

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

    :goto_2
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    cmpl-float v2, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

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

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->a:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const v1, 0x14

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v2, v1}, Lnzk;->d(FFF)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->c:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    invoke-static {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;->b(Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/WearInlineSlider;F)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_15
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_16
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final w()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lpci;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final x(Lnrq;)Loiq;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1, v1}, Loiq;-><init>(Ljava/lang/Object;Ljava/lang/Object;[C)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    new-instance v0, Loiq;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x16

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    nop

    :goto_b
    goto/32 :goto_6

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_d
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method
