.class public final Ljnu;
.super Ljava/lang/Thread;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

.field final synthetic b:Llnt;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;Llnt;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p2, p0, Ljnu;->b:Llnt;

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
    iput-object p1, p0, Ljnu;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 5

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v4, Ljnj;

    nop

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

    :goto_1
    iget-object p0, p0, Ljnu;->b:Llnt;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Llnt;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v4}, Llpz;->a(Llqe;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lkek;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_7
    if-nez v1, :cond_0

    nop

    goto/32 :goto_2a

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

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

    :goto_a
    new-instance v1, Lkef;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_b
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

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

    :goto_d
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Llnt;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Lkek;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    if-gtz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_40

    nop

    nop

    :goto_12
    iget-object v1, p0, Ljnu;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

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

    :goto_13
    const/16 v1, 0x9d5

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v4, v1, v0, v3, v2}, Ljnj;-><init>(Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;Lmjv;Lidi;Lico;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    :goto_16
    iget-object p0, p0, Lkek;->P:Llpz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    const v0, 0x10

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    iget-object v0, v0, Lkek;->k:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    :goto_1b
    sget-object v1, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1c
    new-instance v0, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1d
    const v1, 0x8

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Llnt;->a:Ljava/lang/Object;

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

    :goto_1f
    iget-object v0, v0, Lkek;->X:Lmjv;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_24
    iget-object p0, p0, Llnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_25
    iget-object p0, p0, Lkek;->n:Landroid/content/Context;

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

    :goto_26
    const-string v1, "The storage directory does not exist."

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_27
    iget-object v0, p0, Llnt;->a:Ljava/lang/Object;

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

    nop

    :goto_28
    iget-object v3, v0, Lkek;->V:Lidi;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    :goto_2a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2b
    cmpl-float v1, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v1, "photoSphereCalibratedFieldOfView"

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2d
    sget-object v0, Ljnv;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v1, p0, v0, v4}, Lkef;-><init>(Llnt;Ljava/lang/String;Ljnj;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_30
    iget-object v2, v0, Lkek;->W:Lico;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_31
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_32
    iget-boolean v1, v0, Lkek;->E:Z

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_33
    invoke-virtual {v4, v1}, Ljnj;->c(Lpbz;)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_34
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_35
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CalibrateFieldOfViewDeg(Ljava/lang/String;)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_37
    check-cast v0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_38
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v0, Lkek;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3d
    check-cast p0, Lkek;

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

    :goto_3e
    check-cast v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3f
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p0, p0, Llnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, v0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

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
.end method
