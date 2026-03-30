.class public final Loqa;
.super Lokj;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lokb;Lohf;Lohg;)V
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v5, p4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    move-object v4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    move-object v6, p5

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    move-object v2, p2

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

    :goto_9
    move-object v1, p1

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
    invoke-direct/range {v0 .. v6}, Lokj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILokb;Loif;Lojc;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v3, 0x33

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    move-object v0, p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    const p0, 0x8f95d0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method protected final synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "com.google.android.gms.phenotype.internal.IPhenotypeService"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    instance-of v0, p0, Lopz;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_8

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

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

    nop

    :goto_7
    invoke-direct {p0, p1}, Lopz;-><init>(Landroid/os/IBinder;)V

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Lopz;

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

    :goto_a
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p0, Lopz;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_8

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method protected final c()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    const-string p0, "com.google.android.gms.phenotype.internal.IPhenotypeService"

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
.end method

.method protected final d()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    const-string p0, "com.google.android.gms.phenotype.service.START"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final e()[Logb;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lopm;->j:[Logb;

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

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method
