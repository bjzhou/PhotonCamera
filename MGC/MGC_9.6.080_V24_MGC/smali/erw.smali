.class public final Lerw;
.super Leha;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_c

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

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0, v1}, Leha;-><init>(II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0xf

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0xe

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1

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

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method


# virtual methods
.method public final a(Lehx;)V
    .locals 8

    goto/32 :goto_36

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_1
    check-cast p1, Leig;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v3}, Ldvz;->k(Leic;[Ljava/lang/Object;)V

    goto/32 :goto_32

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_48

    nop

    nop

    :goto_6
    move p0, v2

    nop

    nop

    :goto_7
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_9
    goto/16 :goto_3d

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    const-string v5, "WorkSpec SET "

    nop

    nop

    goto/32 :goto_49

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
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v6, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_10
    new-instance p0, Landroid/content/ContentValues;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    const-string p0, " WHERE last_enqueue_time = 0 AND interval_duration <> 0 "

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

    :goto_12
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_14
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_15
    const v1, 0xd

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_18
    sub-int v0, p0, v2

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1a
    goto/32 :goto_40

    nop

    nop

    :goto_1b
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v2

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1d
    const-string v5, "UPDATE "

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

    :goto_1e
    const-string v7, ""

    nop

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_27
    move v0, v7

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

    nop

    :goto_28
    const-string v0, "=?"

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string v1, "last_enqueue_time"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2a
    aput-object v0, v3, p0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2c
    aget-object v5, v5, v6

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v5, Leig;->a:[Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2f
    if-nez v6, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_31
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Lein;->a()V

    goto/32 :goto_c

    nop

    nop

    :goto_33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    :goto_34
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-string v7, ","

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_36
    const v0, 0x1a

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

    :goto_37
    add-int/lit8 p0, p0, 0x1

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

    :goto_38
    const-string p0, "INSERT INTO `_new_WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) SELECT `id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers` FROM `WorkSpec`"

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_58

    nop

    nop

    :goto_3a
    invoke-virtual {p1, p0}, Leig;->k(Ljava/lang/String;)Lein;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3b
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_3c
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_3e
    aput-object v6, v3, v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_41
    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

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

    :goto_42
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_45
    const-string p1, "Empty values"

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_46
    add-int/lit8 v7, v0, 0x1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_47
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4a
    const/4 v6, 0x3

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

    :goto_4b
    const-string p0, "ALTER TABLE `_new_WorkSpec` RENAME TO `WorkSpec`"

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4c
    rem-int v0, v0, v1

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

    :goto_4d
    const-string p0, "last_enqueue_time = 0 AND interval_duration <> 0 "

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_4e
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const-string p0, "DROP TABLE `WorkSpec`"

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    new-array v1, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

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

    :goto_52
    invoke-direct {p0, v0}, Landroid/content/ContentValues;-><init>(I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_53
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_54
    if-lt p0, v2, :cond_5

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_55
    aget-object v0, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_56
    new-array v3, v2, [Ljava/lang/Object;

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

    :goto_57
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

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

    nop

    :goto_58
    const-string p0, "UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0"

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const-string p0, "CREATE TABLE IF NOT EXISTS `_new_WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

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

    :goto_5c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop
.end method
