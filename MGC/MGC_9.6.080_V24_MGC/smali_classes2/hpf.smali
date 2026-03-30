.class public Lhpf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field static final d:[Ljava/lang/String;

.field private static final e:Lsdb;


# instance fields
.field private final f:Landroid/content/ContentResolver;

.field private final g:Ljava/lang/String;

.field private final h:Lhoh;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    const-string v9, "orientation"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    const-string v2, "date_modified"

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4
    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    const-string v11, "height"

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xc

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

    :goto_9
    const-string v4, "_id"

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

    :goto_a
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_d
    const-string v10, "width"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_f
    sput-object v0, Lhpf;->c:[Ljava/lang/String;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_10
    const-string v5, "CASE WHEN %s IS NULL THEN %s ELSE %s / 1000 END DESC, %s DESC"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v7, "datetaken"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sput-object v0, Lhpf;->a:Ljava/lang/String;

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

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    const-string v5, "title"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v1, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->WUZ:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v6, "mime_type"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1c
    filled-new-array {v1, v2, v1, v3}, [Ljava/lang/Object;

    move-result-object v4

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

    :goto_1d
    sput-object v0, Lhpf;->d:[Ljava/lang/String;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    const-string v2, "%s LIKE ? AND (%s > ? OR (%s > ? AND (%s = ? OR %s / 1000 = ? / 1000)))"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    sput-object v0, Lhpf;->b:Ljava/lang/String;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_21
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v3, "_id"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_24
    const-string v4, "relative_path"

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    filled-new-array {v4, v1, v2, v1, v1}, [Ljava/lang/Object;

    move-result-object v1

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

    :goto_26
    const-string v0, "hpf"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v12, "is_pending"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v8, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->UeqL:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_29
    sput-object v0, Lhpf;->e:Lsdb;

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
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lpsu;Lhoh;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p3, p0, Lhpf;->h:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p2}, Lj$/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const-string v0, "%"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

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

    nop

    :goto_6
    iput-object p1, p0, Lhpf;->f:Landroid/content/ContentResolver;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lhpf;->g:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    iget-object p2, p2, Lpsu;->p:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method static a(JZ)Landroid/net/Uri;
    .locals 0

    goto/32 :goto_7

    nop

    nop

    :goto_0
    invoke-virtual {p2, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

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
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Landroid/database/Cursor;)Lhpc;
    .locals 20

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_0
    const/4 v15, 0x0

    nop

    :goto_1
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

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

    :goto_5
    iput-object v12, v0, Lhpc;->b:Lpck;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "Item has unset DATE_MODIFIED. Perhaps scan failed, look for MediaProvider logs: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_7
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_8
    invoke-virtual {v0, v2, v3}, Lhpc;->b(J)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v15, v1, v13}, Lqrg;->C(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v15, :cond_0

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_46

    nop

    nop

    :goto_c
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v10}, Lhpc;->c(Lj$/time/Instant;)V

    goto/32 :goto_99

    nop

    nop

    :goto_e
    invoke-static {v2, v3, v0}, Lhpf;->a(JZ)Landroid/net/Uri;

    move-result-object v13

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_f
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v15, "image/png"

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_12
    goto/16 :goto_5d

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "orientation"

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v0, "title"

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

    nop

    :goto_15
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v5}, Lhpc;->f(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    const/4 v15, 0x0

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

    :goto_18
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_19
    if-gtz v14, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v15, "is_pending"

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1c
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1d
    const-string v0, "mime_type"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_1e
    invoke-virtual {v12}, Lscs;->c()Lsdo;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_1f
    return-object v0

    nop

    nop

    :goto_20
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v1, :cond_2

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

    :cond_2
    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v4}, Lhpc;->h(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-gtz v1, :cond_3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5f

    nop

    nop

    :goto_24
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    const-wide/16 v18, 0x0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v14, :cond_4

    nop

    goto/32 :goto_7f

    nop

    :cond_4
    :try_start_0
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_6c

    nop

    nop

    :goto_29
    const-string v15, "image/bmp"

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v15, 0x1

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_31
    new-instance v12, Lpck;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v0, v1}, Lrtt;-><init>(Ljava/lang/String;)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    nop

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

    nop

    :goto_34
    move/from16 v17, v12

    nop

    nop

    :try_start_1
    new-instance v12, Lpck;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v12, v15, v0}, Lpck;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v0, Lcom/google/vr/ndk/base/qbMr/qVSTXuYNqkCvm;->dUQokXyncZJoC:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_37
    invoke-static {v14, v15, v12, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v14, :cond_5

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

    :cond_5
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string v14, "height"

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_3a
    cmp-long v1, v8, v18

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

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

    :goto_3c
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

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

    :goto_3e
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_3f
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_40
    move/from16 p0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_42
    sget-object v12, Lhpf;->e:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_2f

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget v14, v12, Lpck;->b:I

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v2, v1}, Lrrf;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_48
    move-object v12, v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/16 v15, 0x443

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_4a
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_4b
    invoke-direct {v12, v15, v15}, Lpck;-><init>(II)V

    :goto_4c
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v15, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_4e
    if-eqz v15, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_50
    const-string v15, "image/gif"

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_51
    const-string v15, "image/webp"

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

    :goto_52
    const-string v0, "date_modified"

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_55
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_56
    invoke-static {}, Lhpd;->l()Lhpc;

    move-result-object v0

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

    :goto_57
    sget-object v16, Lhmq;->a:Ljava/lang/Float;

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_58
    iget v0, v12, Lpck;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_59
    move/from16 v1, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 v15, 0x1

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_5b
    const-string v1, "Item is still pending. Perhaps scan failed, look for MediaProvider logs: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5c
    move/from16 v17, v12

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_42

    nop

    nop

    :goto_5e
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-gtz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_60
    cmp-long v1, v6, v18

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_61
    new-instance v0, Lrtt;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_63
    xor-int/2addr v1, v15

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-direct {v12, v0, v14}, Lpck;-><init>(II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_68
    move/from16 v17, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v0, v13}, Lhpc;->i(Landroid/net/Uri;)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const-string v2, "Item has unset DATE_TAKEN (%s). Perhaps scan failed, look for MediaProvider logs: %s"

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6c
    goto/16 :goto_7f

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_6d
    if-gtz v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_8
    goto/32 :goto_9d

    nop

    nop

    :goto_6e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move/from16 v17, v12

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_71
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_72
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const-string v0, "_id"

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const-string v15, "Item has empty title. Perhaps scan failed, look for MediaProvider logs: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const/4 v15, 0x1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-static {v15, v0, v12, v13}, Lqrg;->E(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_78
    throw v0

    nop

    nop

    :goto_79
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_92

    nop

    nop

    :goto_7b
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const-string v14, "Exception in getting dimensions by BitmapFactory."

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-static {v5}, Lpuq;->aS(Ljava/lang/String;)Z

    move-result v0

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

    :goto_7e
    move-object v14, v0

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {v12, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7f
    throw v12

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_80
    invoke-static {v4}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_81
    if-eqz v15, :cond_9

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

    :cond_9
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_82
    invoke-static {v1, v15, v13}, Lqrg;->C(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v0, v1}, Lhpc;->g(I)V

    goto/32 :goto_1f

    nop

    nop

    :goto_86
    move-object/from16 v0, p0

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

    :goto_87
    if-nez p0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_a
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_88
    const-string v0, "width"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_89
    if-eqz v15, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :cond_b
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_8a
    const-string v0, "Item has invalid dimensions (%s). Perhaps scan failed, look for MediaProvider logs: %s"

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_8b
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8c
    const-string v15, "image/jpeg"

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_8d
    if-nez v15, :cond_c

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :cond_c
    :goto_8e
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    if-lez v0, :cond_d

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

    :cond_d
    goto/32 :goto_24

    nop

    :goto_90
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_91
    const/4 v15, 0x0

    nop

    nop

    :goto_92
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

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

    :goto_94
    new-instance v12, Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_95
    invoke-static {v8, v9}, Lj$/time/Instant;->ofEpochSecond(J)Lj$/time/Instant;

    move-result-object v11

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

    :goto_96
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_97
    invoke-virtual {v0, v15}, Lhpc;->d(Z)V

    goto/32 :goto_5

    nop

    nop

    :goto_98
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v0, v11}, Lhpc;->e(Lj$/time/Instant;)V

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_9a
    invoke-static {v6, v7}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object v0, v0, Lhpf;->f:Landroid/content/ContentResolver;

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v0, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v15, 0x1

    nop

    iput-boolean v15, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    nop

    nop

    nop

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x0

    nop

    nop

    nop

    invoke-static {v14, v15, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    nop

    nop

    nop

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    move/from16 p0, v1

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_9d
    const/4 v15, 0x1

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

    :goto_9e
    if-eqz v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :cond_e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9f
    invoke-static {v15, v1, v13}, Lqrg;->C(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final c(Landroid/net/Uri;Llxm;)Lhpd;
    .locals 8

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    move-object v2, v3

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
    move-object v3, p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    if-ne v3, v4, :cond_1

    nop

    nop

    nop

    move v1, v4

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/16 :goto_1e

    nop

    nop

    nop

    :cond_1
    :goto_3
    const-string v3, "Uri %s for shot(%s) not found in MediaStore. ContentResolver returned the cursor with count=%s, columns=%s"

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_13

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v4, p2

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static/range {v1 .. v6}, Lrrf;->v(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lhpf;->b(Landroid/database/Cursor;)Lhpc;

    move-result-object p0

    nop

    nop

    iput-object p2, p0, Lhpc;->a:Llxm;

    nop

    nop

    nop

    invoke-virtual {p0}, Lhpc;->a()Lhpd;

    move-result-object p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v4, "null"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lhpf;->f:Landroid/content/ContentResolver;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object v7, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    move-object v6, v2

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1a
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1b
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_5
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v0, v7

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    goto :goto_21

    nop

    :goto_20
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_6

    nop

    move-object v7, v2

    nop

    nop

    move-object v6, v4

    nop

    nop

    goto :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v0, Lhpf;->c:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_23
    throw p0

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_25
    move-object v5, v4

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

    :goto_26
    return-object p0

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop
.end method

.method public final d(Landroid/net/Uri;[Ljava/lang/String;JJILjava/util/function/Function;)Ljava/util/List;
    .locals 7

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2
    if-eq p2, v1, :cond_0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "Invalid projection specified."

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

    :goto_4
    filled-new-array {v1, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

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

    nop

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    :goto_a
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    sget-object v3, Lhpf;->b:Ljava/lang/String;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_d

    nop

    :catch_0
    move-exception v0

    nop

    nop

    :try_start_0
    sget-object v5, Lhpf;->e:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-interface {v5, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const/16 v5, 0x446

    nop

    nop

    nop

    invoke-interface {v0, v5}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v5, "QueryAfter gets exception in transforming a cursor."

    nop

    invoke-interface {v0, v5}, Lscz;->s(Ljava/lang/String;)V

    sget-object v0, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_28

    nop

    nop

    :cond_3
    :goto_e
    invoke-virtual {v2}, Lrxw;->g()Lryb;

    move-result-object v0

    nop

    nop

    nop

    nop

    move-object v2, v0

    nop

    check-cast v2, Lsbh;

    nop

    nop

    iget v2, v2, Lsbh;->c:I

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lhpf;->f:Landroid/content/ContentResolver;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

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

    :goto_12
    move-object v1, p1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v1, Lhpf;->c:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    if-ne p2, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x0

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    throw v2

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1a

    nop

    :goto_1c
    goto/32 :goto_23

    nop

    nop

    :goto_1d
    if-nez v1, :cond_5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_16

    nop

    nop

    :goto_1e
    const v1, 0x16

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

    :goto_1f
    sget-object v5, Lhpf;->a:Ljava/lang/String;

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

    :goto_20
    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

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

    :goto_21
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Lhpf;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_23
    sget-object v1, Lhpf;->d:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_25
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_27
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    nop

    nop

    nop

    nop

    :try_start_2
    new-instance v2, Lrxw;

    nop

    nop

    invoke-direct {v2}, Lrxw;-><init>()V

    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_e

    nop

    nop

    nop

    :cond_6
    move v0, p7

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_3

    nop

    nop

    nop

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_2a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v3, v0, -0x1

    nop

    nop

    nop

    :try_start_3
    invoke-interface {p8, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    invoke-virtual {v2, v0}, Lrxw;->h(Ljava/lang/Object;)V
    :try_end_3
    .catch Lrtt; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

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

    :goto_2d
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v3, v1}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2f
    move-object v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_30
    move-object v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop
.end method

.method public final e(Lj$/time/Instant;Lj$/time/Instant;Z)Ljava/util/List;
    .locals 10

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v8, 0x7fffffff

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-direct {v9, p3, p1}, Lhpe;-><init>(ZI)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1a

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

    :goto_4
    if-nez p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v9, Lhpe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_7
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v0, v1}, Lj$/time/Instant;->minusMillis(J)Lj$/time/Instant;

    move-result-object p1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    const-wide/16 v0, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    :goto_d
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    :goto_f
    return-object p0

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x4

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    invoke-virtual {p2, v0, v1}, Lj$/time/Instant;->minusSeconds(J)Lj$/time/Instant;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    move-object v2, v0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual/range {v1 .. v9}, Lhpf;->d(Landroid/net/Uri;[Ljava/lang/String;JJILjava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v6

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

    :goto_1b
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1c
    sget-object v3, Lhpf;->d:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
