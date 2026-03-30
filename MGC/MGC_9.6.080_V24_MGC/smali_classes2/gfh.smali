.class public Lgfh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljpv;
.implements Ljps;
.implements Ljpu;
.implements Ljpq;


# static fields
.field private static final a:Lsdb;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Landroid/app/Activity;

.field private final d:Loyn;

.field private final e:I

.field private final f:I

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Loyn;

.field private final i:Lcom/google/ar/core/ArCoreApk;

.field private final j:Ltar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    nop

    :goto_2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lgfh;->b:Ljava/util/regex/Pattern;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Landroidx/wear/widget/xrA/fuyPMnCeXU;->TecSNaATR:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "gfh"

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

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lgfh;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public constructor <init>(Landroid/app/Activity;Loyn;Loyn;Lcom/google/ar/core/ArCoreApk;Lhoh;)V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    :goto_0
    const p2, 0x7fffffff

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1
    iput-object v0, p0, Lgfh;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    :goto_4
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lgfh;->c:Landroid/app/Activity;

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

    nop

    :goto_6
    sget-object p1, Lhlw;->b:Lhmo;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p3, p0, Lgfh;->h:Loyn;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p5, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p5, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    iput v1, v0, Ltar;->a:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_11
    iput-object p2, p0, Lgfh;->d:Loyn;

    nop

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

    :goto_12
    sget-object p1, Lhlw;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    iput-object p4, p0, Lgfh;->i:Lcom/google/ar/core/ArCoreApk;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0xb

    nop

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

    nop

    :goto_19
    check-cast p1, Ljava/lang/Integer;

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

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1b
    iput-object v0, p0, Lgfh;->j:Ltar;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Ltar;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1f
    invoke-direct {v0, v1, v1, v1}, Ltar;-><init>([B[B[B)V

    goto/32 :goto_c

    nop

    nop

    :goto_20
    iput p1, p0, Lgfh;->f:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput p1, p0, Lgfh;->e:I

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

    :goto_23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    :goto_25
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Landroid/content/Context;)Lgfi;
    .locals 9

    goto/32 :goto_f

    nop

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v2, 0x111

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lgfh;->i:Lcom/google/ar/core/ArCoreApk;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    const-string v1, "No ARCore package found."

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v2, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_d

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, p1}, Lcom/google/ar/core/ArCoreApk;->checkAvailability(Landroid/content/Context;)Lcom/google/ar/core/ArCoreApk$Availability;

    move-result-object v1

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
    invoke-virtual {v0, v1}, Ltar;->e(Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    return-object v0

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ltar;->d()Lgfi;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    nop

    nop

    nop

    nop

    const-string v2, "com.google.ar.core"

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    nop

    nop

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_1

    nop

    nop

    sget-object p0, Lgfh;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    const/16 p1, 0x114

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    const-string p1, "Missing version name for ARCore."

    nop

    nop

    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    return-object v0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    sget-object v2, Lgfh;->b:Ljava/util/regex/Pattern;

    nop

    nop

    nop

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    nop

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    sget-object p0, Lgfh;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    const/16 v1, 0x113

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    const-string v1, "Wrong format for version name (%s)."

    nop

    nop

    nop

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    nop

    nop

    nop

    nop

    :cond_2
    const/4 v4, 0x1

    nop

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    nop

    const/4 v6, 0x2

    nop

    nop

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v5}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    if-nez v7, :cond_7

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    if-eqz v7, :cond_3

    nop

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    nop

    nop

    nop

    nop

    iget v8, p0, Lgfh;->e:I

    nop

    nop

    nop

    if-gt v7, v8, :cond_4

    nop

    nop

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    nop

    iget v7, p0, Lgfh;->e:I

    nop

    nop

    nop

    nop

    if-ne v5, v7, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    nop

    nop

    nop

    nop

    iget p0, p0, Lgfh;->f:I

    nop

    nop

    nop

    nop

    nop

    if-lt v2, p0, :cond_5

    nop

    :cond_4
    move v3, v4

    nop

    :cond_5
    new-instance p0, Ltar;

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    invoke-direct {p0, v2, v2, v2}, Ltar;-><init>([B[B[B)V

    if-eq v4, v3, :cond_6

    nop

    nop

    nop

    goto :goto_11

    nop

    nop

    nop

    nop

    :cond_6
    const/4 v6, 0x3

    nop

    nop

    :goto_11
    iput v6, p0, Ltar;->a:I

    nop

    nop

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v2

    nop

    nop

    iput-object v2, p0, Ltar;->c:Ljava/lang/Object;

    nop

    nop

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    iput-object p1, p0, Ltar;->b:Ljava/lang/Object;

    nop

    nop

    invoke-virtual {p0, v1}, Ltar;->e(Lcom/google/ar/core/ArCoreApk$Availability;)V

    invoke-virtual {p0}, Ltar;->d()Lgfi;

    move-result-object p0

    nop

    nop

    return-object p0

    nop

    nop

    :cond_7
    :goto_12
    sget-object p0, Lgfh;->a:Lsdb;

    nop

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x110

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const-string v1, "Missing version numbers (%s)."

    nop

    nop

    nop

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lgfh;->j:Ltar;

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

    :goto_14
    const v1, 0x1c

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

    nop

    :goto_15
    sget-object p1, Lgfh;->a:Lsdb;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "https://play.google.com/store/apps/details?id=com.google.ar.core"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Landroid/content/Intent;

    nop

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string p1, "InstallArCore invoked without user action."

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/32 :goto_11

    nop

    nop

    :goto_b
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    :goto_d
    iget-object p0, p0, Lgfh;->c:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "android.intent.action.VIEW"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 p1, 0x115

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "com.android.vending"

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

    :goto_12
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

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

    :goto_13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

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

    :goto_14
    sget-object p0, Lgfh;->a:Lsdb;

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method public final cX()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object p0, p0, Lgfh;->h:Loyn;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final cY()V
    .locals 4

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_29

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

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

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_a
    const/4 p0, 0x0

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

    nop

    :goto_b
    invoke-direct {p0, v1}, Lgfh;->da190e616797844b591057d0190e7728m(Landroid/content/Context;)Lgfi;

    move-result-object v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lgfh;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v3}, Lcom/google/ar/core/ArCoreApk$Availability;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_12
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, v1, Lgfi;->d:Lj$/util/Optional;

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

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    :goto_16
    iget v0, v1, Lgfi;->e:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Lcom/google/ar/core/ArCoreApk$Availability;

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

    :goto_18
    if-eq v0, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x20

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

    :goto_1b
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, v0}, Lgfh;->da190e616797844b591057d0190e7728m(Landroid/content/Context;)Lgfi;

    move-result-object v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    :goto_1e
    iget-object p0, p0, Lgfh;->h:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lgfh;->c:Landroid/app/Activity;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0xe

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_23
    sget-object v3, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_24
    iget-object v1, p0, Lgfh;->c:Landroid/app/Activity;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v2}, Lgfh;->a(Z)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_27
    iget-object v0, v1, Lgfi;->d:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_28
    throw p0

    nop

    nop

    :goto_29
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lgfh;->d:Loyn;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final dv()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lgfi;->a:Lgfi;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lgfh;->d:Loyn;

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

    :goto_2
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method
