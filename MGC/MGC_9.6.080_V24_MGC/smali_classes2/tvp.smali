.class public final Ltvp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltvo;


# static fields
.field public static final a:Lqvy;

.field public static final b:Lqvy;

.field public static final c:Lqvy;

.field public static final d:Lqvy;

.field public static final e:Lqvy;

.field public static final f:Lqvy;

.field public static final g:Lqvy;

.field public static final h:Lqvy;

.field public static final i:Lqvy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/32 v2, 0x6400000

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

    :goto_1
    goto/32 :goto_2f

    nop

    :goto_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "abs_free_space_after_download_extremely_low_storage_allowed"

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1, v2}, Lqvw;->f(Ljava/lang/String;Z)Lqvy;

    move-result-object v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1, v2, v3}, Lqvw;->e(Ljava/lang/String;J)Lqvy;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1, v2, v3}, Lqvw;->e(Ljava/lang/String;J)Lqvy;

    move-result-object v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "abs_free_space_after_download"

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
    const-wide/32 v2, 0x1d4c0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v4, "fraction_free_space_after_download"

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_c
    const-wide v3, 0x3fb999999999999aL    # 0.1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    sput-object v1, Ltvp;->a:Lqvy;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    sput-object v1, Ltvp;->c:Lqvy;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f
    sput-object v1, Ltvp;->d:Lqvy;

    nop

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

    :goto_10
    const-wide/16 v3, 0x2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_11
    const-string v1, "com.google.android.gms.icing.mdd"

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

    :goto_12
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "downloader_max_retry_on_checksum_mismatch_count"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1, v2, v3}, Lqvw;->e(Ljava/lang/String;J)Lqvy;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_16
    const-string v1, "downloader_max_threads"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sput-object v1, Ltvp;->g:Lqvy;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    const/4 v2, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    sput-object v3, Ltvp;->h:Lqvy;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v1}, Lqvj;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

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

    :goto_1b
    invoke-virtual {v0, v1, v3, v4}, Lqvw;->e(Ljava/lang/String;J)Lqvy;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1c
    sput-object v1, Ltvp;->b:Lqvy;

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

    :goto_1d
    const-string v1, "enforce_low_storage_behavior"

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1e
    const-wide/32 v2, 0x1f400000

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1, v3, v4}, Lqvw;->e(Ljava/lang/String;J)Lqvy;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lqvw;->c()Lqvw;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    new-instance v0, Lqvw;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Lqvw;->b()Lqvw;

    move-result-object v0

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

    :goto_23
    sput-object v1, Ltvp;->f:Lqvy;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_24
    const-wide/32 v2, 0x200000

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_25
    sput-object v1, Ltvp;->e:Lqvy;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_26
    sput-object v0, Ltvp;->i:Lqvy;

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

    nop

    :goto_27
    const-string v1, "downloader_enforce_https"

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

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_29
    const v0, 0x4

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x18

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

    :goto_2b
    invoke-direct {v0, v1}, Lqvw;-><init>(Landroid/net/Uri;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v1, "time_to_wait_for_downloader"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-wide/16 v3, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v3, Lqvr;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1, v2, v3}, Lqvw;->e(Ljava/lang/String;J)Lqvy;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, v1, v2}, Lqvw;->f(Ljava/lang/String;Z)Lqvy;

    move-result-object v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v3, v0, v4, v1, v2}, Lqvr;-><init>(Lqvw;Ljava/lang/String;Ljava/lang/Double;Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-string v1, "abs_free_space_after_download_low_storage_allowed"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()D
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

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

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    return-wide v0

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    const v1, 0x1

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
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    sget-object p0, Ltvp;->h:Lqvy;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Ljava/lang/Double;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lqvy;->b()Ljava/lang/Object;

    move-result-object p0

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
.end method

.method public final b()J
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lqvy;->b()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    nop

    :goto_7
    goto/32 :goto_5

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

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    check-cast p0, Ljava/lang/Long;

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

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p0, Ltvp;->a:Lqvy;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()J
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lqvy;->b()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_c
    sget-object p0, Ltvp;->b:Lqvy;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final d()J
    .locals 2

    goto/32 :goto_2

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

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    const v0, 0x12

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    sget-object p0, Ltvp;->c:Lqvy;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lqvy;->b()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p0, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    const v1, 0x9

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

    :goto_4
    invoke-virtual {p0}, Lqvy;->b()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const v0, 0x10

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    check-cast p0, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p0, Ltvp;->e:Lqvy;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()J
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    const v0, 0x15

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

    :goto_2
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    sget-object p0, Ltvp;->f:Lqvy;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lqvy;->b()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    const v1, 0x15

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

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final g()J
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    sget-object p0, Ltvp;->i:Lqvy;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    check-cast p0, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

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

    :goto_c
    const v1, 0xd

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lqvy;->b()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget-object p0, Ltvp;->d:Lqvy;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lqvy;->b()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

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

    :goto_4
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()Z
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lqvy;->b()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Ltvp;->g:Lqvy;

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

    :goto_4
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
