.class public final synthetic Lmaq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

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
    iput-object p1, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lmaq;->b:I

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


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lmav;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_7c

    nop

    nop

    :goto_3
    iget-object p0, v0, Lmav;->n:Lmba;

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_4
    const/16 v2, 0x105e

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4a

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lqme;->i()V

    goto/32 :goto_119

    nop

    nop

    :goto_8
    iput-wide v1, v0, Lmav;->u:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

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

    :goto_a
    int-to-long v7, p0

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_b
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v1, v2, v3, p0}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_125

    nop

    nop

    :goto_d
    check-cast p0, Lpjg;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_e
    check-cast v0, Lsui;

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

    :goto_f
    goto/16 :goto_f6

    nop

    :catch_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p0, Lpbe;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_11
    check-cast p0, Lpbe;

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, Lpbp;

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

    nop

    :goto_13
    invoke-virtual {p0, v7}, Lsuu;->e(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lmly;->b:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "Apex asset file not found: %s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    check-cast v2, Lfsr;

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_f6

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Lqme;

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_1d
    invoke-static {v3, v0, v4, v2, p0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p0, Lpjg;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_20
    iget-object v2, v1, Lpbp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_33

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_22
    invoke-interface {v2, v3, p0, v1}, Lscz;->w(Ljava/lang/String;II)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_24
    invoke-virtual {v2, v0}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v3}, Lmai;->a()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_26
    sget-object p0, Lmav;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v1, 0x5

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lram;->a:Landroid/net/Uri;

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, v0, v1}, Lmba;->b(II)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_2a
    int-to-double v5, v2

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_f6

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_23

    nop

    nop

    :goto_2e
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v2, Lfsr;

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_30
    cmp-long p0, v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    :goto_31
    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    :cond_2
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object p0, Lqye;->f:Lqye;

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p0}, Lsui;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_35
    check-cast p0, Landroid/content/Context;

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v2, v1, Lmta;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    :cond_3
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_12f

    nop

    nop

    :cond_4
    const-string v3, "is_trashed"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    nop

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_2d

    nop

    nop

    :goto_39
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/16 v2, 0x1310

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_3b
    const/16 v2, 0x1061

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_3c
    sget-object v2, Lmta;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v2, Lmav;->a:Lsdb;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, v0, v1}, Lmba;->b(II)V

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_3f
    check-cast p0, Landroid/content/BroadcastReceiver$PendingResult;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_41
    return-object p0

    nop

    nop

    :pswitch_1
    goto/32 :goto_139

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v0, Lpwv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_44
    check-cast v0, Lmav;

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v0}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v3}, Lmai;->c()J

    move-result-wide v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move-object v0, p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast p0, Lram;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v0}, Lpaf;->l()V

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_4c
    sget v0, Lqzc;->a:I

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_4d
    if-nez p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_5
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_4e
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_4f
    iget v2, p0, Lmaq;->b:I

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_80

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_52
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_53
    invoke-static {p0}, Ldtk;->c(Landroid/content/Context;)[Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_54
    check-cast p0, Lmly;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_56
    if-eq v3, v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_6
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_d3

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_141

    nop

    nop

    nop

    :goto_59
    sget-object v1, Lpwv;->b:Lpwv;

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_5a
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_5c
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    sget-object v1, Lmav;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5e
    iget-object v3, v1, Lmta;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_5f
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_60
    const/16 v4, 0x124c

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-eqz p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    :cond_7
    :try_start_3
    sget-object v0, Lncn;->a:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    const/16 v1, 0x1312

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Empty Mars status -- Photos may be disabled."

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    sget-object p0, Lqye;->a:Lqye;

    nop

    nop

    goto/16 :goto_33

    nop

    nop

    nop

    nop

    :goto_62
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "version"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    nop

    nop

    const-string v2, "state"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    nop

    nop

    nop

    nop

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    nop

    nop

    nop

    nop

    if-lez v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lqye;->values()[Lqye;

    move-result-object v0

    nop

    nop

    nop

    nop

    array-length v0, v0

    nop

    nop

    nop

    if-gt v0, v2, :cond_8

    nop

    nop

    sget-object v0, Lncn;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x1311

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    const-string v1, "Received unknown Mars status: %d"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Lscz;->t(Ljava/lang/String;I)V

    sget-object v0, Lqye;->a:Lqye;

    nop

    nop

    nop

    goto :goto_63

    nop

    :cond_8
    invoke-static {}, Lqye;->values()[Lqye;

    move-result-object v0

    nop

    nop

    nop

    nop

    aget-object v0, v0, v2

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :goto_63
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p0, v5}, Ldqo;->c(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    throw p0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object p0, p0, Lmly;->b:Lpdf;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto/32 :goto_120

    nop

    nop

    :goto_6a
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object p0, p0, Lpjg;->a:Lsui;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/16 :goto_f6

    nop

    nop

    :goto_6d
    goto/32 :goto_101

    nop

    nop

    nop

    :goto_6e
    iget-object v0, p0, Lpbe;->k:Lpap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_6f
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_73
    const-string v1, "Unable to read apex metadata: %s"

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object p0, p0, Lpbe;->h:Lppp;

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_75
    goto :goto_80

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const/16 v7, 0x1048

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_77
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_78
    return-object p0

    nop

    :pswitch_3
    goto/32 :goto_f4

    nop

    nop

    :goto_79
    return-object p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    check-cast p0, Lpbe;

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_7c
    goto :goto_7d

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    :try_start_6
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7d
    throw v0

    nop
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception p0

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_7e
    const/4 v7, 0x0

    nop

    packed-switch v2, :pswitch_data_0

    goto/32 :goto_142

    nop

    nop

    nop

    :goto_7f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_80
    goto/32 :goto_84

    nop

    nop

    :goto_81
    move-object p0, v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    double-to-int v4, v5

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-eqz v7, :cond_b

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_db

    nop

    nop

    nop

    :goto_85
    const-string v0, "PAUSED is expected but we get "

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    check-cast v3, Lmai;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    new-instance v2, Lfsr;

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    sget-object v2, Lmav;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_8a
    check-cast p0, Lpgi;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8b
    const-string v1, "Failed to query Mars status."

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object p0, p0, Lpjg;->a:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_8d
    iget-object v0, v0, Lpbp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_8e
    mul-double/2addr v3, v8

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    if-eqz v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_45

    nop

    nop

    :goto_90
    check-cast p0, Lmly;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_91
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_92
    move-object v7, p0

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

    :goto_93
    goto/16 :goto_f6

    nop

    :goto_94
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_95
    monitor-enter v0

    nop

    :try_start_7
    move-object v2, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lpbp;

    nop

    nop

    nop

    nop

    nop

    iget v2, v2, Lpbp;->c:I

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    if-eq v2, v4, :cond_d

    nop

    nop

    nop

    const-string p0, "VidRecMedRec"

    nop

    nop

    invoke-static {v2}, Lolx;->aM(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    nop

    nop

    goto :goto_96

    nop

    nop

    :cond_d
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lpbp;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lpbp;->b:Lpbj;

    nop

    nop

    nop

    invoke-interface {v1}, Lpbj;->c()V

    check-cast p0, Lpbp;

    nop

    nop

    iput v3, p0, Lpbp;->c:I

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    :goto_96
    return-object v7

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    return-object v7

    nop

    nop

    :pswitch_5
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    if-nez v0, :cond_e

    nop

    goto/32 :goto_b8

    nop

    nop

    :cond_e
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    const/16 v3, 0x105d

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_9b
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_9c
    iget-object v1, v0, Lmav;->c:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_9d
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_9e
    sget-object v0, Llyr;->aS:Llzh;

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_9f
    invoke-direct {v2}, Lfsr;-><init>()V

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_a0
    if-lt p0, v1, :cond_f

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_a1
    iget-object p0, p0, Lpbe;->j:Lpbd;

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_a3
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-interface {p0, v1, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_a6
    check-cast p0, Lpgi;

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_a7
    if-ne v0, v1, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    return-object v7

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-interface {v0, v1, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_aa
    sget-object v0, Lqye;->a:Lqye;

    nop

    nop

    nop

    nop

    :try_start_8
    check-cast p0, Landroid/content/Context;

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    nop

    nop

    nop

    sget-object v2, Lqyf;->a:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v3}, Lmai;->c()J

    move-result-wide v1

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    check-cast p0, Lpgi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_ad
    if-nez v0, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_af
    check-cast v1, Lmta;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_b0
    const/4 v0, -0x3

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    :goto_b1
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-static {v1}, Lmbe;->b(Landroid/content/Context;)J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_b3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_122

    nop

    nop

    nop

    :goto_b4
    invoke-interface {p0}, Lsui;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    const-string v2, "Sideline is not compatible with OS build: %s. Required: %s"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b6
    int-to-double v3, v3

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    nop

    :goto_b8
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_ba
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_bc
    invoke-virtual {v0, p0}, Lgtu;->b(Landroid/media/AudioRouting;)V

    :goto_bd
    goto/32 :goto_98

    nop

    nop

    :goto_be
    const-wide/16 v7, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    goto/16 :goto_2d

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_c0
    return-object v5

    nop

    :pswitch_8
    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_c1
    invoke-static {v5, p0, v7, v2, v1}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_127

    nop

    nop

    :goto_c2
    const-string v3, "Failed to generate thumbnail bitmap from %s"

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    move v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_c4
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_c5
    sget-object v0, Lncn;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

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

    nop

    :goto_c7
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_ca
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_cb
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_cc
    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    const/4 v0, -0x2

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

    :goto_ce
    invoke-virtual {v0}, Lpap;->f()V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_d0
    iget-object v0, p0, Lpbe;->l:Lgtu;

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_d1
    goto/16 :goto_128

    nop

    nop

    nop

    :catch_4
    move-exception v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_d2
    if-nez v2, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :cond_12
    :goto_d3
    goto/32 :goto_7f

    nop

    nop

    :goto_d4
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    const/16 v1, 0x1062

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_d6
    iget-object p0, p0, Lmam;->a:Ldqo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

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

    :goto_d8
    iget-object v2, v1, Lmta;->d:Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v2}, Lfsj;->q()Lfsj;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_da
    const-wide v8, 0x3fe6666666666666L    # 0.7

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v1}, Lmta;->a()V

    :goto_dc
    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_dd
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    :goto_de
    if-eqz v1, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_df
    return-object p0

    nop

    nop

    :pswitch_a
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    return-object p0

    nop

    :pswitch_b
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_e2
    check-cast v2, Lscz;

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    return-object p0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_e
        :pswitch_c
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_11
        :pswitch_2
        :pswitch_12
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_13
        :pswitch_f
        :pswitch_10
        :pswitch_4
        :pswitch_b
        :pswitch_d
    .end packed-switch

    :goto_e4
    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {p0}, Lqme;->i()V

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    return-object v7

    nop

    nop

    :pswitch_c
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    :try_start_9
    move-object v0, p0

    nop

    check-cast v0, Lmly;

    nop

    nop

    iget-object v0, v0, Lmly;->b:Lpdf;

    nop

    const-string v1, "checkSpace"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    const-string v1, "mounted"

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_14

    nop

    nop

    nop

    nop

    sget-object v1, Lmly;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    const/16 v2, 0x1186

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    const-string v2, "the current state of the primary shared/external storage media: %s"

    nop

    nop

    invoke-interface {v1, v2, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lmlx;->a:Lmlx;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_e8

    nop

    nop

    nop

    :cond_14
    move-object v0, p0

    nop

    nop

    nop

    check-cast v0, Lmly;

    nop

    nop

    iget-object v0, v0, Lmly;->d:Lmle;

    nop

    invoke-virtual {v0}, Lmle;->a()Ljava/io/File;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_15

    nop

    move-object v0, p0

    nop

    nop

    check-cast v0, Lmly;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lmly;->d:Lmle;

    nop

    nop

    nop

    invoke-virtual {v0}, Lmle;->a()Ljava/io/File;

    move-object v0, p0

    nop

    nop

    nop

    nop

    check-cast v0, Lmly;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lmly;->d:Lmle;

    nop

    nop

    nop

    invoke-virtual {v0}, Lmle;->a()Ljava/io/File;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_15

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    check-cast v0, Lmly;

    nop

    nop

    iget-object v0, v0, Lmly;->d:Lmle;

    nop

    nop

    nop

    invoke-virtual {v0}, Lmle;->a()Ljava/io/File;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_15

    nop

    nop

    sget-object v0, Lmly;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v1, 0x1185

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v1, "failed to create the media folder: %s"

    nop

    move-object v2, p0

    nop

    nop

    check-cast v2, Lmly;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lmly;->d:Lmle;

    nop

    nop

    invoke-virtual {v2}, Lmle;->a()Ljava/io/File;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lmlx;->a:Lmlx;

    nop

    nop

    nop

    goto/16 :goto_e8

    nop

    :cond_15
    move-object v0, p0

    nop

    nop

    nop

    check-cast v0, Lmly;

    nop

    iget-object v0, v0, Lmly;->d:Lmle;

    nop

    invoke-virtual {v0}, Lmle;->a()Ljava/io/File;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    nop

    if-nez v0, :cond_16

    nop

    sget-object v0, Lmly;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v1, 0x1183

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v1, "the media folder is not a folder: %s"

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    check-cast v2, Lmly;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lmly;->d:Lmle;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lmle;->a()Ljava/io/File;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lmlx;->a:Lmlx;

    nop

    nop

    nop

    goto/16 :goto_e8

    nop

    nop

    nop

    nop

    :cond_16
    new-instance v0, Landroid/os/StatFs;

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lmly;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lmly;->d:Lmle;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lmle;->b()Ljava/lang/String;

    move-result-object v1

    nop

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    check-cast v1, Lmly;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lmly;->e:Lhoh;

    nop

    nop

    nop

    sget-object v2, Lhmq;->x:Lhmo;

    nop

    invoke-virtual {v1, v2}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_17

    nop

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    check-cast v0, Lmly;

    nop

    nop

    iget-object v0, v0, Lmly;->e:Lhoh;

    nop

    nop

    nop

    sget-object v1, Lhmq;->x:Lhmo;

    nop

    nop

    invoke-virtual {v0, v1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    int-to-long v0, v0

    nop

    move-object v2, p0

    nop

    nop

    nop

    nop

    check-cast v2, Lmly;

    nop

    iget-wide v7, v2, Lmly;->c:J

    nop

    nop

    nop

    new-instance v11, Lmlx;

    nop

    nop

    const-wide/32 v2, 0x100000

    nop

    nop

    nop

    nop

    mul-long v3, v0, v2

    nop

    nop

    nop

    nop

    const-wide/32 v9, 0x3200000

    nop

    move-object v2, v11

    nop

    nop

    invoke-direct/range {v2 .. v10}, Lmlx;-><init>(JJJJ)V

    move-object v0, v11

    nop

    goto :goto_e8

    nop

    nop

    nop

    nop

    :cond_17
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    nop

    nop

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    nop

    nop

    nop

    mul-long/2addr v3, v1

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lmly;

    nop

    nop

    nop

    nop

    nop

    iget-wide v7, v0, Lmly;->c:J

    nop

    new-instance v0, Lmlx;

    nop

    const-wide/32 v9, 0x3200000

    nop

    nop

    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v2 .. v10}, Lmlx;-><init>(JJJJ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :goto_e8
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_e9
    goto/16 :goto_cc

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_ea
    iput-wide v7, p0, Lmba;->c:J

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_eb
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    iget-object p0, v0, Lmav;->n:Lmba;

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_ed
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    check-cast v0, Lpaf;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_ef
    monitor-enter v2

    nop

    nop

    nop

    nop

    nop

    :try_start_a
    move-object v1, p0

    nop

    nop

    nop

    check-cast v1, Lpbp;

    nop

    iget v1, v1, Lpbp;->c:I

    nop

    if-eq v1, v3, :cond_18

    nop

    nop

    nop

    const-string p0, "VidRecMedRec"

    nop

    invoke-static {v1}, Lolx;->aM(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    nop

    nop

    nop

    nop

    goto :goto_f0

    nop

    nop

    nop

    nop

    nop

    :cond_18
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lpbp;

    nop

    nop

    iput v3, v0, Lpbp;->c:I

    nop

    check-cast p0, Lpbp;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lpbp;->b:Lpbj;

    nop

    nop

    nop

    invoke-interface {p0}, Lpbj;->g()V

    monitor-exit v2

    nop

    nop

    nop

    nop

    :goto_f0
    return-object v7

    nop

    :catchall_6
    move-exception p0

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_f2
    const v1, 0x11

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_f3
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

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

    :goto_f4
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_f5
    if-eqz v3, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_19
    :goto_f6
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    iput-wide v1, v3, Lmba;->b:J

    nop

    nop

    nop

    nop

    nop

    :try_start_b
    move-object v3, p0

    nop

    nop

    nop

    nop

    check-cast v3, Lmav;

    nop

    iget-object v3, v3, Lmav;->c:Landroid/content/Context;

    nop

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    nop

    nop

    nop

    move-object v5, p0

    nop

    nop

    check-cast v5, Lmav;

    nop

    nop

    nop

    iget-object v5, v5, Lmav;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    nop

    nop

    nop

    if-eqz v3, :cond_1a

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :cond_1a
    :try_start_c
    move-object v3, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lmav;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lmav;->c:Landroid/content/Context;

    nop

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    nop

    nop

    nop

    check-cast p0, Lmav;

    nop

    nop

    nop

    iget-object p0, p0, Lmav;->f:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v3, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    nop

    nop

    nop
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5

    :try_start_d
    new-instance v3, Ltdj;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Ltdj;-><init>()V

    new-instance v5, Lmah;

    nop

    nop

    nop

    invoke-direct {v5, v3}, Lmah;-><init>(Ltdj;)V

    new-instance v3, Ljava/io/InputStreamReader;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v7, Lthn;

    nop

    nop

    invoke-direct {v7, v3}, Lthn;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v5, v7}, Ltdx;->a(Lthn;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    :goto_f9
    goto/32 :goto_133

    nop

    nop

    nop

    :goto_fa
    check-cast v1, Lpbp;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_fb
    iget-object v3, v0, Lmav;->n:Lmba;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-interface {p0}, Lsui;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_fe
    const-string v5, "VERSION.INCREMENTAL is not an integer (%s). Return -1."

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    if-lez p0, :cond_1b

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    mul-double/2addr v5, v8

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v3}, Lmai;->d()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    :goto_102
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_117

    nop

    nop

    :goto_103
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_104
    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_105
    invoke-virtual {v2}, Lfsj;->J()Lfsj;

    move-result-object v2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_106
    invoke-virtual {v2, v3, v4}, Lfsj;->u(II)Lfsj;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_107
    double-to-int v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_108
    const-string v3, "Current OS version (%d) is smaller than minimum OS version required (%d). Skipping."

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

    nop

    :goto_109
    iget-object p0, p0, Lpbe;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_10a
    const/16 v1, 0x1060

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_10b
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_10c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_10e
    sget-object v1, Lpwv;->a:Lpwv;

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_10f
    check-cast p0, Lmam;

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    const v0, 0xd

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_111
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_112
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_113
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {p0}, Lpbd;->i()V

    :goto_115
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_116
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_7
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_117
    throw v0

    nop

    :pswitch_e
    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_118
    const/4 v1, 0x6

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_119
    return-object v7

    nop

    :pswitch_f
    goto/32 :goto_103

    nop

    nop

    nop

    :goto_11a
    const-string v1, "Exception when reading apex metadata"

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-virtual {v3}, Lmai;->b()I

    move-result v1

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_11d
    sget-object v0, Lmav;->a:Lsdb;

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_11e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_11f
    invoke-virtual {v3, v0, v2, v7, v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_120
    return-object v7

    nop

    :pswitch_10
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    if-nez p0, :cond_1c

    nop

    nop

    goto/32 :goto_115

    nop

    :cond_1c
    goto/32 :goto_114

    nop

    nop

    nop

    :goto_122
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_123
    check-cast p0, Lqme;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_124
    move-object v1, p0

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    iget-object p0, v0, Lmav;->n:Lmba;

    nop

    nop

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

    :goto_126
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_127
    const/4 p0, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_128
    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_129
    if-lez v0, :cond_1d

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

    :cond_1d
    goto/32 :goto_a2

    nop

    :goto_12a
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_12b
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_12c
    const-string v2, "is_trashed"

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    check-cast p0, Lpap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_12e
    throw p0

    nop

    :goto_12f
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_130
    iget-object p0, p0, Lpap;->E:Lsuu;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_131
    if-nez p0, :cond_1e

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    :cond_1e
    :try_start_e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto/32 :goto_137

    nop

    nop

    :goto_132
    cmp-long v3, v1, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_133
    return-object v7

    nop

    :pswitch_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_134
    sget-object v0, Lmav;->a:Lsdb;

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_135
    if-ne v0, v1, :cond_1f

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_59

    nop

    nop

    :goto_136
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_137
    goto :goto_138

    nop

    :catchall_8
    move-exception p0

    nop

    nop

    :try_start_f
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_138
    throw v0

    nop

    nop
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_5

    :catch_5
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_139
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_13a
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    cmp-long p0, v7, v1

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_13c
    check-cast v1, Lscz;

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_13d
    sget-object p0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    nop

    nop

    :try_start_10
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    nop
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_4

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    invoke-virtual {p0, v0}, Lhdn;->B(Landroid/net/Uri;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    iget-object p0, p0, Lram;->f:Lhdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_140
    throw p0

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_141
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_142
    iget-object p0, p0, Lmaq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_143
    goto/32 :goto_a3

    nop

    :goto_144
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

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

    :goto_145
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_146
    const/4 v3, 0x4

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_147
    return-object v7

    nop

    :pswitch_13
    goto/32 :goto_113

    nop

    nop

    :goto_148
    check-cast v2, Lfsr;

    nop

    nop

    nop

    :try_start_11
    check-cast p0, Lmta;

    nop

    nop

    nop

    iget-object p0, p0, Lmta;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lfia;->c(Landroid/content/Context;)Lfio;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lfio;->b()Lfim;

    move-result-object p0

    nop

    nop

    nop

    invoke-virtual {p0, v2}, Lfim;->b(Lfsj;)Lfim;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lfim;->e(Landroid/net/Uri;)Lfim;

    move-result-object p0

    nop

    nop

    invoke-virtual {p0}, Lfim;->k()Lfsp;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lfsp;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop
    :try_end_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_2

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    if-nez p0, :cond_20

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_20
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    const-string v1, "STARTED is expected but we get "

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop
.end method
