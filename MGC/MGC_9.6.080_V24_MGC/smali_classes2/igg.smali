.class public final Ligg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# static fields
.field public static final a:Lsdb;


# instance fields
.field private final A:I

.field public final b:Lsys;

.field public final c:Lilx;

.field public final d:Lpdf;

.field public final e:Llqc;

.field public final f:I

.field public final g:J

.field public final h:Ligs;

.field public final i:Lsxp;

.field public final j:Ljava/util/Set;

.field public final k:Ljava/util/List;

.field public final l:Ljava/io/File;

.field public final m:Lugy;

.field public n:J

.field public o:J

.field public p:I

.field public q:Z

.field public final r:Llyv;

.field public s:Lijd;

.field public final t:Lhoh;

.field public final u:Lmjv;

.field public v:Llko;

.field private final w:Lrss;

.field private final x:Ljava/util/concurrent/Executor;

.field private final y:Z

.field private final z:Ljava/util/EnumMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "igg"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Ligg;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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
.end method

.method public constructor <init>(Lsys;Lilx;Lpdf;Lhoh;Lrss;Llqc;Ljava/util/concurrent/Executor;Llyv;Lmjv;IJLigs;ZLsxp;)V
    .locals 0

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p5}, Lrss;->f()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lufv;->i(Luad;)Lufs;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    const p3, 0x2dddaf

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-class p2, Lige;

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

    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

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

    :goto_5
    iput-object p4, p0, Ligg;->t:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_6
    const-string p2, "on"

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Ligg;->b:Lsys;

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

    :goto_8
    if-ne p2, p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_0
    :goto_9
    goto/32 :goto_3b

    nop

    nop

    :goto_a
    iput p10, p0, Ligg;->f:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_b
    move p1, p4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_c
    const/16 p3, 0xddf

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    invoke-direct {p2, p0, p6, p3}, Lrt;-><init>(Ligg;Ltzy;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    invoke-static {p1, p6, p4, p2, p5}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    move-result-object p1

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_10
    iput-object p8, p0, Ligg;->r:Llyv;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    iput-object p3, p0, Ligg;->d:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    iput p1, p0, Ligg;->A:I

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

    nop

    nop

    :goto_13
    iput-object p2, p0, Ligg;->c:Lilx;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    iput-object p1, p0, Ligg;->j:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_15
    invoke-virtual {p8, p1}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_16
    new-instance p1, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ne p2, p3, :cond_2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/16 p3, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p9, p0, Ligg;->u:Lmjv;

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

    :goto_1b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1d
    new-instance p2, Lrt;

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

    :goto_1e
    iput-wide p11, p0, Ligg;->g:J

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_1f
    iput-object p1, p0, Ligg;->l:Ljava/io/File;

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

    :goto_20
    check-cast p2, Ljava/io/File;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string p2, "auto"

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p1, Ljava/util/LinkedHashSet;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_9

    nop

    nop

    :goto_2a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p7}, Luch;->J(Ljava/util/concurrent/Executor;)Lufp;

    move-result-object p1

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

    :goto_2c
    iput-object p15, p0, Ligg;->i:Lsxp;

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

    :goto_2d
    const-string p3, "pano"

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object p1, p0, Ligg;->z:Ljava/util/EnumMap;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_31
    iput-object p1, p0, Ligg;->m:Lugy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_9

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-object p5, p0, Ligg;->w:Lrss;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_35
    new-instance p1, Ljava/util/EnumMap;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-ne p2, p3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_3
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object p1, Llyr;->I:Llzh;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_38
    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_39
    iput-boolean p14, p0, Ligg;->y:Z

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object p6, p0, Ligg;->e:Llqc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move p1, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 p5, 0x1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3d
    const-string p2, "off"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3e
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput-object p7, p0, Ligg;->x:Ljava/util/concurrent/Executor;

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

    :goto_40
    if-eqz p1, :cond_4

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

    :cond_4
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_41
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4b

    nop

    nop

    :goto_42
    const/4 p6, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_43
    const p3, 0x1ad6f

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

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

    :goto_45
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_46
    iput-object p13, p0, Ligg;->h:Ligs;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput-object p1, p0, Ligg;->k:Ljava/util/List;

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

    nop

    :goto_49
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast p1, Ljava/lang/String;

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

    :goto_4b
    const/4 p1, 0x4

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4d
    const/4 p4, 0x2

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Linb;)Ljava/lang/Integer;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ligg;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Linb;->a()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    nop

    nop

    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

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

    nop

    :goto_5
    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

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
.end method

.method public final b([FLige;)Ltxv;
    .locals 25

    goto/32 :goto_58

    nop

    nop

    :goto_0
    iget-wide v9, v0, Lnpk;->a:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    mul-double v15, v3, v11

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3
    iget-wide v13, v2, Lnpk;->c:D

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_4
    move-wide/from16 v21, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-double/2addr v11, v15

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object v2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_9
    mul-double v15, v13, v9

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

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_53

    nop

    nop

    :goto_c
    move-wide/from16 v19, v3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v3}, Lnpk;-><init>()V

    goto/32 :goto_51

    nop

    nop

    :goto_e
    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_69

    nop

    nop

    :goto_f
    mul-double/2addr v11, v5

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    mul-double/2addr v2, v4

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

    :goto_11
    iput-wide v4, v3, Lnpk;->b:D

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_12
    add-double/2addr v13, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_13
    iget-object v4, v0, Ligg;->z:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v2, v3, v1}, Ltxv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    new-instance v2, Ltxv;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v3, Lueg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-wide/from16 v11, p0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_19
    mul-double v7, v7, v17

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    sub-double v13, v13, v23

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-wide v4, v3, Lnpk;->c:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_1c
    iput-wide v2, v1, Lnpk;->a:D

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_1f
    mul-double/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_20
    invoke-static {v2, v0}, Lnzk;->L(Lnpk;[F)V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_21
    move-object/from16 v1, p2

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_22
    iput-wide v7, v1, Lnpk;->d:D

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_23
    iget-wide v5, v2, Lnpk;->c:D

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    mul-double/2addr v2, v4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_25
    iput-wide v2, v1, Lnpk;->b:D

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_26
    iput-wide v2, v1, Lnpk;->d:D

    nop

    :goto_27
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    mul-double/2addr v5, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    mul-double v3, v19, v19

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

    nop

    :goto_2a
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_2b
    mul-double/2addr v3, v9

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_2c
    iget-wide v4, v2, Lnpk;->b:D

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_2d
    neg-double v4, v4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-wide v4, v3, Lnpk;->d:D

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

    :goto_2f
    new-instance v3, Lnpk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_30
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_31
    iget-wide v2, v1, Lnpk;->c:D

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_33
    iget-wide v2, v1, Lnpk;->b:D

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_34
    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    :goto_35
    iget-wide v9, v0, Lnpk;->a:D

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_36
    iget-wide v3, v2, Lnpk;->a:D

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-double/2addr v11, v7

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_38
    mul-double v19, v13, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v3, v2}, Lnzk;->K([FLnpk;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-wide v2, v1, Lnpk;->d:D

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3c
    invoke-direct {v3, v1, v4}, Lueg;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_85

    nop

    nop

    :goto_3d
    invoke-direct {v1, v0, v4}, Lueg;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-gtz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_1d

    nop

    :goto_40
    iget-object v0, v0, Ligg;->z:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_41
    iget-wide v7, v0, Lnpk;->b:D

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_42
    iput-wide v11, v1, Lnpk;->b:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-double/2addr v3, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_44
    mul-double v7, v17, v21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_45
    iget-object v3, v0, Ligg;->h:Ligs;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-wide v4, v2, Lnpk;->c:D

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    move-object v2, v1

    nop

    nop

    :goto_48
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iput-wide v2, v1, Lnpk;->c:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    mul-double/2addr v11, v11

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-wide v7, v2, Lnpk;->d:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v3, v1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-direct {v1}, Lnpk;-><init>()V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    add-double/2addr v3, v13

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_4f
    iget-wide v3, v2, Lnpk;->a:D

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_50
    add-double/2addr v3, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_51
    iget-wide v4, v2, Lnpk;->a:D

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_52
    mul-double/2addr v13, v13

    nop

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

    :goto_53
    new-instance v1, Lnpk;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_54
    add-double/2addr v3, v7

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    mul-double/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_56
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_57
    move-wide/from16 v21, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const v0, 0xe

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_59
    div-double/2addr v4, v2

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    move-object/from16 v3, p1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    mul-double/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_5c
    iput-wide v13, v1, Lnpk;->c:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_5d
    iget-wide v9, v0, Lnpk;->c:D

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_5e
    sub-double v3, v3, v19

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const-wide/16 v4, 0x0

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_60
    mul-double v23, v3, v21

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_61
    sub-double/2addr v7, v3

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_62
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_63
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_64
    iput-wide v4, v3, Lnpk;->a:D

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_65
    mul-double v23, v11, v9

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

    :goto_66
    move-wide/from16 v17, v7

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_67
    iget-wide v11, v0, Lnpk;->b:D

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_68
    add-double/2addr v3, v15

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v3, v0, Ligg;->z:Ljava/util/EnumMap;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-wide v11, v2, Lnpk;->b:D

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_6b
    check-cast v0, Lnpk;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6c
    mul-double/2addr v13, v5

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_6d
    iput-wide v3, v1, Lnpk;->a:D

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v2, v1}, Lnpk;->b([F)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-direct {v2}, Lnpk;-><init>()V

    goto/32 :goto_5a

    nop

    nop

    :goto_70
    mul-double/2addr v7, v7

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_71
    cmpl-double v0, v2, v4

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v3}, Ligs;->b()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_73
    iget-wide v13, v0, Lnpk;->c:D

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    mul-double v7, v17, v5

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_75
    iget-wide v5, v0, Lnpk;->d:D

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_76
    mul-double v11, v11, v21

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_77
    new-instance v2, Lnpk;

    nop

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

    :goto_78
    neg-double v4, v4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_79
    neg-double v4, v4

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_7a
    move-wide/from16 p0, v13

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

    :goto_7b
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7c
    move-object/from16 v0, p0

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

    :goto_7d
    move-wide/from16 p0, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const/16 v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    mul-double/2addr v9, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_80
    add-double/2addr v13, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-wide v11, v2, Lnpk;->b:D

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_82
    iget-wide v4, v2, Lnpk;->d:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_83
    iget-wide v2, v1, Lnpk;->a:D

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_84
    sub-double/2addr v7, v11

    nop

    nop

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

    :goto_85
    new-instance v1, Lueg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_86
    sub-double v11, v11, v23

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    new-array v1, v1, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_88
    mul-double v15, v11, v13

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_89
    sub-double/2addr v7, v5

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Linb;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Ligg;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    iput-object v0, p0, Ligg;->v:Llko;

    nop

    nop

    iput-object v0, p0, Ligg;->s:Lijd;

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Ligg;->j:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Linb;->a()I

    move-result p1

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ligg;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

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

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ligg;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1b

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

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x20

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    :try_start_1
    iput-boolean v0, p0, Ligg;->q:Z

    nop

    nop

    nop

    iget-object v0, p0, Ligg;->m:Lugy;

    nop

    invoke-static {v0}, Luch;->I(Lugy;)V

    iget-object v0, p0, Ligg;->k:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ligg;->u:Lmjv;

    nop

    const/4 v1, 0x3

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Ligg;->e(I)Lspe;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lmjv;->o(Lspe;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_11
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_2
    iget-boolean v0, p0, Ligg;->q:Z

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_13

    nop

    nop
.end method

.method public final d()V
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

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

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    monitor-exit p0

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

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Ligg;->j:Ljava/util/Set;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Ligg;->q:Z

    nop

    nop

    if-eqz v0, :cond_3

    nop

    iget-object v0, p0, Ligg;->v:Llko;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    iget-object v0, v0, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    :cond_1
    move-object v0, v1

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    sget-object v0, Ligg;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    const/16 v1, 0x5d6

    nop

    nop

    invoke-interface {v0, v1}, Lsdo;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->pzjgrSH:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto :goto_c

    nop

    nop

    :cond_2
    iget-object v2, p0, Ligg;->x:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    invoke-static {v2}, Luch;->J(Ljava/util/concurrent/Executor;)Lufp;

    move-result-object v2

    nop

    invoke-static {v2}, Lufv;->i(Luad;)Lufs;

    move-result-object v2

    nop

    new-instance v3, Ltq;

    nop

    nop

    nop

    const/16 v4, 0x8

    nop

    nop

    nop

    nop

    invoke-direct {v3, p0, v0, v1, v4}, Ltq;-><init>(Ligg;Llxa;Ltzy;I)V

    const/4 v0, 0x3

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    invoke-static {v2, v1, v4, v3, v0}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x15

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final e(I)Lspe;
    .locals 5

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v2, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object p1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4
    move-object v2, v1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_5
    check-cast v1, Lspe;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, v1, Lspe;->g:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4b

    nop

    nop

    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_b
    iput p1, p0, Lspe;->b:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_c
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide p0, p0, Ligg;->o:J

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

    :goto_f
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4c

    nop

    nop

    :goto_11
    iput p1, v2, Lspe;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_12
    iput p1, v2, Lspe;->b:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_13
    iput v2, v1, Lspe;->b:I

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

    :goto_14
    check-cast v2, Lspe;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v2, v1, Lspe;->b:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_16
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_17
    iget p1, v2, Lspe;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_4

    nop

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

    :cond_4
    goto/32 :goto_5d

    nop

    :goto_1a
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

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

    :goto_1b
    sub-long/2addr v1, v3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Lspe;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1d
    iput p1, v1, Lspe;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p0, Lspe;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_21
    or-int/lit8 v2, v2, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_23
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_24
    iget p1, p0, Ligg;->A:I

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_26
    iget v3, p1, Lspe;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_27
    or-int/2addr p1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-wide v3, p0, Ligg;->n:J

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v0, Lspe;->a:Lspe;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v2, v1, Lspe;->b:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2f
    iput-wide v1, p0, Lspe;->i:J

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

    nop

    :goto_30
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_31
    invoke-virtual {p1, v3}, Ligs;->a(Z)Ligr;

    move-result-object p1

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_32
    if-eqz p1, :cond_5

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sub-long/2addr v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_34
    check-cast p0, Lspe;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p1, p0, Ligg;->h:Ligs;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_36
    iget-boolean p1, p0, Ligg;->y:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_37
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_39
    const v1, 0x1a

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

    :goto_3a
    iget-object p0, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v1, Lspe;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3c
    iget p1, p1, Ligr;->h:I

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3d
    or-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_3f
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz v1, :cond_6

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_42
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_43
    iput p1, v1, Lspe;->b:I

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

    :goto_44
    const v0, 0x18

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {p1}, La;->F(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_46
    or-int/lit8 p1, p1, 0x8

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_47
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

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

    :goto_48
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_49
    iget p1, p0, Lspe;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_4a
    iput p1, v1, Lspe;->e:I

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_5e

    nop

    nop

    :goto_4c
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_4d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_41

    nop

    nop

    :goto_4f
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_50
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    or-int/lit8 p1, p1, 0x40

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_53
    check-cast v2, Lspe;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_54
    iput v3, p1, Lspe;->b:I

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_55
    iget p1, p0, Ligg;->p:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_56
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_57
    iget-object p0, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget p1, v1, Lspe;->b:I

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_59
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5a
    or-int/lit8 p1, p1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_5c
    or-int/lit8 v3, v3, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_5d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_60
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_61
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_62
    iput p1, v2, Lspe;->b:I

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v1, Lspe;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_64
    iput p1, v2, Lspe;->c:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_66
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_68
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget v2, v1, Lspe;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_6a
    iput-wide v1, p1, Lspe;->h:J

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

    :goto_6b
    iget p1, v2, Lspe;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop
.end method
