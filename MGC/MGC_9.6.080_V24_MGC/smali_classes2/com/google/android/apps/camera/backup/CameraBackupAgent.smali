.class public Lcom/google/android/apps/camera/backup/CameraBackupAgent;
.super Lowj;
.source "PG"


# instance fields
.field public a:Lmjv;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    const v1, 0x16

    nop

    goto/32 :goto_7

    nop

    nop

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
    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    const-class v1, Lglh;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/camera/backup/CameraBackupAgent;->a:Lmjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    const v0, 0x3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Liye;

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

    :goto_c
    check-cast v0, Lglh;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/backup/CameraBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_f
    invoke-interface {v0, v1}, Liye;->c(Ljava/lang/Class;)Liyg;

    move-result-object v0

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

    :goto_10
    invoke-interface {v0, p0}, Lglh;->b(Lcom/google/android/apps/camera/backup/CameraBackupAgent;)V

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lowj;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a()Ljava/util/Map;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lolx;-><init>()V

    goto/32 :goto_4

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

    nop

    :goto_2
    new-instance v0, Lolx;

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

    :goto_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, v0}, Lryh;->n(Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2
    iput v2, v1, Lsox;->b:I

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p3, Lskd;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4
    if-eqz p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5
    iput p2, p3, Lskd;->b:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ltkg;->m()Ltkb;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    iget-object p3, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p3, :cond_1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_9
    sget-object p2, Lskc;->x:Lskc;

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

    :goto_a
    check-cast p3, Lskd;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p3, p1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_d
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_f
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2}, Ltkb;->o()V

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p3, p2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p3}, Ltkg;->C()Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_14
    or-int/2addr v2, v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    iget p2, p2, Lskc;->aG:I

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

    :goto_16
    iput p2, p3, Lskd;->b:I

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    :goto_18
    check-cast p3, Lskd;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3e

    nop

    nop

    :goto_1a
    invoke-virtual {p3}, Ltkg;->C()Z

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1b
    iget v2, v1, Lsox;->b:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1c
    iget-object p3, p2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1d
    or-int/2addr p2, v0

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

    :goto_1e
    if-eqz p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p2, Lsox;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz p3, :cond_3

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

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput v0, v1, Lsox;->c:I

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

    :goto_24
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_25
    or-int/lit8 v0, v0, 0x2

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lcom/google/android/apps/camera/backup/CameraBackupAgent;->a:Lmjv;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p3, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p2}, Ltkg;->m()Ltkb;

    move-result-object p2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_2b
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p2}, Ltkb;->o()V

    :goto_2d
    goto/32 :goto_12

    nop

    nop

    :goto_2e
    or-int/2addr p2, v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object p1, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_4
    goto/32 :goto_0

    nop

    :goto_31
    move-object v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p3, p2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_33
    invoke-super {p0, p1, p2, p3}, Lowj;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p3}, Ltkg;->C()Z

    move-result p3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget p2, p3, Lskd;->b:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_36
    sget-object p2, Lsox;->a:Lsox;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_37
    invoke-direct {p0}, Lcom/google/android/apps/camera/backup/CameraBackupAgent;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_26

    nop

    nop

    :goto_38
    check-cast v1, Lsox;

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

    :goto_39
    invoke-virtual {p2}, Ltkb;->i()Ltkg;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3a
    iput v0, p3, Lsox;->d:I

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p3}, Ltkg;->C()Z

    move-result p3

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

    nop

    nop

    :goto_3c
    iget v0, p3, Lsox;->b:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast p3, Lsox;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_3e
    iput-object p2, p3, Lskd;->C:Lsox;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3f
    iput v0, p3, Lsox;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_40
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_41
    iget p2, p3, Lskd;->b:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p3, p1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop
.end method

.method public final onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 4

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    :goto_1
    iput p2, p3, Lskd;->b:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    check-cast p3, Lsox;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Ltkb;->o()V

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p3, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p3, p1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p3, p2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_8
    check-cast p2, Lsox;

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

    :goto_9
    iget-object p0, p0, Lcom/google/android/apps/camera/backup/CameraBackupAgent;->a:Lmjv;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget p2, p3, Lskd;->b:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_41

    nop

    nop

    :goto_d
    or-int/2addr p2, v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_18

    nop

    nop

    :goto_f
    if-eqz p3, :cond_1

    nop

    goto/32 :goto_2f

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Ltkg;->m()Ltkb;

    move-result-object p1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x2

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

    :goto_12
    iget p2, p3, Lskd;->b:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput v3, v1, Lsox;->b:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Lcom/google/android/apps/camera/backup/CameraBackupAgent;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-super {p0, p1, p2, p3}, Lowj;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p3, p1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_17
    iput p2, p3, Lskd;->f:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :goto_19
    goto/32 :goto_43

    nop

    nop

    :goto_1a
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p3}, Ltkg;->C()Z

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p3}, Ltkg;->C()Z

    move-result p3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput p2, p3, Lskd;->b:I

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1f
    iget-object p3, p2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_20
    iput v2, v1, Lsox;->c:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_21
    if-eqz p3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object p2, Lsox;->a:Lsox;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/high16 v0, 0x40000000    # 2.0f

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object v1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_25
    iput v0, p3, Lsox;->b:I

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

    nop

    :goto_26
    const v0, 0xc

    nop

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

    :goto_27
    sget-object p1, Lskd;->a:Lskd;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

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

    :goto_29
    iget v0, p3, Lsox;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2a
    iput v0, p3, Lsox;->d:I

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p3, Lskd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_2d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_2f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_30
    iget v3, v1, Lsox;->b:I

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x1d

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

    :goto_32
    if-eqz p3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p2}, Ltkb;->o()V

    :goto_34
    goto/32 :goto_1f

    nop

    nop

    :goto_35
    sget-object p2, Lskc;->x:Lskc;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_36
    check-cast v1, Lsox;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p3}, Ltkg;->C()Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast p3, Lskd;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_15

    nop

    nop

    :goto_3b
    invoke-virtual {p3}, Ltkg;->C()Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p2}, Ltkb;->i()Ltkg;

    move-result-object p2

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

    nop

    nop

    :goto_3d
    invoke-virtual {p2}, Ltkg;->m()Ltkb;

    move-result-object p2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    or-int/2addr v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    or-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p3, p1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_41
    iput-object p2, p3, Lskd;->C:Lsox;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_42
    iget p2, p2, Lskc;->aG:I

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_43
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_44
    or-int/2addr p2, v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p3, p2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop
.end method
