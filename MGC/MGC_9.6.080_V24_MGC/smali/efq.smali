.class public final Lefq;
.super Lehy;
.source "PG"


# instance fields
.field final synthetic a:Leew;


# direct methods
.method public constructor <init>(Leew;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lefq;->a:Leew;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p2}, Lehy;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lehx;)V
    .locals 7

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Leew;->b:Lefu;

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

    nop

    :goto_1
    check-cast p1, Ldxp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Ljava/lang/IllegalStateException;

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

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lfdn;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_2e

    nop

    :goto_9
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lefu;->a()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Leew;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Leew;->c(Lfdn;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v0}, Lefu;->g(Lfdn;)Lkjj;

    move-result-object p1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string p1, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_13
    iget-object p1, p0, Leew;->b:Lefu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    invoke-interface {p1}, Lehv;->h()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_16
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    :goto_19
    invoke-direct {v0, p1, v1}, Lfdn;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    :goto_1c
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    throw p0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    cmp-long v1, v3, v5

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_23
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_24
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lefq;->a:Leew;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_28
    const v0, 0x12

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_29
    invoke-interface {p1}, Lehv;->h()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p1, Lkjj;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1, v0}, Lefu;->c(Lfdn;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-boolean v1, p1, Lkjj;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2d
    throw p1

    nop

    nop

    :goto_2e
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2f
    iget-object p1, p0, Leew;->b:Lefu;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_30
    goto/32 :goto_18

    nop

    :goto_31
    const-string v0, "Pre-packaged database has an invalid schema: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, p1}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object p1

    nop

    nop

    :try_start_0
    invoke-interface {p1}, Lehv;->k()Z

    move-result v1

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    invoke-interface {p1, v2}, Lehv;->b(I)J

    move-result-wide v3

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_33
    if-eqz v2, :cond_5

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0x14

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final b(Lehx;II)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lefq;->d(Lehx;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lehx;)V
    .locals 10

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lefq;->a:Leew;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3
    const-wide/16 v8, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_6
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "Pre-packaged database has an invalid schema: "

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_9
    cmp-long v4, v6, v8

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v3}, Lehv;->h()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    iget-object v0, v6, Leew;->b:Lefu;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, v6, Leew;->c:Ljava/util/List;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    const-string v2, "END TRANSACTION"

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_12
    invoke-static {v0}, Lrgw;->aj(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_33

    nop

    nop

    :goto_14
    invoke-interface {v3}, Lehv;->h()V

    goto/32 :goto_43

    nop

    nop

    :goto_15
    new-instance v1, Lfdn;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    const-string p0, "ROLLBACK TRANSACTION"

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_18
    const-string v0, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v6, p0, Lefq;->a:Leew;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_1c
    iget-object v0, v6, Leew;->b:Lefu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move v4, v5

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_19

    nop

    nop

    :goto_1f
    invoke-static {v1, v2}, Ldvz;->m(Lfdn;Ljava/lang/String;)V

    :goto_20
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_22
    throw p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1, v3}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object v3

    nop

    nop

    :try_start_0
    invoke-interface {v3}, Lehv;->k()Z

    move-result v4

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v5}, Lehv;->b(I)J

    move-result-wide v6

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v0, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, v6, Leew;->b:Lefu;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_27
    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_28
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, v0, Lefu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2a
    invoke-interface {v0}, Lehv;->h()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    throw v0

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2c
    iput-object p1, p0, Leew;->d:Lehx;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_4
    :goto_2e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v1}, Lefu;->e(Lfdn;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v0}, Ltxx;->b(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_34
    const-string v0, ", found: "

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v0}, Lehv;->h()V

    goto/32 :goto_56

    nop

    nop

    :goto_37
    const-string v3, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name = \'room_master_table\'"

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

    :goto_38
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v3, v1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_3b
    iget-object v0, v0, Lefu;->b:Ljava/lang/String;

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

    :goto_3c
    goto/16 :goto_6

    nop

    :goto_3d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_51

    nop

    :goto_40
    check-cast v2, Ldxp;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_41
    invoke-static {v1, p0}, Ldvz;->m(Lfdn;Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v2, Ltyg;

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

    :goto_43
    throw p0

    nop

    nop

    :goto_44
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v0}, Ltxx;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

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

    :goto_46
    move-object v2, v0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, v0, Lefu;->c:Ljava/lang/String;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v2, v3}, Ldxp;->f(Lehx;)V

    goto/32 :goto_3c

    nop

    nop

    :goto_49
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {v1, v2}, Ldvz;->m(Lfdn;Ljava/lang/String;)V

    :try_start_1
    iget-object v2, v6, Leew;->b:Lefu;

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lefu;->g(Lfdn;)Lkjj;

    move-result-object v2

    nop

    nop

    nop

    iget-boolean v3, v2, Lkjj;->a:Z

    nop

    nop

    nop

    if-eqz v3, :cond_7

    nop

    nop

    iget-object v0, v6, Leew;->b:Lefu;

    nop

    invoke-virtual {v0}, Lefu;->b()V

    invoke-virtual {v6, v1}, Leew;->c(Lfdn;)V

    sget-object v0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/16 :goto_13

    nop

    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lkjj;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4b
    if-nez v4, :cond_8

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    :goto_4d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {v1, p1, v2}, Lfdn;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_37

    nop

    nop

    :goto_4f
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_44

    nop

    :goto_51
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_50

    nop

    :goto_53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5a

    nop

    nop

    :goto_54
    invoke-static {v0, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v1, v0}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object v0

    nop

    :try_start_2
    invoke-interface {v0}, Lehv;->k()Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_a

    nop

    nop

    nop

    invoke-interface {v0, v5}, Lehv;->d(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_56
    throw p0

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_58
    iget-object v0, v6, Leew;->b:Lefu;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

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

    :goto_5a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3a

    nop

    nop

    nop
.end method

.method public final d(Lehx;II)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Lefu;->d(Lfdn;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p2, p0, Leew;->b:Lefu;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p1, Lkjj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    const-string p1, "A migration from "

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p2, p3}, Ldvx;->h(Leex;II)Z

    move-result p1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p2, p3}, Ldvx;->j(Lfdn;II)Ljava/util/List;

    move-result-object p1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_6
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Leew;->b:Lefu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lefu;->b()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_b
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_e
    iget-object p0, p0, Lefq;->a:Leew;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Leew;->a:Leex;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Leew;->b:Lefu;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2, v0}, Leha;->b(Lfdn;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lfdn;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Leew;->c(Lfdn;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p1, Leex;->n:Lfdn;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_19
    iget-object p0, p0, Leew;->b:Lefu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_25

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    :goto_1e
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v0}, Lefu;->c(Lfdn;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_22
    check-cast p2, Ldxp;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_25
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_f

    nop

    nop

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1b

    nop

    nop

    :goto_2c
    iget-object p1, p0, Leew;->a:Leex;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2d
    const-string v1, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Leew;->b:Lefu;

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

    :goto_2f
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p1, p0, Leew;->c:Ljava/util/List;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_32
    invoke-direct {v0, p1, v1}, Lfdn;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v1, 0x0

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

    :goto_34
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

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

    :goto_36
    add-int v0, v0, v1

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

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_2

    nop

    nop

    :goto_39
    if-nez p2, :cond_2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    :goto_3a
    invoke-virtual {p1, v0}, Lefu;->g(Lfdn;)Lkjj;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3c
    const-string p2, "Migration didn\'t properly handle: "

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string v0, " to "

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p2, v0}, Lefu;->f(Lfdn;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-boolean p2, p1, Lkjj;->a:Z

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_41
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_4
    goto/32 :goto_2e

    nop

    nop

    :goto_42
    if-nez p2, :cond_5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_43
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_44
    check-cast p2, Leha;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_45
    invoke-static {p3, p2, p1, v0, v1}, La;->bq(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop
.end method
