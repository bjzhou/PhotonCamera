.class public final Loei;
.super Lodj;
.source "PG"


# static fields
.field public static a:Loei;


# direct methods
.method public constructor <init>(Lodm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lodj;-><init>(Lodm;)V

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

    nop

    nop
.end method

.method protected static final C(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    instance-of v0, p0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    :goto_5
    instance-of v0, p0, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_7
    int-to-double v3, p0

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_8
    instance-of v0, p0, Ljava/lang/Throwable;

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_9
    check-cast p0, Ljava/lang/Integer;

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

    nop

    :goto_a
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xf

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    instance-of v0, p0, Ljava/lang/Integer;

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_13
    cmp-long v2, v2, v4

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_17
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_4f

    nop

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1d
    int-to-double v0, p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    :goto_21
    goto/32 :goto_2e

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object v0, p0

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v1, ""

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-wide/16 v4, 0x64

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    :goto_2b
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_2c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-object v1

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string p0, "..."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_32
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-object p0

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_8

    nop

    nop

    :goto_36
    int-to-long v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_37
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_38
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_39
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/16 v3, 0x2d

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_3
    goto/32 :goto_c

    nop

    :goto_3c
    if-eq p0, v3, :cond_4

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3d
    add-int/lit8 p0, p0, -0x1

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

    :goto_3e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v1, 0x19

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_40
    const-string v1, "-"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_41
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_42
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-ltz v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_45
    check-cast v0, Ljava/lang/Long;

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_46
    if-nez v0, :cond_6

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_48
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4a
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

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

    :goto_4c
    if-nez v0, :cond_7

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_4d
    add-double/2addr v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-class v0, Loei;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    sput-object p0, Loei;->a:Loei;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Loef;Ljava/lang/String;)V
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
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

    :goto_2
    goto :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    :goto_7
    aput-object p1, v1, v3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    aput-object p2, v1, v3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    const-string p1, "no hit data"

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    invoke-static {v3, p0, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_18

    nop

    :goto_10
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    invoke-static {v3, p1, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    const v1, 0x16

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    const/4 v3, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "Discarding hit. "

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

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v3, 0x79

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v3, 0x7a

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

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop
.end method

.method public final declared-synchronized c(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_0
    invoke-virtual {p0}, Lodi;->g()Lody;

    move-result-object v1

    nop

    nop

    iget-object v2, v1, Lody;->b:Ljava/lang/Boolean;

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    const/4 v4, 0x0

    nop

    if-nez v2, :cond_5

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, v1, Lody;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lody;->a:Lodm;

    nop

    iget-object v2, v2, Lodm;->a:Landroid/content/Context;

    nop

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    nop

    nop

    nop

    invoke-static {}, Lolw;->a()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    move v2, v3

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    :cond_0
    move v2, v4

    nop

    nop

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    nop

    iput-object v2, v1, Lody;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v2, v1, Lody;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    iget-object v2, v1, Lody;->b:Ljava/lang/Boolean;

    nop

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    :cond_2
    const-string v2, "com.google.android.gms.analytics"

    nop

    nop

    nop

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    nop

    nop

    iput-object v2, v1, Lody;->b:Ljava/lang/Boolean;

    nop

    :cond_3
    iget-object v2, v1, Lody;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    if-nez v2, :cond_4

    nop

    nop

    nop

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    nop

    nop

    nop

    iput-object v2, v1, Lody;->b:Ljava/lang/Boolean;

    nop

    iget-object v2, v1, Lody;->a:Lodm;

    nop

    invoke-virtual {v2}, Lodm;->d()Loei;

    move-result-object v2

    nop

    nop

    nop

    nop

    const-string v5, "My process not in the list of running processes"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v5}, Lodi;->n(Ljava/lang/String;)V

    :cond_4
    monitor-exit v1

    nop

    goto :goto_3

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    nop

    nop

    nop

    :cond_5
    :goto_3
    iget-object v1, v1, Lody;->b:Ljava/lang/Boolean;

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v1, :cond_6

    nop

    nop

    const/16 v1, 0x63

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_6
    const/16 v1, 0x43

    nop

    :goto_4
    const-string v2, "01VDIWEA?"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    nop

    nop

    nop

    nop

    sget-object v2, Lodk;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {p3}, Loei;->C(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    invoke-static {p4}, Loei;->C(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    nop

    nop

    nop

    invoke-static {p5}, Loei;->C(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    nop

    nop

    nop

    nop

    invoke-static {p2, p3, p4, p5}, Loei;->l(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    new-instance p3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    nop

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    nop

    const/16 p3, 0x400

    nop

    nop

    if-le p2, p3, :cond_7

    nop

    invoke-virtual {p1, v4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :cond_7
    iget-object p2, p0, Lodi;->b:Lodm;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lodm;->f:Loem;

    nop

    nop

    nop

    nop

    nop

    const/4 p3, 0x0

    nop

    if-eqz p2, :cond_8

    nop

    nop

    nop

    invoke-virtual {p2}, Lodj;->B()Z

    move-result p4

    nop

    nop

    nop

    nop

    nop

    if-nez p4, :cond_9

    nop

    :cond_8
    move-object p2, p3

    nop

    nop

    nop

    :cond_9
    if-eqz p2, :cond_f

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p2, Loem;->d:Loel;

    nop

    nop

    nop

    iget-object p3, p2, Loel;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast p3, Loem;

    nop

    iget-object p3, p3, Loem;->a:Landroid/content/SharedPreferences;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Loel;->b()Ljava/lang/String;

    move-result-object p4

    nop

    nop

    nop

    const-wide/16 v0, 0x0

    nop

    invoke-interface {p3, p4, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p3

    nop

    nop

    nop

    nop

    nop

    cmp-long p3, p3, v0

    nop

    nop

    if-nez p3, :cond_a

    nop

    nop

    nop

    iget-object p3, p2, Loel;->b:Ljava/lang/Object;

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    nop

    iget-object p5, p2, Loel;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast p5, Loem;

    nop

    nop

    iget-object p5, p5, Loem;->a:Landroid/content/SharedPreferences;

    nop

    nop

    nop

    nop

    invoke-interface {p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p5

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Loel;->a()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-interface {p5, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Loel;->c()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-interface {p5, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Loel;->b()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-interface {p5, v2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_a
    if-nez p1, :cond_b

    nop

    nop

    const-string p1, ""

    nop

    nop

    nop

    :cond_b
    monitor-enter p2

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object p3, p2, Loel;->b:Ljava/lang/Object;

    nop

    nop

    check-cast p3, Loem;

    nop

    iget-object p3, p3, Loem;->a:Landroid/content/SharedPreferences;

    nop

    invoke-virtual {p2}, Loel;->a()Ljava/lang/String;

    move-result-object p4

    nop

    nop

    nop

    nop

    invoke-interface {p3, p4, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p3

    nop

    nop

    cmp-long p5, p3, v0

    nop

    nop

    nop

    const-wide/16 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    if-gtz p5, :cond_d

    nop

    nop

    nop

    nop

    iget-object p3, p2, Loel;->b:Ljava/lang/Object;

    nop

    nop

    check-cast p3, Loem;

    nop

    iget-object p3, p3, Loem;->a:Landroid/content/SharedPreferences;

    nop

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    nop

    nop

    invoke-virtual {p2}, Loel;->c()Ljava/lang/String;

    move-result-object p4

    nop

    nop

    nop

    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Loel;->a()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-interface {p3, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit p2

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_f

    nop

    nop

    :goto_5
    if-lez v0, :cond_c

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_c
    goto/32 :goto_8

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x5

    nop

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

    :goto_8
    goto/32 :goto_12

    nop

    nop

    :goto_9
    goto/32 :goto_b

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

    :cond_d
    :try_start_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p5

    nop

    nop

    nop

    invoke-virtual {p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    nop

    const-wide v4, 0x7fffffffffffffffL

    nop

    nop

    nop

    and-long/2addr v2, v4

    nop

    nop

    nop

    add-long/2addr p3, v0

    nop

    nop

    nop

    nop

    div-long/2addr v4, p3

    nop

    nop

    iget-object p5, p2, Loel;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p5, Loem;

    nop

    nop

    nop

    nop

    iget-object p5, p5, Loem;->a:Landroid/content/SharedPreferences;

    nop

    nop

    nop

    invoke-interface {p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p5

    nop

    nop

    nop

    cmp-long v0, v2, v4

    nop

    nop

    nop

    nop

    nop

    if-gez v0, :cond_e

    nop

    nop

    invoke-virtual {p2}, Loel;->c()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-interface {p5, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_e
    invoke-virtual {p2}, Loel;->a()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p5, p1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p5}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit p2

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_0

    nop

    nop

    :goto_b
    const-string v0, "3"

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    const v1, 0x1c

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

    nop

    :goto_f
    monitor-exit p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    :goto_11
    throw p1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    :try_start_5
    monitor-exit p2

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :catchall_2
    move-exception p1

    nop

    :try_start_7
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method
