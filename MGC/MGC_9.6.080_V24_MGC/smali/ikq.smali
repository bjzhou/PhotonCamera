.class public final synthetic Likq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpbz;


# instance fields
.field public final synthetic a:Likr;


# direct methods
.method public synthetic constructor <init>(Likr;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Likq;->a:Likr;

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
    return-void

    nop

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


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 12

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lltg;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Likr;->d:Lrss;

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

    :goto_3
    invoke-interface {p1}, Lpdf;->g()V

    :goto_4
    goto/32 :goto_4b

    nop

    nop

    :goto_5
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    :goto_6
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v2

    nop

    nop

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_49

    nop

    :catchall_2
    move-exception p0

    nop

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

    nop

    :goto_c
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Likr;->c:Lpdf;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Likr;->c:Lpdf;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_46

    nop

    nop

    :goto_11
    iget-object p1, p0, Likr;->c:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lpde;->close()V

    goto/32 :goto_29

    nop

    nop

    :goto_13
    const/16 v0, 0x644

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    invoke-interface {p1}, Lltg;->c()V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :goto_16
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    const-string v0, "gcam"

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

    :goto_18
    iget-object p1, p0, Likr;->e:Lrss;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, p1, Lrsx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Lltg;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p0, Likr;->c:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p1}, Lltg;->e()Z

    move-result p1

    nop

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

    :goto_1f
    if-nez p1, :cond_2

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    goto/32 :goto_b

    nop

    nop

    :goto_20
    const-string v0, "segmenter"

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_21
    check-cast p1, Lgit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Likr;->c:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_23
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_58

    nop

    nop

    nop

    :catchall_3
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Llks;->b()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_26
    check-cast p1, Llks;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_27
    const-string v0, "gcamdeps"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_c

    nop

    :goto_29
    iget-object p0, p0, Likr;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_4
    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto/32 :goto_52

    nop

    nop

    :goto_2b
    invoke-static {p1, v0}, Lcom/google/android/apps/camera/jni/mallopt/Mallopt;->setOptions(II)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p0, Likr;->b:Ltxm;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_2d
    const-string v0, "HdrPlusPrewarm"

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Likr;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2f
    iget-object p1, p0, Likr;->c:Lpdf;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {p1}, Lpdf;->g()V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v2, :cond_6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_6
    :try_start_4
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p1}, Lpdf;->g()V

    :goto_36
    goto/32 :goto_39

    nop

    nop

    :goto_37
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p1, p0, Likr;->c:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_3a
    if-nez p1, :cond_8

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_8
    :try_start_5
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_9
    :try_start_6
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast p1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3e
    const-string v0, "Failed to set mallopt options."

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3f
    sget-object v0, Lhmq;->T:Lhmn;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {p1, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_41
    new-instance v0, Lpde;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_42
    check-cast p1, Lrsx;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_43
    const-string v0, "rectiface"

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

    :goto_44
    const/16 p1, 0x100

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {p1, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {}, Liyl;->b()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto :goto_48

    nop

    nop

    :catchall_4
    move-exception p1

    nop

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_48
    throw p0

    nop
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_8
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    const-string v1, "Failed to initialize flare removal"

    nop

    nop

    nop

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Unable to open Flare Removal model asset file"

    nop

    nop

    nop

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :cond_a
    :goto_49
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {p1, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    :goto_4b
    iget-object p1, p0, Likr;->c:Lpdf;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-interface {p1}, Ltxm;->a()Ljava/lang/Object;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object p1, p0, Likr;->d:Lrss;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {p1, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object p1, Likr;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_50
    iget-object p0, p0, Likq;->a:Likr;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p1, p0, Likr;->c:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_52
    goto :goto_53

    nop

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_9
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_53
    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception p0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

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

    :goto_56
    if-nez p1, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_58
    goto/32 :goto_5e

    nop

    nop

    :goto_59
    const-string v1, "decepticon"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p1, p0, Likr;->h:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const/high16 v0, 0x2000000

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_5c
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v0

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

    nop

    nop

    :goto_5d
    invoke-interface {p1}, Lpdf;->g()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_37

    nop

    nop

    :goto_60
    invoke-direct {v0, p1, v1}, Lpde;-><init>(Lpdf;Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Likr;->h:Lhoh;

    nop

    sget-object v1, Lhmj;->a:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    if-eqz p1, :cond_a

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Likr;->h:Lhoh;

    nop

    nop

    nop

    sget-object v1, Lhmj;->b:Lhmn;

    nop

    invoke-virtual {p1, v1}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object p1

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Likr;->h:Lhoh;

    nop

    nop

    sget-object v2, Lhmj;->c:Lhmn;

    nop

    invoke-virtual {v1, v2}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Likr;->h:Lhoh;

    nop

    nop

    sget-object v3, Lhmj;->d:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :try_start_b
    iget-object v3, p0, Likr;->f:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    nop

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    iget-object v3, p0, Likr;->f:Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    iget-object v3, p0, Likr;->f:Landroid/content/Context;

    nop

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    sget-object v3, Litb;->a:Litb;

    nop

    nop

    invoke-virtual {v3}, Ltkg;->m()Ltkb;

    move-result-object v3

    nop

    nop

    nop

    nop

    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_c

    nop

    invoke-virtual {v3}, Ltkb;->o()V

    :cond_c
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Litb;

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    iput v5, v4, Litb;->c:I

    nop

    nop

    nop

    nop

    nop

    iget v6, v4, Litb;->b:I

    nop

    or-int/2addr v6, v5

    nop

    nop

    nop

    nop

    nop

    iput v6, v4, Litb;->b:I

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    nop

    nop

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    nop

    int-to-long v6, v4

    nop

    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    if-nez v4, :cond_d

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkb;->o()V

    :cond_d
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v4, Litb;

    nop

    iget v8, v4, Litb;->b:I

    nop

    nop

    nop

    nop

    const/4 v9, 0x2

    nop

    nop

    nop

    or-int/2addr v8, v9

    nop

    nop

    nop

    nop

    iput v8, v4, Litb;->b:I

    nop

    nop

    nop

    nop

    iput-wide v6, v4, Litb;->d:J

    nop

    nop

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_e

    nop

    invoke-virtual {v3}, Ltkb;->o()V

    :cond_e
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Litb;

    nop

    nop

    nop

    nop

    nop

    iget v8, v4, Litb;->b:I

    nop

    nop

    or-int/lit8 v8, v8, 0x4

    nop

    nop

    nop

    nop

    nop

    iput v8, v4, Litb;->b:I

    nop

    nop

    iput-wide v6, v4, Litb;->e:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_f

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkb;->o()V

    :cond_f
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v4, Litb;

    nop

    nop

    iget v8, v4, Litb;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v8, v8, 0x8

    nop

    nop

    nop

    iput v8, v4, Litb;->b:I

    nop

    nop

    iput-wide v6, v4, Litb;->f:J

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Litb;

    nop

    nop

    nop

    sget-object v4, Litb;->a:Litb;

    nop

    invoke-virtual {v4}, Ltkg;->m()Ltkb;

    move-result-object v4

    nop

    nop

    nop

    nop

    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    if-nez v6, :cond_10

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_10
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    check-cast v6, Litb;

    nop

    nop

    nop

    nop

    iput v9, v6, Litb;->c:I

    nop

    nop

    nop

    iget v7, v6, Litb;->b:I

    nop

    nop

    nop

    nop

    or-int/2addr v7, v5

    nop

    nop

    nop

    nop

    iput v7, v6, Litb;->b:I

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v6

    nop

    nop

    int-to-long v6, v6

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    if-nez v8, :cond_11

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_11
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v8, Litb;

    nop

    nop

    nop

    nop

    iget v10, v8, Litb;->b:I

    nop

    nop

    nop

    nop

    or-int/2addr v10, v9

    nop

    iput v10, v8, Litb;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-wide v6, v8, Litb;->d:J

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-nez v8, :cond_12

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_12
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Litb;

    nop

    iget v10, v8, Litb;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v10, v10, 0x4

    nop

    nop

    nop

    iput v10, v8, Litb;->b:I

    nop

    nop

    nop

    nop

    iput-wide v6, v8, Litb;->e:J

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    nop

    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    if-nez v8, :cond_13

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_13
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    check-cast v8, Litb;

    nop

    nop

    iget v10, v8, Litb;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v10, v10, 0x8

    nop

    nop

    iput v10, v8, Litb;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-wide v6, v8, Litb;->f:J

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Litb;

    nop

    nop

    nop

    sget-object v6, Litb;->a:Litb;

    nop

    nop

    invoke-virtual {v6}, Ltkg;->m()Ltkb;

    move-result-object v6

    nop

    nop

    nop

    nop

    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    if-nez v7, :cond_14

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_14
    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Litb;

    nop

    nop

    const/4 v8, 0x3

    nop

    nop

    nop

    nop

    iput v8, v7, Litb;->c:I

    nop

    nop

    nop

    iget v8, v7, Litb;->b:I

    nop

    nop

    nop

    or-int/2addr v8, v5

    nop

    iput v8, v7, Litb;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    nop

    nop

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v7

    nop

    nop

    nop

    int-to-long v7, v7

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v6, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    if-nez v10, :cond_15

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_15
    iget-object v10, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v10, Litb;

    nop

    iget v11, v10, Litb;->b:I

    nop

    or-int/2addr v9, v11

    nop

    nop

    iput v9, v10, Litb;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-wide v7, v10, Litb;->d:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v7

    nop

    nop

    iget-object v9, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    if-nez v9, :cond_16

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_16
    iget-object v9, v6, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v9, Litb;

    nop

    nop

    nop

    iget v10, v9, Litb;->b:I

    nop

    nop

    nop

    or-int/lit8 v10, v10, 0x4

    nop

    nop

    nop

    iput v10, v9, Litb;->b:I

    nop

    nop

    nop

    iput-wide v7, v9, Litb;->e:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    nop

    iget-object v9, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    nop

    nop

    if-nez v9, :cond_17

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_17
    iget-object v9, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v9, Litb;

    nop

    iget v10, v9, Litb;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v10, v10, 0x8

    nop

    nop

    nop

    nop

    nop

    iput v10, v9, Litb;->b:I

    nop

    nop

    nop

    iput-wide v7, v9, Litb;->f:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Litb;

    nop

    sget-object v7, Lisy;->a:Lisy;

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkg;->m()Ltkb;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v7, v3}, Ltkb;->w(Litb;)V

    invoke-virtual {v7, v4}, Ltkb;->w(Litb;)V

    invoke-virtual {v7, v6}, Ltkb;->w(Litb;)V

    sget-object v3, Lttu;->a:Lttu;

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->m()Ltkb;

    move-result-object v3

    nop

    nop

    nop

    nop

    sget-object v4, Lttv;->a:Lttv;

    nop

    invoke-virtual {v4}, Ltkg;->m()Ltkb;

    move-result-object v4

    nop

    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_18

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_18
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    check-cast v6, Lttv;

    nop

    nop

    nop

    iget v8, v6, Lttv;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v8, v8, 0x20

    nop

    nop

    nop

    iput v8, v6, Lttv;->b:I

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    iput-boolean v8, v6, Lttv;->c:Z

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lttv;

    nop

    nop

    iget-object v6, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    if-nez v6, :cond_19

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkb;->o()V

    :cond_19
    iget-object v6, v3, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v6, Lttu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v6, Lttu;->c:Lttv;

    nop

    nop

    iget v4, v6, Lttu;->b:I

    nop

    nop

    nop

    or-int/2addr v4, v5

    nop

    nop

    nop

    nop

    iput v4, v6, Lttu;->b:I

    nop

    nop

    nop

    iget-object v4, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    if-nez v4, :cond_1a

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_1a
    iget-object v4, v7, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v4, Lisy;

    nop

    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    check-cast v3, Lttu;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Lisy;->d:Lttu;

    nop

    nop

    nop

    nop

    iget v3, v4, Lisy;->b:I

    nop

    or-int/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    iput v3, v4, Lisy;->b:I

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    check-cast v3, Lisy;

    nop

    nop

    iget-object v4, p0, Likr;->g:Lcom/google/android/apps/camera/hdrplus/postprocessing/flareremoval/jni/NativeFlareRemoval;

    nop

    nop

    invoke-virtual {v4, v3}, Lcom/google/android/apps/camera/hdrplus/postprocessing/flareremoval/jni/NativeFlareRemoval;->b(Lisy;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_61
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_7
    move-exception p0

    nop

    nop

    :try_start_f
    invoke-virtual {v0}, Lpde;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop
.end method
