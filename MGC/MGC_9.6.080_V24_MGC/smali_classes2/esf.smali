.class public final Lesf;
.super Leha;
.source "PG"


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v1}, Leha;-><init>(II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0x9

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v1, 0xa

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lesf;->c:Landroid/content/Context;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x16

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lehx;)V
    .locals 10

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v3, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/qcMkh;->WwPlGmH:Ljava/lang/String;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Lehx;->f()V

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    throw p0

    nop

    :goto_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_8
    const-string v4, "last_cancel_all_time_ms"

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

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "androidx.work.util.preferences"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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
    iget-object p0, p0, Lesf;->c:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    :goto_f
    goto/32 :goto_1f

    nop

    nop

    :goto_10
    const v0, 0xd

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

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    const-string v1, "reschedule_needed"

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
    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x16

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_29

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    :goto_1a
    throw p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne v3, v9, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    :goto_1c
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

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

    :goto_1d
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v0, "androidx.work.util.id"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1f
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_20
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v3, 0x0

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

    :goto_22
    const-wide/16 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p1}, Lehx;->d()V

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    nop

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v3}, Lehx;->l([Ljava/lang/Object;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    invoke-interface {p1, v1}, Lehx;->l([Ljava/lang/Object;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p1}, Lehx;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p1}, Lehx;->d()V

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lehx;->l([Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    invoke-interface {p1, v0}, Lehx;->l([Ljava/lang/Object;)V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    nop

    nop

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    nop

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p1}, Lehx;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lesf;->c:Landroid/content/Context;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2d
    invoke-interface {p1}, Lehx;->f()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p1}, Lehx;->f()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_32
    const-string v0, "next_job_scheduler_id"

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_35
    const/4 v3, 0x1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_36
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {p1, v0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p1}, Lehx;->f()V

    goto/32 :goto_31

    nop

    nop

    nop
.end method
