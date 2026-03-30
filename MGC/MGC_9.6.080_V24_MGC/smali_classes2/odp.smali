.class public final Lodp;
.super Lodj;
.source "PG"


# instance fields
.field public final a:Lodo;

.field public c:Loeg;

.field private final d:Lodz;

.field private final e:Loeq;


# direct methods
.method protected constructor <init>(Lodm;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    new-instance v0, Lodn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, p1}, Lodn;-><init>(Lodp;Lodm;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lodp;->e:Loeq;

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

    :goto_3
    invoke-direct {v0, p0}, Lodo;-><init>(Lodp;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Lodj;-><init>(Lodm;)V

    goto/32 :goto_9

    nop

    nop

    :goto_5
    iput-object v0, p0, Lodp;->d:Lodz;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lodp;->a:Lodo;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Loeq;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    new-instance v0, Loeq;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lodo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final C()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Loeq;->b()V

    goto/32 :goto_9

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lnar;->v()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    sget-object v0, Loed;->x:Lnar;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lodp;->d:Lodz;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lodp;->e:Loeq;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x4

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

    :goto_f
    invoke-virtual {p0, v0, v1}, Lodz;->d(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final D()Z
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_3

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Lodf;->a()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lodj;->z()V

    goto/32 :goto_8

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lodp;->c:Loeg;

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

.method public final E(Loef;)Z
    .locals 7

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_1
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    return v2

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x18

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

    nop

    nop

    :goto_6
    return v1

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_c
    invoke-static {p1}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Lody;->h()Ljava/lang/String;

    move-result-object v2

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v4, p1, Loef;->a:Ljava/util/Map;

    nop

    nop

    nop

    iget-wide v5, p1, Loef;->c:J

    nop

    invoke-virtual {v0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object p1

    nop

    nop

    nop

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v2, 0x1

    nop

    nop

    nop

    invoke-virtual {v0, v2, p1}, Lfum;->A(ILandroid/os/Parcel;)V

    invoke-virtual {p0}, Lodp;->C()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1}, Lodi;->q(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string p1, "Failed to send hits to AnalyticsService"

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    invoke-static {}, Lodf;->a()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v2, p1, Loef;->e:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lodj;->z()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Lody;->f()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lodp;->c:Loeg;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final a()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final b()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lodf;->a()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lodp;->c()V

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    iget-object v0, p0, Lodp;->c:Loeg;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lodj;->z()V

    :try_start_0
    invoke-static {}, Lols;->a()Lols;

    move-result-object v0

    nop

    nop

    invoke-virtual {p0}, Lodi;->d()Landroid/content/Context;

    move-result-object v1

    nop

    iget-object v2, p0, Lodp;->a:Lodo;

    nop

    invoke-virtual {v0, v1, v2}, Lols;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_a

    nop

    nop

    :goto_c
    iput-object v0, p0, Lodp;->c:Loeg;

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

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    const v1, 0xe

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

    :goto_f
    goto/32 :goto_9

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const-string v0, "Service disconnected"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lodf;->a()V

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lodj;->z()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {}, Lodf;->a()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lodj;->z()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lodi;->f()Lodh;

    move-result-object p0

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

    :goto_7
    iget-object p0, p0, Lodh;->a:Lodw;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lodi;->q(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop
.end method
