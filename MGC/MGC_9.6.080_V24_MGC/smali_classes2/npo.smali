.class public Lnpo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "npo"

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
    sput-object v0, Lnpo;->a:Lsdb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnpo;->b:Landroid/content/Context;

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

    :goto_1
    return-void

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
.method public final a()Landroid/content/pm/PackageInfo;
    .locals 3

    goto/32 :goto_11

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v2, 0x1428

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const v1, 0x2

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

    :goto_5
    goto/32 :goto_9

    nop

    :goto_6
    :try_start_0
    iget-object p0, p0, Lnpo;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    nop

    const-string v0, "Z2FsbGV5X2tleQ"

    nop

    invoke-static {v0}, Lcom/a;->aa_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    const-string v1, ""

    nop

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    const-string v0, "com.google.android.apps.photos"

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v1, 0x0

    nop

    nop

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    const-string v1, "Photos app package not found."

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lnpo;->a:Lsdb;

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

    :goto_b
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_c

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x3

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 4

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v2, 0x142b

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_2
    return v2

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v3, -0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v1, v2, p0, p1}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_c
    check-cast v1, Lscz;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    if-ne v1, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    const/16 v1, 0x2d

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    if-gez p0, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_15
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    return v2

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_18
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v2, "Fail to check the version between %s and %s"

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

    :goto_1a
    if-eqz p0, :cond_4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v1, Lnpo;->a:Lsdb;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "DEVELOPMENT"

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    :goto_22
    :try_start_0
    new-instance v1, Lnpn;

    nop

    invoke-direct {v1, p0}, Lnpn;-><init>(Ljava/lang/String;)V

    new-instance v3, Lnpn;

    nop

    nop

    nop

    invoke-direct {v3, p1}, Lnpn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lnpn;->a(Lnpn;)I

    move-result p0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_24
    const v0, 0x3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lnpo;->a()Landroid/content/pm/PackageInfo;

    move-result-object p0

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
.end method
