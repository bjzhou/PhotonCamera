.class public final Lpyh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpxy;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lqar;

.field public final c:Lqvg;

.field private final d:Locr;

.field private final e:Lrss;

.field private final f:Lrss;

.field private final g:Lhdn;

.field private final h:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>(Locr;Lhdn;Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientMode$AmbientController;Lqvg;Lqar;Lrss;Lrss;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p7, p0, Lpyh;->e:Lrss;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lpyh;->g:Lhdn;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Lpyh;->c:Lqvg;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-object p6, p0, Lpyh;->b:Lqar;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lpyh;->a:Ljava/util/concurrent/Executor;

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

    :goto_7
    iput-object p4, p0, Lpyh;->h:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lpyh;->d:Locr;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    iput-object p8, p0, Lpyh;->f:Lrss;

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Lpxx;)Lsui;
    .locals 14

    goto/32 :goto_16

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    :try_start_0
    iget-object v0, p1, Lpxx;->a:Landroid/net/Uri;

    nop
    :try_end_0
    .catch Lpwf; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lpyh;->g:Lhdn;

    nop

    iget-object v2, p0, Lpyh;->c:Lqvg;

    nop

    nop

    nop

    nop

    sget-object v3, Lstd;->a:Lstd;

    nop

    nop

    nop

    new-instance v4, Lrar;

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    invoke-direct {v4, v2, v3, v5}, Lrar;-><init>(Lqvg;Ljava/util/concurrent/Executor;I)V

    invoke-virtual {v1, v0, v4}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lram;

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lpwf; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v3, p0, Lpyh;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_2
    move v1, v3

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v9, :cond_0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    :cond_1
    goto/32 :goto_79

    nop

    nop

    :goto_7
    new-instance v0, Locj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v6, v4}, Lqrg;->x(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2, v3}, Loci;->b(I)V

    goto/32 :goto_57

    nop

    nop

    :goto_b
    invoke-static {v0}, Lqdd;->e(Lsui;)Lqdd;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v4, Lsbh;

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v1, Loce;->b:Loce;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    :cond_2
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    :goto_11
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_12
    if-gtz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_14
    if-lt v1, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :cond_4
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_15
    add-int/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_16
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_17
    iput-object v1, v2, Loci;->g:Lram;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_18
    check-cast v4, Lsbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object v6, v0

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Lryd;->b()Lryh;

    move-result-object v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p1, Lpxx;->c:Lpxv;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1, v4}, Lryd;-><init>(I)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v7, :cond_5

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

    :cond_5
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_1e
    if-gtz v0, :cond_6

    nop

    nop

    goto/32 :goto_aa

    nop

    :cond_6
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v2, v1, Locr;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_20
    new-instance v2, Loci;

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

    :goto_21
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_22
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0, v1, v3}, Lryc;-><init>(Lryh;I)V

    :goto_24
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v6, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_26
    new-instance v1, Lryd;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_27
    iput-object v0, v2, Loci;->e:Lobz;

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_8c

    nop

    nop

    :goto_29
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1}, Locr;->b()V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v2, v0}, Loci;->a(Locf;)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p1, Lpxx;->e:Lryb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2e
    check-cast v4, Lrxw;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2f
    iput-object v0, v2, Loci;->b:Lryt;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_30
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

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

    :goto_31
    invoke-virtual {v2, v0}, Loci;->a(Locf;)V

    :goto_32
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Locd;->a()Locf;

    move-result-object v0

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_34
    iget-object v0, p1, Lpxx;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v1, Loce;->c:Loce;

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_36
    goto :goto_32

    nop

    nop

    :goto_37
    goto/32 :goto_a2

    nop

    nop

    :goto_38
    goto/32 :goto_46

    nop

    :goto_39
    iget v12, v2, Loci;->d:I

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v1, p0, Lpyh;->d:Locr;

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

    nop

    :goto_3b
    invoke-virtual {v4}, Lrxw;->g()Lryb;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v8}, Lryb;->e(I)Lrxw;

    move-result-object v8

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_3d
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v1, p0, p1, v2, v5}, Lkny;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v11, v2, Loci;->g:Lram;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_40
    throw p0

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v0, p1, Lpxx;->d:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-eqz v0, :cond_7

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v7}, Lscn;->b()Ljava/util/Map;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v10, v2, Loci;->i:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

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

    nop

    :goto_49
    invoke-interface {v0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v0, p0, Lpyh;->f:Lrss;

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-direct {v7}, Lscn;-><init>()V

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast v8, Lrxp;

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_4e
    iget-object v0, p1, Lpxx;->a:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :cond_8
    goto/32 :goto_61

    nop

    nop

    :goto_50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_51
    throw p0

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_2
    instance-of p1, p0, Lqzy;

    nop

    nop

    nop

    if-nez p1, :cond_a

    nop

    nop

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    nop

    nop

    nop

    instance-of p1, p1, Ljava/lang/IllegalArgumentException;

    nop

    if-eqz p1, :cond_9

    nop

    goto :goto_52

    nop

    nop

    nop

    nop

    :cond_9
    const-string p1, "%s: Unable to create DownloadDestination for file %s"

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Offroad2FileDownloader"

    nop

    nop

    nop

    nop

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    invoke-static {p0, p1, v0}, Lqbq;->g(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lpwf;->a()Ltar;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lpwe;->y:Lpwe;

    nop

    nop

    iput-object v0, p1, Ltar;->d:Ljava/lang/Object;

    nop

    iput-object p0, p1, Ltar;->c:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-virtual {p1}, Ltar;->c()Lpwf;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    throw p0

    nop

    nop

    nop

    :cond_a
    :goto_52
    const-string p1, "%s: The file uri is invalid, uri = %s"

    nop

    nop

    const-string v1, "Offroad2FileDownloader"

    nop

    nop

    invoke-static {p1, v1, v0}, Lqbq;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lpwf;->a()Ltar;

    move-result-object p1

    nop

    sget-object v0, Lpwe;->x:Lpwe;

    nop

    nop

    nop

    iput-object v0, p1, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iput-object p0, p1, Ltar;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ltar;->c()Lpwf;

    move-result-object p0

    nop

    nop

    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Lpwf; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v0, v2, Loci;->b:Lryt;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_54
    iget-object v7, v2, Loci;->a:Ljava/net/URI;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_55
    sget-object v1, Lpxv;->c:Lpxv;

    nop

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

    :goto_56
    iget-object p0, p0, Lpyh;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-eqz v0, :cond_b

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_96

    nop

    nop

    nop

    :goto_59
    sget-object v0, Locf;->b:Locf;

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v7}, Lscn;->b()Ljava/util/Map;

    move-result-object v7

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

    nop

    nop

    :goto_5b
    iput-object v0, v2, Loci;->i:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v0, v5}, Locd;->c(Z)V

    goto/32 :goto_33

    nop

    nop

    :goto_5d
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_5e
    if-eq v0, v5, :cond_c

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_c
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const/16 v2, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_60
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_3
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v0, v0, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_62
    if-eqz v7, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_af

    nop

    nop

    nop

    :goto_63
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-nez v11, :cond_e

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v13, v2, Loci;->e:Lobz;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_66
    invoke-direct {v2}, Loci;-><init>()V

    goto/32 :goto_3d

    nop

    nop

    :goto_67
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_68
    move-object v4, v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_69
    invoke-virtual {v2, v0}, Loci;->b(I)V

    goto/32 :goto_a9

    nop

    nop

    :goto_6a
    sget-object v0, Locf;->b:Locf;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_6b
    new-instance v0, Lryc;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iput-object v0, v2, Loci;->b:Lryt;

    nop

    nop

    :goto_6d
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v0, v1}, Locd;->b(Loce;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_6f
    check-cast v0, Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_70
    invoke-direct/range {v6 .. v13}, Locj;-><init>(Ljava/net/URI;Lryt;Locf;Landroidx/wear/ambient/AmbientMode$AmbientController;Lram;ILobz;)V

    goto/32 :goto_3a

    nop

    nop

    :goto_71
    iget-object v0, p0, Lpyh;->f:Lrss;

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_72
    if-nez v4, :cond_f

    nop

    nop

    goto/32 :goto_9e

    nop

    :cond_f
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_73
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    sget-object v1, Loce;->e:Loce;

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v0, p0, Lpyh;->e:Lrss;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-direct {v1, p0, v2}, Ljuu;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_78
    const-class v4, Ljava/lang/Exception;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_79
    sget-object v0, Lrwo;->a:Lrwo;

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_7a
    check-cast v4, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_7b
    check-cast v4, Landroid/util/Pair;

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

    :goto_7c
    goto/16 :goto_24

    nop

    :goto_7d
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7e
    check-cast v0, Lobz;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7f
    check-cast v0, Ljava/lang/Integer;

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_80
    invoke-virtual {v8, v4}, Lrxp;->d(Ljava/lang/Object;)V

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_82
    iget-object v9, v2, Loci;->c:Locf;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_83
    invoke-virtual {v0, v1}, Locd;->b(Loce;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v8, v2, Loci;->b:Lryt;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_85
    iget-object v7, v2, Loci;->h:Lscn;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_86
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_87
    goto/16 :goto_6d

    nop

    nop

    :goto_88
    goto/32 :goto_53

    nop

    nop

    :goto_89
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    sget v1, Lqbq;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8c
    iget-object v0, p0, Lpyh;->h:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    if-eq v1, v0, :cond_10

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_6a

    nop

    nop

    :goto_8e
    new-instance v1, Ljuu;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_90
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget v4, v4, Lsbh;->c:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_93
    monitor-enter v2

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v1, v0, v5}, Locr;->e(Locj;I)Lsub;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lnue;

    nop

    const/16 v4, 0x13

    nop

    nop

    invoke-direct {v3, v1, v4}, Lnue;-><init>(Ljava/lang/Object;I)V

    iget-object v4, v1, Locr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3, v4}, Lssk;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v3, v1, Locr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Locn;

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    invoke-direct {v3, v1, v0, v4, v5}, Locn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    sget-object v4, Lstd;->a:Lstd;

    nop

    nop

    invoke-virtual {v0, v3, v4}, Lssk;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit v2

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v1, v6, v4}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_95
    new-instance v1, Lkny;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_96
    sget-object v0, Lrwo;->a:Lrwo;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget v4, v4, Lsbh;->c:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_98
    iput-object v0, v2, Loci;->a:Ljava/net/URI;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_99
    if-lez v0, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_45

    nop

    :goto_9a
    if-nez v1, :cond_12

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_9d
    goto/16 :goto_74

    nop

    nop

    :goto_9e
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    sget-object v0, Lrwo;->a:Lrwo;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_a0
    iget-object v0, v2, Loci;->h:Lscn;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_a1
    const v1, 0x4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-static {}, Locf;->a()Locd;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_a3
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a4
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_26

    nop

    nop

    :goto_a6
    const/4 v8, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iput-object v7, v2, Loci;->h:Lscn;

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    goto/32 :goto_85

    nop

    nop

    :goto_a9
    goto/16 :goto_b8

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    if-eqz v8, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_a6

    nop

    nop

    :goto_ad
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_ae
    invoke-virtual {v0, v1, p0}, Lqdd;->g(Lssx;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_af
    new-instance v7, Lscn;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v0, v1}, Locd;->b(Loce;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b3
    iget-object v7, v2, Loci;->h:Lscn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v0, v4, v1, v3}, Lqdd;->d(Ljava/lang/Class;Lssx;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_b5
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v2, v0}, Loci;->b(I)V

    :goto_b8
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b9
    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-byte v0, v2, Loci;->f:B

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

    :goto_bb
    invoke-virtual {v2, v0}, Loci;->a(Locf;)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop
.end method
