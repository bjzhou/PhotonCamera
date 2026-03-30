.class public Lhqe;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;

.field public static final b:Lhqc;


# instance fields
.field public final c:Landroid/content/UriMatcher;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Map;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lhqa;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "hqe"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lhqa;

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

    :goto_3
    sput-object v0, Lhqe;->b:Lhqc;

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

    :goto_4
    sput-object v0, Lhqe;->a:Lsdb;

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

    :goto_5
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lhqe;->e:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    iput-object v0, p0, Lhqe;->d:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x10

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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

    :goto_b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Landroid/content/UriMatcher;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lhqe;->c:Landroid/content/UriMatcher;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    const/4 v1, -0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    new-instance v0, Ljava/util/HashMap;

    nop

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

    :goto_13
    iput-object p1, p0, Lhqe;->f:Ljava/lang/String;

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

    nop

    :goto_14
    goto/32 :goto_3

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static synthetic c(Ljava/util/List;I)Z
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, 0x1

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

    :goto_2
    add-int/lit8 p0, p0, -0x1

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

    :goto_3
    if-eq p0, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Ljava/lang/String;Ljava/lang/String;Lrtm;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    :goto_4
    iget-object p0, p0, Lhqe;->d:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_6
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

    :goto_7
    const v1, 0x1e

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

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

    :goto_9
    invoke-virtual {v1, p1, p2, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lhqe;->d:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

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

    :goto_e
    iget-object v1, p0, Lhqe;->c:Landroid/content/UriMatcher;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lhqd;ZLhqc;)Landroid/database/Cursor;
    .locals 17

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v8, v0, v9, v7}, Lhqc;->a(Ljava/util/List;ILmkk;)Z

    move-result v10

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v15, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v11, v9, Lmkp;->m:J

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v7, v2, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    move v8, v6

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v7, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_48

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v7, v4, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :goto_b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_c
    aput-object v4, v8, v7

    nop

    nop

    :goto_d
    goto/32 :goto_50

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_1
    goto/32 :goto_66

    nop

    :goto_f
    move/from16 v16, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v10, Ljava/util/ArrayList;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v9, v14}, Lmkp;->g(Ljava/lang/Enum;)J

    move-result-wide v7

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_69

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v14, "TIMING_CREATION"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_16
    if-lt v8, v9, :cond_2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v7

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_18
    move/from16 v8, v16

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_19
    aput-object v2, v8, v6

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

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

    nop

    :goto_1b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v11, v9, Lmkp;->n:[Ljava/lang/Enum;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1d
    aget-object v14, v11, v13

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move/from16 v16, v9

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_20
    if-nez p2, :cond_3

    nop

    goto/32 :goto_55

    nop

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

    nop

    nop

    :goto_21
    aput-object v1, v8, v3

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_22
    const-string v4, "time_ns"

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_6c

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_25
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v11, v7, Lmkk;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_27
    const/4 v8, 0x4

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_28
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_29
    if-nez v10, :cond_4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v7, v1, v11}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v7

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

    :goto_2b
    add-int/2addr v11, v7

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v7, Lmkk;

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_2d
    const/4 v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2e
    iget-object v11, v9, Lmkp;->n:[Ljava/lang/Enum;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v1, "name"

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_31
    new-instance v13, Lmkk;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_32
    invoke-interface/range {p1 .. p1}, Lhqd;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_33
    aput-object v5, v8, v6

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

    :goto_34
    move-object/from16 v8, p3

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v7, 0x1

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

    :goto_36
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-array v8, v8, [Ljava/lang/String;

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

    nop

    :goto_38
    check-cast v9, Lmkp;

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

    :goto_39
    const/4 v3, 0x3

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_b

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    aput-object v5, v8, v7

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    array-length v12, v11

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_3e
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3f
    if-nez p2, :cond_5

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_5
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v7, v5, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_41
    const/4 v6, 0x0

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

    :goto_42
    invoke-virtual {v7, v5, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v7

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_43
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_44
    move/from16 v16, v8

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_45
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_46
    if-lt v13, v12, :cond_6

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-int/lit8 v13, v13, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget v10, v7, Lmkk;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-string v5, "run"

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4b
    add-int/lit8 v6, v9, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v7

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    :goto_4f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_50
    new-instance v3, Landroid/database/MatrixCursor;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

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

    :goto_52
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_53
    new-instance v14, Lmkk;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_56
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const-string v2, "_id"

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

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

    :goto_59
    invoke-direct {v3, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_5b
    move-object/from16 v8, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-wide v12, v7, Lmkk;->c:J

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

    nop

    :goto_5d
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_5e
    move/from16 v9, v16

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

    :goto_5f
    new-array v8, v3, [Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-eqz v8, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_62
    return-object v3

    nop

    nop

    :goto_63
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    move/from16 v9, v16

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_65
    invoke-virtual {v7, v4, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    move v13, v6

    nop

    :goto_69
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_6a
    invoke-direct {v14, v15, v6, v7, v8}, Lmkk;-><init>(Ljava/lang/String;IJ)V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    move v8, v6

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_67

    nop

    nop

    :goto_6e
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    aput-object v4, v8, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_70
    invoke-direct {v13, v14, v15, v11, v12}, Lmkk;-><init>(Ljava/lang/String;IJ)V

    goto/32 :goto_15

    nop

    nop

    :goto_71
    array-length v11, v11

    nop

    goto/32 :goto_2b

    nop

    nop
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Class;Lhqd;)V
    .locals 5

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-object v2, p0, Lhqe;->f:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v1, v2, v3}, Lhqe;->da190e616797844b591057d0190e7728m(Ljava/lang/String;Ljava/lang/String;Lrtm;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_5
    aget-object v3, p2, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v3, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lhqe;->e:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0, p3, v1}, Lhqb;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lmkp;->j:Lmko;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v3, "/"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v3, "TIMING_CREATION"

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_11
    if-lt v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    :goto_13
    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    check-cast v0, Ljava/lang/String;

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

    :goto_17
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    :goto_19
    goto/32 :goto_1f

    nop

    nop

    :goto_1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_14

    nop

    nop

    :goto_1f
    new-instance v0, Lhqb;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_1c

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Lhqe;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_24
    new-instance v3, Llar;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_27
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_28
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_29
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto :goto_1e

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v3, p0, p3, v0, v4}, Llar;-><init>(Lhqe;Lhqd;Ljava/lang/String;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2f
    invoke-static {p2}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_30
    check-cast p2, [Ljava/lang/Enum;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p0, v2, p1, v0}, Lhqe;->da190e616797844b591057d0190e7728m(Ljava/lang/String;Ljava/lang/String;Lrtm;)V

    goto/32 :goto_c

    nop

    nop

    :goto_33
    array-length v2, p2

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

    nop

    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method
