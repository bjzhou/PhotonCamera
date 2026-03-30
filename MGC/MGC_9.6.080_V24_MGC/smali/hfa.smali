.class public Lhfa;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;

.field public static final b:Ljava/util/regex/Pattern;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lhek;

.field public final e:Lptw;

.field public final f:Lhgd;

.field public g:I

.field public h:I

.field public final i:Lrtm;

.field public j:Lqek;

.field private final k:Liof;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "^([0-9]+)\\.([0-9]+)\\.([0-9]+).*"

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

    :goto_1
    sput-object v0, Lhfa;->a:Lsdb;

    nop

    goto/32 :goto_0

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

    goto/32 :goto_5

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

    :goto_4
    const-string v0, "hfa"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lhfa;->b:Ljava/util/regex/Pattern;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Liof;Lhek;Lptw;Lhgd;Lhoh;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p2, p6, p1, p3}, Lhqb;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhfa;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhfa;->i:Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-static {p2}, Lqrg;->H(Lrtm;)Lrtm;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Lhfa;->f:Lhgd;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const/4 p3, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lhfa;->k:Liof;

    nop

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

    :goto_9
    iput-object p4, p0, Lhfa;->e:Lptw;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    new-instance p2, Lhqb;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iput-object p3, p0, Lhfa;->d:Lhek;

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
.end method

.method static b(Lrdf;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Ljava/lang/String;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

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

    :goto_8
    invoke-static {v1}, Lhhg;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    sget-object p1, Lrcz;->k:Lrcz;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lrdf;->c()Lrdg;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    return-object p1

    nop

    nop

    :goto_d
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1}, Lhhg;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_11
    if-eqz v2, :cond_2

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

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    goto/32 :goto_1e

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    :goto_13
    iget-object v0, v0, Lrdg;->b:Lrss;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lrdf;->b()Lrcz;

    move-result-object v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_15
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    :try_start_0
    new-instance p1, Ljava/net/URI;

    nop

    nop

    nop

    nop

    invoke-direct {p1, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lhgf;->a(Ljava/net/URI;)Lrss;

    move-result-object p0

    nop
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, v1, Lrdg;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    const v1, 0x14

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

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lrdf;->c()Lrdg;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1d
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0}, Lhhg;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_14

    nop

    nop

    :goto_21
    sget-object v3, Lrcz;->d:Lrcz;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object p1, v0

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_23

    nop

    nop

    :goto_25
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto :goto_23

    nop

    :goto_27
    goto/32 :goto_22

    nop

    nop

    :goto_28
    if-eq v2, v3, :cond_4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz p1, :cond_5

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eq p0, p1, :cond_6

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

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lrdf;->b()Lrcz;

    move-result-object p0

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

    :goto_2e
    const v0, 0x19

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method private static final c(Lrcz;)Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x1c

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrcz;->ordinal()I

    move-result p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    if-ne p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ne p0, v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    if-ne p0, v0, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne p0, v0, :cond_3

    nop

    goto/32 :goto_b

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lrdf;J)Lheo;
    .locals 28

    goto/32 :goto_247

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_217

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_2b4

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, v1, Lhfa;->j:Lqek;

    nop

    nop

    goto/32 :goto_2ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v12}, Ltkb;->o()V

    :goto_4
    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v7, v6, v0, v9, v8}, Lhgm;-><init>(Liof;Ljava/lang/String;I[I)V

    goto/32 :goto_261

    nop

    nop

    nop

    :goto_6
    invoke-direct {v8, v6, v0, v7, v9}, Lhgp;-><init>(Liof;Ljava/lang/String;Lrss;I)V

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v13, v5, Lrdc;->d:Lrss;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_8
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e8

    nop

    nop

    nop

    :goto_9
    check-cast v12, Lhgy;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v6, Lhgt;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_316

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v7, Lhgm;

    nop

    goto/32 :goto_2b2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_2d

    nop

    nop

    :goto_e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, v1, Lhfa;->c:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v13, v14, Lhgw;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_42

    nop

    nop

    :goto_12
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode;

    nop

    goto/32 :goto_35b

    nop

    nop

    :goto_13
    iput-object v6, v13, Lhha;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3a6

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v21, Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_30d

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v24, v0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_359

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-class v14, Landroid/net/wifi/WifiManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v11, "lpa"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, v9, Lhha;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3c8

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne v11, v12, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_325

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_364

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_343

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v13}, Lrss;->h()Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-gtz v5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    :cond_1
    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    :goto_1f
    iput v7, v4, Lhen;->e:I

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v14, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v11, Ljava/lang/String;

    nop

    goto/32 :goto_37b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_f4

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3a2

    nop

    nop

    nop

    :goto_24
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32d

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_20f

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v4, v0}, Lhen;->d(Lhel;)V

    goto/32 :goto_3a7

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v4, v9}, Lhen;->e(Z)V

    :goto_28
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual/range {p1 .. p1}, Lrdf;->d()Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f9

    nop

    nop

    nop

    :goto_2a
    sget-object v11, Lrcu;->b:Lrcu;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v13}, Lrss;->h()Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1db

    nop

    nop

    :goto_2c
    move-object/from16 v25, v0

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_16c

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_255

    nop

    :goto_2f
    goto/32 :goto_3e0

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_f4

    nop

    nop

    :pswitch_1
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v4, v12, v13, v0}, Lhhg;->E(Lrss;Lqek;II)Lhel;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_32
    sget-object v4, Lhge;->g:Lhge;

    nop

    goto/32 :goto_320

    nop

    nop

    :goto_33
    invoke-virtual/range {p1 .. p1}, Lrdf;->d()Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_338

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_28b

    nop

    nop

    :goto_35
    sget-object v11, Lrcu;->c:Lrcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_322

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v12, v11}, Lrth;->f(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v11

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v15, v0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v12, v0, Liof;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_257

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v11, v0}, Lhen;->b(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v11, v13, Lhge;->h:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_352

    nop

    nop

    nop

    :goto_3b
    new-instance v7, Lhgm;

    nop

    goto/32 :goto_2eb

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v14}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_3dc

    nop

    nop

    :goto_3d
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object v11, Lrcu;->a:Lrcu;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget v0, v0, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v20, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    :cond_3
    goto/32 :goto_39f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v13, v5, Lrdc;->f:Lrss;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    :goto_44
    sget-object v4, Lhge;->c:Lhge;

    nop

    goto/32 :goto_290

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_235

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move-wide/from16 v2, p2

    nop

    goto/32 :goto_386

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget v0, v0, Lhgd;->e:I

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_48
    iput v8, v4, Lhen;->e:I

    nop

    nop

    nop

    goto/32 :goto_2a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const v7, 0x7f0802ff

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast v0, Lhha;

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_4b
    if-eqz v14, :cond_4

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v6, 0x1

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    :goto_4d
    if-nez v8, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d3

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3f8

    nop

    nop

    nop

    :goto_4e
    iget-object v14, v13, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v5, v6, Lhgt;->b:Landroid/net/wifi/WifiConfiguration;

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move-object v13, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_267

    nop

    nop

    :goto_52
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_279

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual/range {p1 .. p1}, Lrdf;->m()Lrss;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v13, v5, Lrdc;->g:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v5, Landroid/content/Context;

    nop

    goto/32 :goto_3f6

    nop

    nop

    :goto_56
    goto/16 :goto_cf

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_a4

    nop

    nop

    :goto_57
    invoke-direct {v6, v15, v9, v0}, Lhgn;-><init>(Liof;I[Ljava/lang/Object;)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual/range {p1 .. p1}, Lrdf;->g()Lrss;

    move-result-object v12

    nop

    nop

    goto/32 :goto_378

    nop

    nop

    nop

    :goto_59
    move v0, v10

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_2a0

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_29f

    nop

    nop

    :goto_5c
    iget-object v12, v5, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_256

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v11}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v11

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_5f
    invoke-static {v13, v14}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :goto_60
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-nez v5, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_d1

    nop

    nop

    :goto_63
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v12, v0, Lhgd;->b:Landroid/content/Context;

    nop

    goto/32 :goto_394

    nop

    nop

    nop

    :goto_65
    check-cast v15, Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v12}, Lrss;->h()Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_67
    invoke-static {v12}, Lhgz;->b(I)Lhgz;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_420

    nop

    nop

    nop

    :goto_68
    invoke-virtual/range {p1 .. p1}, Lrdf;->t()Lrss;

    move-result-object v5

    nop

    nop

    goto/32 :goto_3fc

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v13, v5, Lrdc;->e:Lrss;

    nop

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v13}, Ltkb;->o()V

    :goto_6b
    goto/32 :goto_25b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {v11}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_6d
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const/16 v8, 0x3d8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22b

    nop

    nop

    :goto_6f
    if-nez v11, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_30f

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v12}, Ltkb;->i()Ltkg;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_221

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_5e

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_73
    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_74
    array-length v5, v5

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_75
    const/16 v12, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_76
    const/4 v6, 0x2

    nop

    goto/32 :goto_3ef

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v4, v2, v3}, Lhen;->g(J)V

    goto/32 :goto_7d

    nop

    nop

    :goto_78
    const/16 v12, 0x3d9

    nop

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    :goto_79
    iget-object v0, v1, Lhfa;->f:Lhgd;

    nop

    goto/32 :goto_33f

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    check-cast v14, Lhgv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_362

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_315

    nop

    :goto_7c
    goto/32 :goto_121

    nop

    nop

    :goto_7d
    invoke-virtual/range {p1 .. p1}, Lrdf;->A()Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_3be

    nop

    nop

    nop

    nop

    :goto_7f
    move-object v15, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_3af

    nop

    nop

    :goto_80
    invoke-virtual {v0, v11}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_81
    move-object v14, v13

    nop

    goto/32 :goto_3ca

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_83
    if-eqz v8, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d3

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_40e

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v13, v5, Lrdc;->b:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e1

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-ne v10, v12, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f7

    nop

    :cond_9
    goto/32 :goto_396

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v13, v5, Lrdc;->f:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_87
    const v5, 0x7f0803c2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_327

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_38f

    nop

    nop

    nop

    nop

    nop

    :goto_89
    goto/16 :goto_2f2

    nop

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v5, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_8c
    invoke-static {v11}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v11

    nop

    nop

    nop

    nop

    :goto_8d
    goto/32 :goto_188

    nop

    nop

    nop

    nop

    :goto_8e
    instance-of v5, v6, Lhgo;

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    :goto_8f
    goto/16 :goto_108

    nop

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_3fb

    nop

    nop

    nop

    nop

    :goto_91
    move-object/from16 v22, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    new-instance v5, Lhgj;

    nop

    nop

    goto/32 :goto_246

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget v0, v0, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    nop

    nop

    nop

    nop

    goto/32 :goto_236

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v4, v13, Lhge;->i:Ljava/lang/Integer;

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    :goto_95
    move-object/from16 v20, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_387

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-direct {v7, v6, v0, v8}, Lhgm;-><init>(Liof;Ljava/lang/String;I)V

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_97
    const/4 v5, -0x1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-eqz v12, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    :cond_a
    goto/32 :goto_20b

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v13}, Lrss;->c()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v11, v0}, Lhen;->c(I)V

    goto/32 :goto_34a

    nop

    nop

    :goto_9b
    invoke-virtual {v11}, Lrss;->h()Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_371

    nop

    nop

    :goto_9c
    invoke-virtual {v13}, Ltkb;->o()V

    :goto_9d
    goto/32 :goto_23b

    nop

    nop

    nop

    :goto_9e
    check-cast v12, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36b

    nop

    nop

    nop

    nop

    :goto_9f
    goto/16 :goto_306

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_305

    nop

    nop

    nop

    nop

    :goto_a1
    goto/16 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    const v7, 0x7f140595

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    const v5, 0x7f080459

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v13}, Lrss;->c()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v12, v6, Ltkb;->b:Ltkg;

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

    :goto_a7
    iget v0, v0, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_a8
    const-string v11, "upi"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v11}, Lhgz;->ordinal()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    :goto_aa
    iget-object v0, v1, Lhfa;->k:Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_274

    nop

    nop

    :goto_ab
    const-string v11, "fido"

    nop

    nop

    nop

    nop

    goto/32 :goto_3e2

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_ad
    iput v5, v14, Lhgv;->b:I

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-direct {v7, v6, v0, v8}, Lhgm;-><init>(Liof;Ljava/lang/String;I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto/16 :goto_287

    nop

    nop

    :goto_b0
    goto/32 :goto_286

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_3ab

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_41a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3b0

    nop

    nop

    nop

    :goto_b3
    iget-object v12, v12, Lrdg;->b:Lrss;

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

    :goto_b4
    instance-of v7, v6, Lhgo;

    nop

    goto/32 :goto_400

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iget-object v11, v5, Lhgj;->g:Lrss;

    nop

    goto/32 :goto_149

    nop

    nop

    :goto_b6
    invoke-virtual {v12}, Ltkb;->o()V

    :goto_b7
    goto/32 :goto_36c

    nop

    nop

    nop

    :goto_b8
    check-cast v0, Landroid/content/Context;

    nop

    nop

    goto/32 :goto_27c

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-static {}, Lheo;->a()Lhen;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    :goto_ba
    if-eqz v4, :cond_c

    nop

    nop

    goto/32 :goto_228

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_bb
    check-cast v14, Landroid/net/wifi/WifiManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_bc
    invoke-static {v15}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v15

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v13}, Lrss;->h()Z

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_369

    nop

    nop

    :goto_be
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_373

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object v13, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_34e

    nop

    nop

    :goto_c0
    invoke-interface {v15}, Ltkv;->c()Z

    move-result v17

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_35a

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {v12}, Ltkg;->m()Ltkb;

    move-result-object v12

    nop

    goto/32 :goto_204

    nop

    nop

    nop

    :goto_c3
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode;

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    iget-object v13, v5, Lrdc;->b:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object v13, v12, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    check-cast v13, Ljava/lang/String;

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_c7
    move-object v15, v0

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object v15, v14, Lhgw;->d:Ltkv;

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_c9
    invoke-direct/range {v11 .. v17}, Leqn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_157

    nop

    nop

    nop

    :goto_ca
    if-nez v12, :cond_d

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2b3

    nop

    nop

    :goto_cb
    invoke-virtual {v12, v11, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_cc
    iget v11, v9, Lhha;->c:I

    nop

    nop

    goto/32 :goto_275

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual/range {p1 .. p1}, Lrdf;->c()Lrdg;

    move-result-object v12

    nop

    nop

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

    :goto_ce
    const v5, 0x7f080470

    nop

    nop

    nop

    nop

    :goto_cf
    goto/32 :goto_29d

    nop

    nop

    nop

    nop

    :goto_d0
    move-object/from16 v23, v0

    nop

    :goto_d1
    goto/32 :goto_23c

    nop

    nop

    nop

    nop

    :goto_d2
    if-nez v5, :cond_e

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_18a

    nop

    nop

    nop

    :goto_d3
    iget-object v0, v5, Lhgj;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3bb

    nop

    nop

    :goto_d4
    const/16 v12, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e6

    nop

    nop

    :goto_d5
    iget v13, v0, Lhgd;->d:I

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_d6
    goto/16 :goto_5e

    nop

    nop

    :goto_d7
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_d8
    sget-object v6, Lhgt;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2bf

    nop

    nop

    nop

    :goto_d9
    sget-object v13, Lhgv;->a:Lhgv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d9

    nop

    nop

    nop

    nop

    nop

    :goto_da
    invoke-static {v6}, Lrth;->b(C)Lrth;

    move-result-object v12

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

    :goto_db
    check-cast v13, Lhha;

    nop

    nop

    goto/32 :goto_21b

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_219

    nop

    nop

    nop

    :goto_dd
    iget-object v0, v9, Lhha;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    :goto_de
    move-object v5, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    :goto_df
    check-cast v5, Lhgy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    move v9, v10

    nop

    nop

    :goto_e1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-direct {v6, v15, v7, v0}, Lhgn;-><init>(Liof;I[Ljava/lang/Object;)V

    goto/32 :goto_32a

    nop

    nop

    :goto_e3
    iput-object v5, v14, Lhgv;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    :goto_e4
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_e5
    iget-object v0, v9, Lhha;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_382

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    iget-object v12, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e1

    nop

    nop

    :goto_e7
    goto/16 :goto_90

    nop

    nop

    nop

    :goto_e8
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    const v9, 0x7f140596

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_ea
    iput v8, v11, Lhen;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_258

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    if-eqz v12, :cond_f

    nop

    goto/32 :goto_1ea

    nop

    :cond_f
    goto/32 :goto_1e9

    nop

    nop

    nop

    :goto_ec
    invoke-interface {v15}, Ltkv;->c()Z

    move-result v17

    nop

    goto/32 :goto_411

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-static {v12}, Lrth;->b(C)Lrth;

    move-result-object v11

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    :goto_ee
    if-nez v7, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_308

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_38a

    nop

    nop

    :goto_ef
    move-object v6, v8

    nop

    goto/32 :goto_248

    nop

    nop

    :goto_f0
    if-eqz v5, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-static {v12}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_f2
    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_f3
    invoke-direct/range {v19 .. v24}, Lhgk;-><init>(Liof;Liof;Lrss;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f4
    goto/32 :goto_383

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_391

    nop

    nop

    nop

    :goto_f6
    iget-object v5, v12, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->status:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-static {v4, v11}, Lhgd;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    nop

    goto/32 :goto_264

    nop

    nop

    nop

    nop

    :goto_f8
    goto/16 :goto_3e7

    nop

    nop

    nop

    :goto_f9
    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    :goto_fa
    if-eqz v13, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_fb
    iget-object v0, v9, Lhha;->b:Ljava/lang/String;

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    :goto_fc
    if-nez v4, :cond_13

    nop

    goto/32 :goto_260

    nop

    :cond_13
    goto/32 :goto_276

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {v4}, Lhen;->a()Lheo;

    move-result-object v0

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    iget-object v0, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_ff
    invoke-virtual {v12}, Lrss;->c()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_100
    iput-object v13, v14, Lhgw;->f:Ljava/lang/String;

    nop

    nop

    nop

    :goto_101
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    invoke-direct {v6, v15, v7, v0}, Lhgn;-><init>(Liof;I[Ljava/lang/Object;)V

    goto/32 :goto_2e4

    nop

    nop

    nop

    nop

    :goto_103
    iget-object v11, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_37e

    nop

    nop

    nop

    nop

    nop

    :goto_104
    if-nez v5, :cond_14

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :cond_14
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_105
    invoke-virtual {v13}, Ltkb;->o()V

    :goto_106
    goto/32 :goto_313

    nop

    nop

    nop

    nop

    :goto_107
    sget-object v4, Lhge;->a:Lhge;

    nop

    nop

    :goto_108
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_109
    if-nez v7, :cond_15

    nop

    goto/32 :goto_2e5

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_20e

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    if-eqz v12, :cond_16

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    :cond_16
    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    :goto_10c
    iget-object v11, v0, Lhgd;->b:Landroid/content/Context;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10d
    or-int/2addr v5, v10

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-virtual {v5}, Ltkg;->m()Ltkb;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_37d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    iget-object v0, v0, Liof;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_281

    nop

    nop

    :goto_110
    sget-object v13, Lhmx;->t:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_273

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    check-cast v7, Ltkg;

    nop

    nop

    nop

    goto/32 :goto_381

    nop

    nop

    nop

    :goto_112
    invoke-virtual {v11, v0}, Lhen;->d(Lhel;)V

    goto/32 :goto_271

    nop

    nop

    :goto_113
    sget-object v4, Lrcz;->u:Lrcz;

    nop

    goto/32 :goto_38b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    const/4 v12, 0x4

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    iput-object v0, v4, Lhen;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    :goto_116
    goto/32 :goto_28d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    iget-object v13, v5, Lrdc;->a:Lrss;

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_118
    if-eqz v6, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_119
    const-string v11, "bluetooth"

    nop

    nop

    goto/32 :goto_23e

    nop

    nop

    nop

    :goto_11a
    move v8, v10

    nop

    goto/32 :goto_22c

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    iget-object v14, v13, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_11c
    invoke-virtual {v5}, Ltkb;->o()V

    :goto_11d
    goto/32 :goto_19f

    nop

    nop

    :goto_11e
    if-nez v7, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_31a

    nop

    nop

    nop

    :goto_11f
    const v7, 0x7f140598

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_120
    const/16 v1, 0x100

    nop

    nop

    nop

    goto/32 :goto_366

    nop

    nop

    nop

    nop

    nop

    :goto_121
    move-object v9, v0

    nop

    goto/32 :goto_2aa

    nop

    nop

    nop

    nop

    :goto_122
    instance-of v7, v6, Lhgt;

    nop

    nop

    nop

    nop

    goto/32 :goto_309

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_123
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_124
    const v5, 0x7f08045e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_336

    nop

    nop

    nop

    :goto_125
    iget-object v9, v5, Lhgj;->d:Lrss;

    nop

    nop

    goto/32 :goto_333

    nop

    nop

    nop

    :goto_126
    if-nez v5, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_2f6

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_205

    nop

    nop

    nop

    nop

    nop

    :goto_127
    iput-object v5, v15, Lhgv;->f:Ljava/lang/String;

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    move-object/from16 v21, v8

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_129
    check-cast v14, Lhgw;

    nop

    goto/32 :goto_335

    nop

    nop

    nop

    nop

    :goto_12a
    iget-object v0, v0, Lhha;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_404

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    goto/16 :goto_28f

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_3f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    iput-wide v13, v6, Lhgx;->b:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2de

    nop

    nop

    nop

    nop

    :goto_12d
    sget-object v8, Lrcu;->d:Lrcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f4

    nop

    nop

    nop

    nop

    :goto_12e
    iget v0, v0, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-virtual {v6}, Ltkb;->o()V

    :goto_130
    goto/32 :goto_a6

    nop

    nop

    :goto_131
    iput v2, v4, Lhen;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_399

    nop

    nop

    nop

    nop

    :goto_132
    invoke-static {v5}, Lhgi;->a(Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;)Lhgu;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28a

    nop

    nop

    nop

    nop

    nop

    :goto_133
    if-eqz v14, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_1a
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_134
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_135
    iput-object v4, v11, Lhen;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    nop

    :goto_136
    invoke-virtual/range {p1 .. p1}, Lrdf;->d()Lrss;

    move-result-object v0

    nop

    goto/32 :goto_360

    nop

    nop

    nop

    nop

    :goto_137
    invoke-virtual {v11, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    :goto_138
    invoke-direct {v6, v15, v13, v0}, Lhgn;-><init>(Liof;I[Ljava/lang/Object;)V

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_139
    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_3b8

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    iget-object v13, v5, Lrdc;->a:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3a4

    nop

    nop

    :goto_13e
    const-string v7, "WEP passwords must be 5, 13, 16, or 29 ASCII characters, or 10, 26, 32, or 58 hex characters."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_13f
    invoke-static {v13, v14}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :goto_140
    goto/32 :goto_39c

    nop

    nop

    nop

    :goto_141
    if-eqz v17, :cond_1b

    nop

    nop

    goto/32 :goto_14e

    nop

    :cond_1b
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_142
    invoke-direct/range {v19 .. v27}, Lhgj;-><init>(Lhgs;Ljava/lang/String;Lrss;Lrss;Lrss;Lrss;Lrss;Lrss;)V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_143
    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

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

    :goto_144
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_389

    nop

    nop

    nop

    nop

    :goto_145
    iget v12, v9, Lhha;->c:I

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

    :goto_146
    invoke-virtual {v5}, Ltkb;->o()V

    :goto_147
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_148
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_201

    nop

    nop

    :goto_149
    invoke-virtual {v11}, Lrss;->h()Z

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    iget-object v6, v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->ssid:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2df

    nop

    nop

    :goto_14b
    check-cast v7, Landroid/content/Context;

    nop

    goto/32 :goto_3c5

    nop

    nop

    nop

    :goto_14c
    if-ne v10, v12, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    iput-object v15, v14, Lhgw;->c:Ltkv;

    nop

    nop

    :goto_14e
    goto/32 :goto_35f

    nop

    nop

    nop

    :goto_14f
    invoke-direct {v7, v6, v0, v8}, Lhgm;-><init>(Liof;Ljava/lang/String;I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_150
    const/4 v13, 0x3

    nop

    nop

    packed-switch v11, :pswitch_data_0

    :pswitch_4
    goto/32 :goto_39a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_151
    invoke-static {v4, v11}, Lhgd;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_351

    nop

    nop

    nop

    nop

    nop

    :goto_152
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2bd

    nop

    nop

    nop

    :goto_153
    if-nez v13, :cond_1d

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1d
    goto/32 :goto_277

    nop

    nop

    nop

    nop

    :goto_154
    if-nez v4, :cond_1e

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_10c

    nop

    nop

    :goto_155
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    new-instance v6, Lhgn;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_157
    invoke-static {}, Lheo;->a()Lhen;

    move-result-object v11

    nop

    goto/32 :goto_231

    nop

    nop

    :goto_158
    const/16 v12, 0x3b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22a

    nop

    nop

    nop

    :goto_159
    if-eqz v11, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :cond_1f
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_15a
    if-ne v11, v10, :cond_20

    nop

    nop

    goto/32 :goto_296

    nop

    nop

    :cond_20
    goto/32 :goto_2a9

    nop

    nop

    :goto_15b
    const/4 v10, 0x0

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_254

    nop

    nop

    :goto_15c
    sget-object v12, Lhgx;->a:Lhgx;

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_15d
    invoke-virtual {v13}, Lrss;->h()Z

    move-result v13

    nop

    goto/32 :goto_301

    nop

    nop

    nop

    nop

    :goto_15e
    invoke-virtual {v6}, Lhgz;->a()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_38d

    nop

    nop

    :goto_15f
    if-ne v10, v12, :cond_21

    nop

    nop

    nop

    goto/32 :goto_1f8

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_2db

    nop

    nop

    nop

    nop

    nop

    :goto_160
    const/16 v4, 0x13

    nop

    goto/32 :goto_266

    nop

    nop

    nop

    :goto_161
    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

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

    :goto_162
    iget-object v11, v11, Lrdg;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_163
    const v1, 0x13

    nop

    nop

    goto/32 :goto_3d2

    nop

    nop

    nop

    nop

    :goto_164
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_34f

    nop

    nop

    :goto_165
    new-instance v6, Lhgl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_166
    if-nez v5, :cond_22

    nop

    goto/32 :goto_26b

    nop

    :cond_22
    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_167
    invoke-direct {v0, v6, v7}, Lhbp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3bc

    nop

    nop

    nop

    nop

    nop

    :goto_168
    invoke-static {v5}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_218

    nop

    nop

    nop

    nop

    :goto_169
    invoke-virtual {v11, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_16a
    goto/16 :goto_f4

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_165

    nop

    nop

    nop

    :goto_16b
    iget-object v0, v5, Lhgj;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_27b

    nop

    nop

    nop

    nop

    :goto_16c
    invoke-virtual/range {p1 .. p1}, Lrdf;->t()Lrss;

    move-result-object v5

    nop

    goto/32 :goto_28c

    nop

    nop

    nop

    nop

    :goto_16d
    sget-object v12, Lhgw;->a:Lhgw;

    nop

    goto/32 :goto_3ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_2ed

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    iput-object v13, v14, Lhgw;->g:Ljava/lang/String;

    nop

    nop

    nop

    :goto_170
    goto/32 :goto_375

    nop

    nop

    nop

    nop

    :goto_171
    if-ne v7, v6, :cond_23

    nop

    nop

    goto/32 :goto_32b

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_d8

    nop

    nop

    :goto_172
    invoke-virtual/range {p1 .. p1}, Lrdf;->i()Lrss;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_412

    nop

    nop

    :goto_173
    const/4 v7, 0x2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_174
    check-cast v5, Lhgv;

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    :goto_175
    new-instance v6, Lhgn;

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_176
    iget v0, v0, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_206

    nop

    nop

    nop

    nop

    :goto_177
    if-eqz v14, :cond_24

    nop

    goto/32 :goto_b7

    nop

    nop

    :cond_24
    goto/32 :goto_b6

    nop

    nop

    :goto_178
    iput-wide v5, v13, Lhgx;->c:D

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_179
    check-cast v5, Lhgw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    const/16 v12, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    :goto_17b
    invoke-virtual {v4, v0}, Lhen;->b(I)V

    goto/32 :goto_2f0

    nop

    nop

    nop

    nop

    :goto_17c
    if-eqz v13, :cond_25

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    :cond_25
    goto/32 :goto_385

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    if-eqz v7, :cond_26

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    :goto_17e
    invoke-virtual {v11, v15}, Lrth;->f(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_17f
    if-ne v10, v12, :cond_27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f8

    nop

    nop

    :cond_27
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_180
    invoke-interface {v11, v12}, Lscz;->M(I)Lsdo;

    move-result-object v11

    nop

    nop

    goto/32 :goto_2d5

    nop

    nop

    nop

    nop

    :goto_181
    move-object v6, v15

    nop

    nop

    nop

    goto/32 :goto_21c

    nop

    nop

    nop

    nop

    :goto_182
    return-object v0

    nop

    :goto_183
    goto/32 :goto_1

    nop

    nop

    :goto_184
    if-nez v0, :cond_28

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_185
    if-eqz v15, :cond_29

    nop

    goto/32 :goto_106

    nop

    nop

    :cond_29
    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_186
    if-nez v11, :cond_2a

    nop

    nop

    nop

    nop

    goto/32 :goto_374

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_187
    const-string v11, "shc"

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_188
    move-object v12, v11

    nop

    nop

    nop

    goto/32 :goto_41c

    nop

    nop

    nop

    nop

    nop

    :goto_189
    const-string v13, "BLUETOOTH:UUID:184F"

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    :goto_18a
    invoke-virtual/range {p1 .. p1}, Lrdf;->x()Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_33a

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    invoke-virtual {v13}, Lryb;->isEmpty()Z

    move-result v13

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_18c
    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    :goto_18d
    goto/32 :goto_312

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_329

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    invoke-interface {v11, v13, v12}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_230

    nop

    nop

    nop

    :goto_190
    iput-object v5, v14, Lhgv;->h:Lhgu;

    nop

    nop

    nop

    goto/32 :goto_2c5

    nop

    nop

    nop

    nop

    nop

    :goto_191
    invoke-virtual/range {p1 .. p1}, Lrdf;->A()Lrss;

    move-result-object v4

    nop

    goto/32 :goto_3ce

    nop

    nop

    nop

    nop

    :goto_192
    if-nez v10, :cond_2b

    nop

    goto/32 :goto_2b8

    nop

    nop

    :cond_2b
    goto/32 :goto_3e5

    nop

    nop

    nop

    nop

    :goto_193
    check-cast v15, Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_372

    nop

    nop

    nop

    nop

    :goto_194
    const v7, 0x7f140599

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_243

    nop

    nop

    nop

    nop

    :goto_195
    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_196
    check-cast v6, Lhha;

    nop

    nop

    nop

    nop

    goto/32 :goto_36a

    nop

    nop

    nop

    nop

    :goto_197
    goto/16 :goto_315

    nop

    nop

    :goto_198
    goto/32 :goto_244

    nop

    nop

    nop

    :goto_199
    iget-object v11, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_19a
    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_19b
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    :goto_19c
    goto/32 :goto_3a5

    nop

    nop

    nop

    nop

    :goto_19d
    new-instance v7, Lhgq;

    nop

    nop

    nop

    nop

    goto/32 :goto_302

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    const-string v9, "android.permission.CHANGE_WIFI_STATE"

    nop

    nop

    nop

    goto/32 :goto_368

    nop

    nop

    :goto_19f
    iget-object v6, v5, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    :goto_1a0
    check-cast v14, Lhgw;

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a1
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1a3
    iget-object v5, v12, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->start:Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;

    nop

    nop

    goto/32 :goto_328

    nop

    nop

    :goto_1a4
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

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

    :goto_1a5
    invoke-virtual {v12}, Ltkb;->o()V

    :goto_1a6
    goto/32 :goto_2b6

    nop

    nop

    nop

    :goto_1a7
    goto/16 :goto_2af

    nop

    nop

    :goto_1a8
    goto/32 :goto_41e

    nop

    nop

    nop

    nop

    :goto_1a9
    goto/16 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :cond_2c
    :try_start_0
    const-string v0, "Open WiFi network should not have a password specified"

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    new-array v7, v6, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    invoke-static {v6, v0, v7}, Lrcv;->a(ILjava/lang/String;[Ljava/lang/Object;)Lrcv;

    move-result-object v0

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    :cond_2d
    const-string v0, "SSID must have a length of 1-32 chars. SSID is: %s"

    nop

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v0, v6}, Lrcv;->a(ILjava/lang/String;[Ljava/lang/Object;)Lrcv;

    move-result-object v0

    nop

    throw v0

    nop
    :try_end_0
    .catch Lrcv; {:try_start_0 .. :try_end_0} :catch_1

    :catch_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1aa
    invoke-virtual {v6}, Ltkb;->o()V

    :goto_1ab
    goto/32 :goto_2d8

    nop

    nop

    nop

    nop

    :goto_1ac
    invoke-virtual/range {p1 .. p1}, Lrdf;->g()Lrss;

    move-result-object v12

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    iget-object v15, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21a

    nop

    nop

    :goto_1ae
    move-object/from16 v4, v18

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    :goto_1af
    const/16 v17, 0x0

    nop

    nop

    nop

    goto/32 :goto_36f

    nop

    nop

    nop

    nop

    :goto_1b0
    check-cast v0, Lheo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25f

    nop

    nop

    nop

    nop

    :goto_1b1
    iget-object v0, v5, Lhgj;->g:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_1b2
    goto/16 :goto_e1

    nop

    nop

    :goto_1b3
    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_1b4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    invoke-virtual {v5}, Ltkb;->o()V

    :goto_1b6
    goto/32 :goto_304

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    new-instance v0, Lhbp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b8
    if-ne v7, v6, :cond_2e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32b

    nop

    nop

    :cond_2e
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    invoke-virtual {v11}, Lhen;->a()Lheo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    :goto_1ba
    const-string v12, "BN:"

    nop

    nop

    goto/32 :goto_2f4

    nop

    nop

    nop

    nop

    :goto_1bb
    invoke-virtual {v7, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_410

    nop

    nop

    nop

    nop

    :goto_1bc
    invoke-virtual {v11, v2, v3}, Lhen;->f(J)V

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_1bd
    sget-object v10, Lhha;->a:Lhha;

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1be
    if-ne v0, v4, :cond_2f

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    sget-object v5, Lhha;->a:Lhha;

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_1c0
    iget-object v5, v6, Lhgt;->b:Landroid/net/wifi/WifiConfiguration;

    nop

    nop

    goto/32 :goto_263

    nop

    nop

    :goto_1c1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_127

    nop

    nop

    nop

    :goto_1c2
    check-cast v12, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_1c3
    const v7, 0x7f140593

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    nop

    :goto_1c4
    iput-object v13, v14, Lhgw;->b:Ljava/lang/String;

    nop

    nop

    nop

    :goto_1c5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c6
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_215

    nop

    nop

    nop

    nop

    :goto_1c7
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_227

    nop

    nop

    :goto_1c8
    goto/16 :goto_29b

    nop

    :goto_1c9
    goto/32 :goto_29a

    nop

    nop

    nop

    nop

    nop

    :goto_1ca
    move-object v11, v15

    nop

    nop

    nop

    nop

    nop

    :goto_1cb
    goto/32 :goto_2ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cc
    if-eqz v13, :cond_30

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_1aa

    nop

    nop

    :goto_1cd
    if-nez v12, :cond_31

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ce
    sget-object v0, Lhgi;->a:Lryh;

    nop

    nop

    nop

    goto/32 :goto_347

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cf
    if-eqz v9, :cond_32

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_229

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d0
    goto/16 :goto_108

    nop

    nop

    nop

    :goto_1d1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1d2
    check-cast v13, Lhgw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_358

    nop

    nop

    nop

    :goto_1d3
    if-eqz v12, :cond_33

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_146

    nop

    nop

    nop

    :goto_1d4
    const/16 v8, 0x3d7

    nop

    nop

    nop

    goto/32 :goto_2f3

    nop

    nop

    nop

    :goto_1d5
    if-eqz v13, :cond_34

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a4

    nop

    :cond_34
    goto/32 :goto_2a3

    nop

    nop

    :goto_1d6
    check-cast v0, Liof;

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_1d7
    invoke-virtual {v12, v8}, Lrcu;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_1d8
    iget-object v0, v0, Lhha;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d9
    if-eqz v14, :cond_35

    nop

    nop

    nop

    nop

    goto/32 :goto_330

    nop

    :cond_35
    goto/32 :goto_32f

    nop

    nop

    nop

    nop

    nop

    :goto_1da
    const/16 v7, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    :goto_1db
    if-nez v13, :cond_36

    nop

    goto/32 :goto_170

    nop

    :cond_36
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_1dc
    iget-object v0, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_299

    nop

    nop

    nop

    nop

    :goto_1dd
    const/16 v12, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    :goto_1de
    new-instance v6, Lhgn;

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_1df
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    nop

    nop

    goto/32 :goto_2b9

    nop

    nop

    nop

    nop

    :goto_1e0
    if-eqz v14, :cond_37

    nop

    goto/32 :goto_212

    nop

    nop

    :cond_37
    goto/32 :goto_211

    nop

    nop

    nop

    nop

    :goto_1e1
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b7

    nop

    nop

    nop

    nop

    nop

    :goto_1e2
    goto/16 :goto_cf

    nop

    :pswitch_6
    goto/32 :goto_3d7

    nop

    nop

    nop

    nop

    :goto_1e3
    invoke-static {v4, v11}, Lhgd;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_226

    nop

    nop

    nop

    nop

    :goto_1e4
    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_390

    nop

    nop

    :goto_1e5
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_334

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e6
    move-object/from16 v25, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1e7
    invoke-virtual {v13}, Lrss;->c()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_1e8
    const/4 v8, 0x2

    nop

    nop

    nop

    goto/32 :goto_3dd

    nop

    nop

    nop

    nop

    nop

    :goto_1e9
    invoke-virtual {v5}, Ltkb;->o()V

    :goto_1ea
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_1eb
    invoke-virtual {v13}, Ltkg;->C()Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41b

    nop

    nop

    nop

    nop

    :goto_1ec
    move-object/from16 v26, v5

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_1ed
    invoke-virtual/range {p1 .. p1}, Lrdf;->x()Lrss;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_342

    nop

    nop

    :goto_1ee
    move v9, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    nop

    :goto_1ef
    check-cast v14, Lhgv;

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_1f0
    iget-object v5, v12, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->end:Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_1f1
    iget-boolean v0, v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->isHidden:Z

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    :goto_1f2
    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop

    goto/32 :goto_421

    nop

    nop

    nop

    :goto_1f3
    invoke-virtual {v13}, Ltkb;->o()V

    :goto_1f4
    goto/32 :goto_413

    nop

    nop

    nop

    nop

    nop

    :goto_1f5
    goto :goto_1f7

    nop

    nop

    :goto_1f6
    :try_start_1
    const-string v0, "Invalid WEP password %s. %s"

    nop

    nop

    filled-new-array {v13, v7}, [Ljava/lang/Object;

    move-result-object v6

    nop

    const/4 v7, 0x4

    nop

    nop

    invoke-static {v7, v0, v6}, Lrcv;->a(ILjava/lang/String;[Ljava/lang/Object;)Lrcv;

    move-result-object v0

    nop

    nop

    nop

    throw v0

    nop

    nop

    :goto_1f7
    invoke-static {v13}, Lrcw;->b(Ljava/lang/String;)Z

    move-result v10

    nop

    nop

    nop

    if-eqz v10, :cond_38

    nop

    nop

    nop

    nop

    nop

    goto :goto_1f9

    nop

    nop

    nop

    nop

    :cond_38
    const-string v0, "WEP password %s is not a hex string, but has a length such that it must be one. %s"

    nop

    nop

    nop

    nop

    filled-new-array {v13, v7}, [Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    const/4 v7, 0x4

    nop

    nop

    nop

    invoke-static {v7, v0, v6}, Lrcv;->a(ILjava/lang/String;[Ljava/lang/Object;)Lrcv;

    move-result-object v0

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    :goto_1f8
    invoke-static {v13}, Lrcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    nop

    nop

    :goto_1f9
    const/4 v7, 0x0

    nop

    nop

    aput-object v13, v11, v7

    nop

    nop

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    nop

    nop

    nop

    invoke-virtual {v10, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    nop

    nop

    invoke-virtual {v10, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    nop

    nop

    nop

    const/4 v10, 0x1

    nop

    nop

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    nop

    nop

    const/4 v11, 0x2

    nop

    nop

    nop

    invoke-virtual {v7, v11}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    nop

    nop

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    invoke-virtual {v7, v11}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    iput v11, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    nop

    nop

    nop

    nop

    goto/16 :goto_1fb

    nop

    nop

    nop

    :goto_1fa
    const-string v0, "No WEP password was specified"

    nop

    nop

    const/4 v6, 0x0

    nop

    new-array v7, v6, [Ljava/lang/Object;

    nop

    nop

    nop

    const/4 v6, 0x3

    nop

    nop

    nop

    invoke-static {v6, v0, v7}, Lrcv;->a(ILjava/lang/String;[Ljava/lang/Object;)Lrcv;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    throw v0

    nop

    nop

    :cond_39
    iget-object v7, v8, Lrcw;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_2c

    nop

    nop

    nop

    nop

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x1

    nop

    nop

    nop

    invoke-virtual {v7, v11}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/util/BitSet;->clear()V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    nop

    nop

    nop

    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    invoke-virtual {v7, v11}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    nop

    nop

    nop

    const/4 v10, 0x3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x2

    nop

    nop

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    :goto_1fb
    iget-object v7, v8, Lrcw;->d:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    nop

    nop

    nop

    nop

    iput-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Lrcv; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_3de

    nop

    nop

    nop

    :goto_1fc
    goto/16 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_292

    nop

    nop

    nop

    nop

    :goto_1fd
    invoke-static {v5}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fe
    if-nez v11, :cond_3a

    nop

    nop

    goto/32 :goto_a2

    nop

    :cond_3a
    goto/32 :goto_3a0

    nop

    nop

    nop

    nop

    :goto_1ff
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    :goto_200
    goto/32 :goto_2c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_201
    if-eqz v13, :cond_3b

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :cond_3b
    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_202
    iget-object v0, v9, Lhha;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_203
    invoke-virtual {v13}, Lryb;->isEmpty()Z

    move-result v13

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    :goto_204
    check-cast v5, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    nop

    nop

    goto/32 :goto_326

    nop

    nop

    :goto_205
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_40d

    nop

    nop

    nop

    nop

    :goto_206
    invoke-virtual {v4, v0}, Lhen;->c(I)V

    goto/32 :goto_2fe

    nop

    nop

    :goto_207
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_208
    throw v1

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_209
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_d
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_12
        :pswitch_11
        :pswitch_4
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_c
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :goto_20a
    goto/32 :goto_225

    nop

    nop

    :goto_20b
    invoke-virtual {v13}, Ltkb;->o()V

    :goto_20c
    goto/32 :goto_27f

    nop

    nop

    :goto_20d
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_3c4

    nop

    nop

    nop

    nop

    nop

    :goto_20e
    iput-object v5, v15, Lhgv;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20f
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    nop

    :goto_210
    invoke-static {v0}, Lhfa;->c(Lrcz;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23f

    nop

    nop

    nop

    nop

    :goto_211
    invoke-virtual {v13}, Ltkb;->o()V

    :goto_212
    goto/32 :goto_2e7

    nop

    nop

    nop

    nop

    nop

    :goto_213
    invoke-virtual {v12}, Ltkb;->i()Ltkg;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    :goto_214
    invoke-static {v12}, Lrth;->b(C)Lrth;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2c9

    nop

    nop

    nop

    :goto_215
    goto/16 :goto_398

    nop

    nop

    nop

    :goto_216
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_217
    if-eqz v14, :cond_3c

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_3c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_218
    move-object/from16 v24, v5

    nop

    nop

    goto/32 :goto_297

    nop

    nop

    :goto_219
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_208

    nop

    nop

    nop

    nop

    nop

    :goto_21a
    invoke-virtual {v15}, Ltkg;->C()Z

    move-result v15

    nop

    nop

    nop

    nop

    goto/32 :goto_2be

    nop

    nop

    nop

    nop

    :goto_21b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21c
    check-cast v6, Lhgx;

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_21d
    check-cast v15, Liof;

    nop

    nop

    goto/32 :goto_2cc

    nop

    nop

    nop

    :goto_21e
    iget-object v0, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_311

    nop

    nop

    :goto_21f
    goto/16 :goto_384

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_379

    nop

    nop

    nop

    nop

    :goto_220
    check-cast v12, Lhha;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    :goto_221
    check-cast v5, Lhgx;

    nop

    nop

    nop

    nop

    goto/32 :goto_2ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_222
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_397

    nop

    nop

    nop

    :goto_223
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_224
    const/4 v8, 0x2

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_225
    goto/32 :goto_18d

    nop

    :goto_226
    if-nez v11, :cond_3d

    nop

    nop

    goto/32 :goto_291

    nop

    nop

    :cond_3d
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_227
    goto/16 :goto_2f2

    nop

    nop

    nop

    nop

    :goto_228
    goto/32 :goto_2f1

    nop

    nop

    nop

    :goto_229
    move v10, v7

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_22a
    if-nez v11, :cond_3e

    nop

    goto/32 :goto_268

    nop

    nop

    nop

    nop

    nop

    :cond_3e
    goto/32 :goto_107

    nop

    nop

    nop

    :goto_22b
    invoke-static {v7, v8, v6, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_175

    nop

    nop

    :goto_22c
    goto/16 :goto_2fa

    nop

    nop

    nop

    nop

    nop

    :goto_22d
    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22e
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_22f
    iget-object v12, v12, Lrdg;->b:Lrss;

    nop

    nop

    goto/32 :goto_2dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_230
    sget-object v11, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_324

    nop

    nop

    nop

    nop

    :goto_231
    iput-object v4, v11, Lhen;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_232
    check-cast v13, Lhha;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_233
    new-instance v8, Lhgp;

    nop

    nop

    nop

    nop

    goto/32 :goto_239

    nop

    nop

    nop

    nop

    :goto_234
    iget-object v13, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_235
    check-cast v14, Lhgw;

    nop

    nop

    nop

    nop

    goto/32 :goto_262

    nop

    nop

    nop

    nop

    nop

    :goto_236
    if-eq v0, v5, :cond_3f

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :cond_3f
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_237
    const/4 v6, 0x0

    nop

    goto/32 :goto_34b

    nop

    nop

    nop

    nop

    nop

    :goto_238
    invoke-virtual/range {p1 .. p1}, Lrdf;->d()Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40c

    nop

    nop

    nop

    nop

    nop

    :goto_239
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_23a
    if-eq v13, v4, :cond_40

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_289

    nop

    :cond_40
    goto/32 :goto_214

    nop

    nop

    nop

    nop

    :goto_23b
    iget-object v14, v13, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_23c
    invoke-virtual/range {p1 .. p1}, Lrdf;->i()Lrss;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d6

    nop

    nop

    nop

    nop

    :goto_23d
    iget-object v0, v5, Lhgj;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_23e
    invoke-static {v4, v11}, Lhgd;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35d

    nop

    nop

    :goto_23f
    if-eqz v0, :cond_41

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34d

    nop

    :cond_41
    goto/32 :goto_418

    nop

    nop

    :goto_240
    invoke-virtual {v12}, Ltkb;->o()V

    :goto_241
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_242
    check-cast v0, Lhha;

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_243
    invoke-direct {v6, v15, v7, v0}, Lhgn;-><init>(Liof;I[Ljava/lang/Object;)V

    goto/32 :goto_356

    nop

    nop

    nop

    nop

    :goto_244
    invoke-virtual {v11}, Lrss;->c()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_245
    check-cast v14, Lhgw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_246
    move-object/from16 v19, v5

    nop

    nop

    goto/32 :goto_3db

    nop

    nop

    nop

    nop

    nop

    :goto_247
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    :goto_248
    goto/16 :goto_384

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_23d

    nop

    nop

    nop

    :goto_249
    move-object v15, v14

    nop

    nop

    nop

    goto/32 :goto_2c8

    nop

    nop

    nop

    nop

    :goto_24a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_293

    nop

    nop

    nop

    nop

    :goto_24b
    check-cast v11, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24c
    new-instance v6, Lhgn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24d
    iget-object v5, v12, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->description:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a1

    nop

    nop

    :goto_24e
    move-object v15, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_319

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24f
    invoke-virtual/range {p1 .. p1}, Lrdf;->b()Lrcz;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_210

    nop

    nop

    nop

    :goto_250
    invoke-virtual {v13}, Ltkb;->o()V

    :goto_251
    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_252
    iget-object v0, v1, Lhfa;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_223

    nop

    nop

    :goto_253
    check-cast v13, Lhgx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    :goto_254
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    :goto_255
    goto/32 :goto_3b3

    nop

    nop

    nop

    :goto_256
    move-object v13, v12

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_257
    invoke-direct {v6, v11, v12}, Liof;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_39d

    nop

    nop

    nop

    nop

    nop

    :goto_258
    invoke-virtual {v11, v10}, Lhen;->e(Z)V

    goto/32 :goto_25c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_259
    invoke-virtual {v12}, Ltkb;->o()V

    :goto_25a
    goto/32 :goto_45

    nop

    nop

    :goto_25b
    iget-object v14, v13, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    :goto_25c
    iput v8, v11, Lhen;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c1

    nop

    nop

    :goto_25d
    iput-object v5, v13, Lhgw;->h:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    :goto_25e
    goto/32 :goto_213

    nop

    nop

    nop

    :goto_25f
    return-object v0

    nop

    :goto_260
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_261
    goto/16 :goto_f4

    nop

    :pswitch_b
    goto/32 :goto_3f0

    nop

    nop

    nop

    nop

    :goto_262
    check-cast v13, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    :goto_263
    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    nop

    nop

    goto/32 :goto_237

    nop

    nop

    nop

    :goto_264
    if-nez v11, :cond_42

    nop

    nop

    nop

    goto/32 :goto_31c

    nop

    nop

    :cond_42
    goto/32 :goto_29e

    nop

    nop

    nop

    nop

    :goto_265
    check-cast v5, Lcom/google/android/libraries/barhopper/Barcode$Sms;

    nop

    nop

    nop

    nop

    goto/32 :goto_317

    nop

    nop

    nop

    :goto_266
    invoke-direct {v0, v11, v4}, Lgbf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1bb

    nop

    nop

    nop

    :goto_267
    goto/16 :goto_321

    nop

    nop

    nop

    nop

    :goto_268
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_269
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_26a
    goto/16 :goto_255

    nop

    nop

    :goto_26b
    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26c
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    :goto_26d
    iget-object v8, v5, Lhgj;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    :goto_26e
    iget-object v15, v13, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_37a

    nop

    nop

    :goto_26f
    move-object v7, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36d

    nop

    nop

    nop

    nop

    nop

    :goto_270
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v4

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_271
    new-instance v0, Lgbf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    :goto_272
    iget-object v0, v5, Lhgj;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_40a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_273
    invoke-virtual {v11, v13}, Lhoh;->p(Lhmn;)Z

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    :goto_274
    new-instance v6, Liof;

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_275
    invoke-static {v11}, Lhgz;->b(I)Lhgz;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_278

    nop

    nop

    :goto_276
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    :goto_277
    iget-object v13, v5, Lrdc;->d:Lrss;

    nop

    goto/32 :goto_41f

    nop

    nop

    nop

    nop

    :goto_278
    if-eqz v11, :cond_43

    nop

    nop

    nop

    nop

    goto/32 :goto_409

    nop

    nop

    nop

    nop

    nop

    :cond_43
    goto/32 :goto_408

    nop

    nop

    :goto_279
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_27a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_310

    nop

    nop

    nop

    nop

    nop

    :goto_27b
    new-instance v7, Lhgm;

    nop

    nop

    nop

    goto/32 :goto_224

    nop

    nop

    nop

    nop

    :goto_27c
    invoke-virtual {v0, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

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

    nop

    :goto_27d
    add-int/lit8 v7, v6, -0x1

    nop

    nop

    goto/32 :goto_318

    nop

    nop

    :goto_27e
    const/16 v6, 0x3a

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

    nop

    :goto_27f
    iget-object v12, v13, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_340

    nop

    nop

    :goto_280
    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    nop

    :goto_281
    check-cast v0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_350

    nop

    nop

    nop

    :goto_282
    iget-object v13, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_253

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_283
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    goto/32 :goto_3a9

    nop

    nop

    :goto_284
    iget-object v12, v5, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_22e

    nop

    nop

    :goto_285
    iput v5, v12, Lhgv;->b:I

    nop

    goto/32 :goto_348

    nop

    nop

    nop

    nop

    :goto_286
    move-object/from16 v26, v0

    nop

    nop

    nop

    nop

    nop

    :goto_287
    goto/32 :goto_1ed

    nop

    nop

    nop

    nop

    nop

    :goto_288
    goto/16 :goto_1cb

    nop

    nop

    :catch_2
    :goto_289
    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    :goto_28a
    iget-object v12, v13, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_207

    nop

    nop

    :goto_28b
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_307

    nop

    nop

    nop

    :goto_28c
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28d
    invoke-virtual {v4, v2, v3}, Lhen;->f(J)V

    goto/32 :goto_269

    nop

    nop

    nop

    nop

    :goto_28e
    invoke-direct {v7, v6, v5, v0, v8}, Lhgp;-><init>(Liof;Lhgj;Landroid/content/Context;I)V

    :goto_28f
    goto/32 :goto_2f9

    nop

    nop

    nop

    nop

    :goto_290
    goto/16 :goto_108

    nop

    :goto_291
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_292
    const v5, 0x7f080475

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    :goto_293
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_407

    nop

    nop

    nop

    nop

    :goto_294
    if-nez v10, :cond_44

    nop

    nop

    goto/32 :goto_1fa

    nop

    nop

    nop

    nop

    nop

    :cond_44
    goto/32 :goto_406

    nop

    nop

    :goto_295
    goto/16 :goto_5e

    nop

    nop

    nop

    :goto_296
    goto/32 :goto_3e

    nop

    nop

    :goto_297
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_298
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_299
    check-cast v0, Landroid/content/Context;

    nop

    goto/32 :goto_300

    nop

    nop

    nop

    nop

    nop

    :goto_29a
    move v9, v7

    nop

    nop

    :goto_29b
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_29c
    new-instance v7, Lhgm;

    nop

    goto/32 :goto_2ff

    nop

    nop

    nop

    :goto_29d
    if-gez v5, :cond_45

    nop

    nop

    goto/32 :goto_216

    nop

    :cond_45
    goto/32 :goto_b4

    nop

    nop

    :goto_29e
    sget-object v4, Lhge;->e:Lhge;

    nop

    nop

    goto/32 :goto_31b

    nop

    nop

    nop

    nop

    :goto_29f
    move v0, v9

    nop

    nop

    :goto_2a0
    goto/32 :goto_3b6

    nop

    nop

    nop

    :goto_2a1
    iput-object v0, v4, Lhen;->a:Ljava/lang/String;

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a2
    iget v5, v12, Lhgv;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a3
    invoke-virtual {v12}, Ltkb;->o()V

    :goto_2a4
    goto/32 :goto_282

    nop

    nop

    :goto_2a5
    invoke-virtual {v12}, Ltkb;->o()V

    :goto_2a6
    goto/32 :goto_2c7

    nop

    nop

    nop

    :goto_2a7
    goto/16 :goto_3bd

    nop

    nop

    nop

    nop

    :goto_2a8
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :goto_2a9
    if-ne v11, v8, :cond_46

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :cond_46
    goto/32 :goto_323

    nop

    nop

    :goto_2aa
    check-cast v9, Lhha;

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ab
    const-string v7, "QR code contained invalid wifi"

    nop

    nop

    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    nop

    :goto_2ac
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ad
    invoke-virtual {v13}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_331

    nop

    nop

    :goto_2ae
    invoke-static {v11}, Lhhg;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_2af
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2b0
    move-object/from16 v22, v9

    nop

    nop

    nop

    goto/32 :goto_3b4

    nop

    nop

    nop

    nop

    :goto_2b1
    const-string v7, "Unhandled WifiConfigurationBuilder exception"

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_2b2
    invoke-direct {v7, v6, v0, v9}, Lhgm;-><init>(Liof;Ljava/lang/String;I)V

    goto/32 :goto_16a

    nop

    nop

    nop

    :goto_2b3
    invoke-virtual/range {p1 .. p1}, Lrdf;->c()Lrdg;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_22f

    nop

    nop

    nop

    nop

    nop

    :goto_2b4
    invoke-virtual/range {p1 .. p1}, Lrdf;->b()Lrcz;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3da

    nop

    nop

    nop

    :goto_2b5
    const/4 v9, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2b6
    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    nop

    :goto_2b7
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    :goto_2b8
    goto/32 :goto_345

    nop

    nop

    nop

    nop

    nop

    :goto_2b9
    if-eq v12, v8, :cond_47

    nop

    nop

    nop

    goto/32 :goto_200

    nop

    :cond_47
    :try_start_2
    invoke-static {}, Lj$/util/Base64;->getDecoder()Lj$/util/Base64$Decoder;

    move-result-object v4

    nop

    nop

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    check-cast v11, Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v4, v11}, Lj$/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v4

    nop

    nop
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto/32 :goto_21

    nop

    nop

    :goto_2ba
    invoke-static {v5}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2bb
    invoke-virtual {v12}, Ltkb;->o()V

    :goto_2bc
    goto/32 :goto_2da

    nop

    nop

    nop

    :goto_2bd
    if-lez v0, :cond_48

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :cond_48
    goto/32 :goto_18c

    nop

    :goto_2be
    if-eqz v15, :cond_49

    nop

    goto/32 :goto_2bc

    nop

    :cond_49
    goto/32 :goto_2bb

    nop

    nop

    nop

    nop

    nop

    :goto_2bf
    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_2b1

    nop

    nop

    nop

    nop

    :goto_2c0
    or-int/2addr v5, v8

    nop

    goto/32 :goto_285

    nop

    nop

    nop

    nop

    nop

    :goto_2c1
    iget-object v4, v0, Lhgd;->c:Lptw;

    nop

    nop

    nop

    goto/32 :goto_27a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    nop

    nop

    goto/32 :goto_3ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c3
    invoke-virtual {v6}, Ltkg;->m()Ltkb;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_265

    nop

    nop

    nop

    :goto_2c4
    sget-object v11, Lrcu;->d:Lrcu;

    nop

    nop

    nop

    goto/32 :goto_303

    nop

    nop

    nop

    :goto_2c5
    iget v5, v14, Lhgv;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_2c6
    goto/16 :goto_cf

    nop

    nop

    :pswitch_c
    goto/32 :goto_30e

    nop

    nop

    nop

    :goto_2c7
    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_2c8
    check-cast v15, Lhgv;

    nop

    nop

    goto/32 :goto_403

    nop

    nop

    nop

    nop

    nop

    :goto_2c9
    invoke-virtual {v4, v15}, Lrth;->d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1ff

    nop

    nop

    nop

    nop

    :goto_2ca
    invoke-virtual {v5}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    goto/32 :goto_242

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2cb
    iget-object v8, v0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    :goto_2cc
    const v11, 0x7f140597

    nop

    nop

    nop

    goto/32 :goto_314

    nop

    nop

    :goto_2cd
    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v5

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_2ce
    iget v3, v1, Lhfa;->g:I

    nop

    nop

    goto/32 :goto_3ec

    nop

    nop

    :goto_2cf
    invoke-static {v5}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    goto/32 :goto_2d7

    nop

    nop

    nop

    nop

    :goto_2d0
    invoke-virtual {v11, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_3c9

    nop

    nop

    :goto_2d1
    if-nez v9, :cond_4a

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :cond_4a
    goto/32 :goto_24c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d2
    goto/16 :goto_315

    nop

    nop

    nop

    :goto_2d3
    :try_start_3
    new-instance v8, Lrcw;

    nop

    nop

    invoke-direct {v8}, Lrcw;-><init>()V

    move-object v12, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Lhha;

    nop

    iget-object v12, v12, Lhha;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v12}, Lrrf;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    iput-object v12, v8, Lrcw;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    move-object v12, v0

    nop

    nop

    nop

    check-cast v12, Lhha;

    nop

    nop

    nop

    nop

    iget-object v12, v12, Lhha;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v12}, Lrrf;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    nop

    iput-object v12, v8, Lrcw;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Lrss;->c()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    check-cast v11, Lrcu;

    nop

    nop

    iput-object v11, v8, Lrcw;->c:Lrcu;

    nop

    check-cast v0, Lhha;

    nop

    nop

    nop

    nop

    iget-boolean v0, v0, Lhha;->e:Z

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, v8, Lrcw;->d:Ljava/lang/Boolean;

    nop

    nop

    nop

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v11, v8, Lrcw;->a:Ljava/lang/String;

    nop

    const/16 v12, 0x20

    nop

    invoke-static {v11, v10, v12}, Lrcw;->c(Ljava/lang/String;II)Z

    move-result v21

    nop

    nop

    nop

    if-eqz v21, :cond_2d

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11}, Lrcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    iput-object v11, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v11, v8, Lrcw;->c:Lrcu;

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Lrcu;->ordinal()I

    move-result v11

    nop

    nop

    nop

    if-eqz v11, :cond_39

    nop

    nop

    nop

    nop

    if-eq v11, v10, :cond_52

    nop

    nop

    const/4 v13, 0x2

    nop

    nop

    nop

    if-eq v11, v13, :cond_4d

    nop

    nop

    nop

    nop

    const/4 v12, 0x3

    nop

    nop

    nop

    if-eq v11, v12, :cond_4b

    nop

    nop

    nop

    nop

    goto/16 :goto_1fb

    nop

    :cond_4b
    iget-object v11, v8, Lrcw;->b:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    if-nez v12, :cond_4c

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11}, Lrcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    iput-object v11, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v11}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_1fb

    nop

    nop

    nop

    nop

    nop

    :cond_4c
    const-string v0, "No SAE password was specified"

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    new-array v8, v6, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v0, v8}, Lrcv;->a(ILjava/lang/String;[Ljava/lang/Object;)Lrcv;

    move-result-object v0

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_4d
    iget-object v11, v8, Lrcw;->b:Ljava/lang/String;

    nop

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    nop

    nop

    if-nez v12, :cond_51

    nop

    nop

    nop

    const/16 v12, 0x8

    nop

    nop

    nop

    const/16 v13, 0x3f

    nop

    nop

    nop

    nop

    invoke-static {v11, v12, v13}, Lrcw;->c(Ljava/lang/String;II)Z

    move-result v12

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_4e

    nop

    nop

    nop

    invoke-static {v11}, Lrcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    goto :goto_2d4

    nop

    nop

    nop

    :cond_4e
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    nop

    nop

    nop

    nop

    const/16 v13, 0x40

    nop

    nop

    nop

    nop

    nop

    if-ne v12, v13, :cond_50

    nop

    nop

    invoke-static {v11}, Lrcw;->b(Ljava/lang/String;)Z

    move-result v12

    nop

    if-eqz v12, :cond_4f

    nop

    nop

    nop

    nop

    nop

    :goto_2d4
    iput-object v11, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    nop

    nop

    nop

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    nop

    const/4 v12, 0x0

    nop

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    const/4 v12, 0x2

    nop

    nop

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    nop

    nop

    nop

    invoke-virtual {v11, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    nop

    invoke-virtual {v11, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    const/4 v12, 0x3

    nop

    nop

    nop

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    nop

    nop

    nop

    nop

    nop

    const/4 v12, 0x2

    nop

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_1fb

    nop

    :cond_4f
    const-string v0, "WPA PSK %s is 64 chars, which means it must be hex; but it was not"

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x4

    nop

    invoke-static {v8, v0, v6}, Lrcv;->a(ILjava/lang/String;[Ljava/lang/Object;)Lrcv;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    throw v0

    nop

    :cond_50
    const-string v0, "WPA PSK %s has an invalid length. %s"

    nop

    nop

    const-string v6, "WPA PSKs must be 8-63 ASCII characters, or exactly 64 hex characters"

    nop

    nop

    nop

    filled-new-array {v11, v6}, [Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    const/4 v8, 0x4

    nop

    nop

    nop

    invoke-static {v8, v0, v6}, Lrcv;->a(ILjava/lang/String;[Ljava/lang/Object;)Lrcv;

    move-result-object v0

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_51
    const-string v0, "No WPA PSK was specified"

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    new-array v8, v6, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x3

    nop

    nop

    nop

    invoke-static {v6, v0, v8}, Lrcv;->a(ILjava/lang/String;[Ljava/lang/Object;)Lrcv;

    move-result-object v0

    nop

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_52
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    nop

    nop

    nop

    iget-object v13, v8, Lrcw;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    nop

    nop

    nop
    :try_end_3
    .catch Lrcv; {:try_start_3 .. :try_end_3} :catch_1

    goto/32 :goto_294

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d5
    check-cast v11, Lscz;

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_2d6
    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2ac

    nop

    nop

    nop

    nop

    :goto_2d7
    move-object/from16 v23, v5

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d8
    iget-object v13, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_2d9
    invoke-virtual {v13}, Ltkg;->m()Ltkb;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_2da
    iget-object v15, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    :goto_2db
    const/16 v12, 0x10

    nop

    goto/32 :goto_2fd

    nop

    nop

    nop

    :goto_2dc
    invoke-virtual {v12}, Lrss;->c()Ljava/lang/Object;

    move-result-object v12

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    :goto_2dd
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_2de
    iget-wide v5, v5, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lng:D

    nop

    nop

    goto/32 :goto_36e

    nop

    nop

    nop

    :goto_2df
    iget-object v12, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_26c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e0
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3d5

    nop

    nop

    :goto_2e1
    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2e2
    if-eqz v12, :cond_53

    nop

    goto/32 :goto_198

    nop

    nop

    :cond_53
    goto/32 :goto_1de

    nop

    nop

    :goto_2e3
    new-instance v11, Leqn;

    nop

    goto/32 :goto_376

    nop

    nop

    nop

    :goto_2e4
    goto/16 :goto_384

    nop

    nop

    nop

    nop

    :goto_2e5
    goto/32 :goto_156

    nop

    nop

    :goto_2e6
    if-ne v10, v12, :cond_54

    nop

    nop

    nop

    nop

    goto/32 :goto_1f7

    nop

    nop

    nop

    :cond_54
    goto/32 :goto_31e

    nop

    nop

    :goto_2e7
    iget-object v14, v13, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_249

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e8
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode;

    nop

    nop

    nop

    goto/32 :goto_3fd

    nop

    nop

    nop

    :goto_2e9
    iget-object v0, v5, Lhgj;->b:Ljava/lang/String;

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2ea
    check-cast v13, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2eb
    const/4 v8, 0x0

    nop

    goto/32 :goto_2b5

    nop

    nop

    nop

    nop

    nop

    :goto_2ec
    invoke-virtual {v11}, Lscs;->c()Lsdo;

    move-result-object v11

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_2ed
    check-cast v15, Liof;

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    :goto_2ee
    const/4 v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_2ef
    invoke-static {v0, v2, v3, v1}, Lhhg;->E(Lrss;Lqek;II)Lhel;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2f0
    invoke-virtual/range {p1 .. p1}, Lrdf;->d()Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_2f1
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2f2
    goto/32 :goto_270

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f3
    invoke-static {v7, v8, v6, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_38e

    nop

    nop

    nop

    nop

    :goto_2f4
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    :goto_2f5
    const/4 v10, 0x0

    nop

    nop

    nop

    :goto_2f6
    goto/32 :goto_252

    nop

    nop

    nop

    nop

    :goto_2f7
    iget-object v0, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3d4

    nop

    nop

    :goto_2f8
    invoke-static {v15}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v15

    nop

    nop

    nop

    goto/32 :goto_3b9

    nop

    nop

    nop

    :goto_2f9
    move-object v6, v7

    nop

    :goto_2fa
    goto/32 :goto_3ea

    nop

    nop

    nop

    nop

    nop

    :goto_2fb
    iput-object v6, v13, Lhha;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    nop

    :goto_2fc
    invoke-static {v0}, Lhfa;->c(Lrcz;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c0

    nop

    nop

    nop

    nop

    nop

    :goto_2fd
    if-ne v10, v12, :cond_55

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f8

    nop

    nop

    :cond_55
    goto/32 :goto_17a

    nop

    nop

    nop

    :goto_2fe
    invoke-virtual/range {p1 .. p1}, Lrdf;->d()Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ff
    const/4 v8, 0x3

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    :goto_300
    invoke-virtual {v0, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_222

    nop

    nop

    nop

    :goto_301
    if-nez v13, :cond_56

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25e

    nop

    nop

    :cond_56
    goto/32 :goto_370

    nop

    nop

    nop

    nop

    :goto_302
    iget-object v0, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_395

    nop

    nop

    :goto_303
    invoke-static {v11}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_304
    iget-object v12, v5, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_220

    nop

    nop

    nop

    :goto_305
    move-object/from16 v22, v0

    nop

    nop

    :goto_306
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_307
    goto/16 :goto_398

    nop

    nop

    nop

    nop

    nop

    :goto_308
    goto/32 :goto_3f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_309
    const v9, 0x7f080300

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30a
    goto/16 :goto_2fa

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_272

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30b
    sget-object v6, Lhgy;->a:Lhgy;

    nop

    nop

    nop

    goto/32 :goto_2c3

    nop

    nop

    :goto_30c
    iget-object v7, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_367

    nop

    nop

    nop

    :goto_30d
    move-object/from16 v19, v7

    nop

    goto/32 :goto_346

    nop

    nop

    nop

    nop

    :goto_30e
    const v5, 0x7f08045f

    nop

    nop

    nop

    goto/32 :goto_35e

    nop

    nop

    nop

    nop

    nop

    :goto_30f
    sget-object v4, Lhge;->f:Lhge;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_310
    invoke-virtual {v11, v12, v13}, Lhen;->g(J)V

    goto/32 :goto_191

    nop

    nop

    :goto_311
    check-cast v0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d6

    nop

    nop

    nop

    :goto_312
    move-object/from16 v1, p0

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_313
    iget-object v15, v13, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_314
    invoke-direct {v6, v15, v11, v0}, Lhgn;-><init>(Liof;I[Ljava/lang/Object;)V

    :goto_315
    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_316
    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_317
    iget-object v12, v5, Lcom/google/android/libraries/barhopper/Barcode$Sms;->message:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_318
    if-nez v6, :cond_57

    nop

    nop

    nop

    nop

    goto/32 :goto_357

    nop

    nop

    :cond_57
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_319
    check-cast v15, Lhgv;

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    nop

    :goto_31a
    iget-object v7, v5, Lhgj;->g:Lrss;

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

    :goto_31b
    goto/16 :goto_108

    nop

    nop

    nop

    :goto_31c
    goto/32 :goto_33b

    nop

    nop

    :goto_31d
    iget-object v5, v12, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->organizer:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_33d

    nop

    nop

    nop

    nop

    nop

    :goto_31e
    const/16 v12, 0x3a

    nop

    nop

    goto/32 :goto_3cb

    nop

    nop

    nop

    nop

    :goto_31f
    invoke-virtual {v7}, Lrss;->h()Z

    move-result v7

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_320
    goto/16 :goto_108

    nop

    nop

    :goto_321
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_322
    invoke-static {v11}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_295

    nop

    nop

    nop

    :goto_323
    if-ne v11, v13, :cond_58

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :cond_58
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_324
    goto/16 :goto_5e

    nop

    :goto_325
    goto/32 :goto_2c4

    nop

    nop

    nop

    :goto_326
    iget-wide v13, v5, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lat:D

    nop

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    :goto_327
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_328
    invoke-static {v5}, Lhgi;->a(Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;)Lhgu;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_329
    if-nez v0, :cond_59

    nop

    nop

    nop

    nop

    goto/32 :goto_3b7

    nop

    nop

    nop

    :cond_59
    goto/32 :goto_238

    nop

    nop

    nop

    :goto_32a
    goto/16 :goto_384

    nop

    nop

    nop

    :goto_32b
    goto/32 :goto_3a8

    nop

    nop

    nop

    nop

    nop

    :goto_32c
    invoke-direct {v7, v14, v15, v0, v6}, Lhgt;-><init>(Landroid/net/wifi/WifiManager;Liof;Landroid/net/wifi/WifiConfiguration;Liof;)V

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    :goto_32d
    const-string v3, "Not supported ResultType: "

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_32e
    const-string v13, "Unexpected WifiInt: %s"

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_32f
    invoke-virtual {v12}, Ltkb;->o()V

    :goto_330
    goto/32 :goto_392

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_331
    if-eqz v12, :cond_5a

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    :cond_5a
    goto/32 :goto_12f

    nop

    nop

    nop

    :goto_332
    check-cast v0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_415

    nop

    nop

    :goto_333
    iget-object v10, v5, Lhgj;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_334
    move-object/from16 v7, p1

    nop

    nop

    nop

    goto/32 :goto_339

    nop

    nop

    nop

    :goto_335
    check-cast v13, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_336
    goto/16 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_337
    if-nez v12, :cond_5b

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :cond_5b
    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_338
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2e8

    nop

    nop

    nop

    nop

    nop

    :goto_339
    invoke-static {v7, v0}, Lhfa;->b(Lrdf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a1

    nop

    nop

    nop

    nop

    nop

    :goto_33a
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    :goto_33b
    iget-object v11, v0, Lhgd;->f:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_33c
    const/4 v8, 0x1

    nop

    goto/32 :goto_30a

    nop

    nop

    nop

    :goto_33d
    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_3e4

    nop

    nop

    :goto_33e
    if-nez v5, :cond_5c

    nop

    nop

    nop

    nop

    goto/32 :goto_29b

    nop

    nop

    nop

    nop

    nop

    :cond_5c
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_33f
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

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

    :goto_340
    check-cast v12, Lhgv;

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_341
    iget-object v5, v6, Lhgt;->b:Landroid/net/wifi/WifiConfiguration;

    nop

    goto/32 :goto_3f3

    nop

    nop

    nop

    :goto_342
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_343
    iput-object v12, v14, Lhgy;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3fa

    nop

    nop

    :goto_344
    check-cast v14, Lhgw;

    nop

    nop

    nop

    nop

    goto/32 :goto_2ea

    nop

    nop

    nop

    :goto_345
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_401

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_346
    move-object/from16 v20, v6

    nop

    nop

    nop

    goto/32 :goto_2b0

    nop

    nop

    nop

    :goto_347
    invoke-virtual/range {p1 .. p1}, Lrdf;->b()Lrcz;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_348
    invoke-virtual {v13}, Ltkb;->i()Ltkg;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b5

    nop

    nop

    nop

    :goto_349
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    :goto_34a
    invoke-virtual/range {p1 .. p1}, Lrdf;->d()Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_34b
    aget-object v5, v5, v6

    nop

    goto/32 :goto_417

    nop

    nop

    :goto_34c
    goto/16 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_34d
    goto/32 :goto_2f5

    nop

    nop

    nop

    :goto_34e
    invoke-virtual {v13}, Ltkg;->C()Z

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    :goto_34f
    iput-object v14, v5, Lhgv;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24d

    nop

    nop

    nop

    nop

    :goto_350
    const v11, 0x7f1402ac

    nop

    nop

    goto/32 :goto_349

    nop

    nop

    nop

    nop

    :goto_351
    if-nez v11, :cond_5d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    :cond_5d
    goto/32 :goto_365

    nop

    nop

    :goto_352
    if-nez v11, :cond_5e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41d

    nop

    nop

    nop

    nop

    nop

    :cond_5e
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_353
    invoke-virtual/range {p1 .. p1}, Lrdf;->c()Lrdg;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_354
    const-string v0, ""

    nop

    nop

    :goto_355
    goto/32 :goto_c7

    nop

    nop

    :goto_356
    goto/16 :goto_384

    nop

    nop

    :goto_357
    goto/32 :goto_be

    nop

    nop

    nop

    :goto_358
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_25d

    nop

    nop

    nop

    nop

    :goto_359
    invoke-virtual/range {p1 .. p1}, Lrdf;->m()Lrss;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35a
    check-cast v11, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    :goto_35b
    iget-object v0, v0, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3aa

    nop

    nop

    :goto_35c
    check-cast v0, Lhha;

    nop

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    :goto_35d
    if-nez v11, :cond_5f

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    :cond_5f
    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_35e
    goto/16 :goto_cf

    nop

    nop

    :pswitch_f
    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_35f
    iget-object v14, v14, Lhgw;->c:Ltkv;

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    :goto_360
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_361
    invoke-static {v6}, Lhgz;->b(I)Lhgz;

    move-result-object v6

    nop

    goto/32 :goto_284

    nop

    nop

    :goto_362
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_363
    invoke-virtual {v5}, Lhgs;->ordinal()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    packed-switch v5, :pswitch_data_1

    :pswitch_10
    goto/32 :goto_97

    nop

    nop

    :goto_364
    sget-object v11, Lhgt;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2ec

    nop

    nop

    nop

    nop

    nop

    :goto_365
    sget-object v4, Lhge;->b:Lhge;

    nop

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_366
    if-eq v0, v1, :cond_60

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    :cond_60
    goto/32 :goto_1ee

    nop

    nop

    :goto_367
    iget-object v0, v0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_26d

    nop

    nop

    nop

    :goto_368
    invoke-static {v11, v9}, Ldtk;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d1

    nop

    nop

    nop

    nop

    nop

    :goto_369
    if-nez v13, :cond_61

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    nop

    nop

    :cond_61
    goto/32 :goto_117

    nop

    nop

    :goto_36a
    iput-boolean v0, v6, Lhha;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2ca

    nop

    nop

    nop

    nop

    nop

    :goto_36b
    iget-object v14, v12, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_26e

    nop

    nop

    nop

    nop

    :goto_36c
    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_344

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36d
    move-object v12, v0

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36e
    invoke-virtual {v15}, Ltkg;->C()Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d5

    nop

    nop

    :goto_36f
    move-object/from16 v18, v11

    nop

    nop

    goto/32 :goto_26f

    nop

    nop

    nop

    nop

    :goto_370
    iget-object v5, v5, Lrdc;->g:Lrss;

    nop

    nop

    nop

    goto/32 :goto_3f2

    nop

    nop

    :goto_371
    const v13, 0x7f140595

    nop

    nop

    goto/32 :goto_2e2

    nop

    nop

    nop

    nop

    nop

    :goto_372
    invoke-direct {v6, v15, v13, v0}, Lhgn;-><init>(Liof;I[Ljava/lang/Object;)V

    goto/32 :goto_2d2

    nop

    nop

    nop

    nop

    nop

    :goto_373
    throw v6

    nop

    nop

    nop

    nop

    nop

    :goto_374
    goto/32 :goto_20d

    nop

    nop

    :goto_375
    iget-object v13, v5, Lrdc;->e:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37f

    nop

    nop

    :goto_376
    const/16 v16, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    :goto_377
    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_378
    invoke-virtual {v12}, Lrss;->h()Z

    move-result v12

    nop

    nop

    goto/32 :goto_337

    nop

    nop

    :goto_379
    new-instance v7, Lhgk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2cb

    nop

    nop

    nop

    nop

    nop

    :goto_37a
    invoke-virtual {v15}, Ltkg;->C()Z

    move-result v15

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37b
    invoke-direct {v11, v4}, Ljava/lang/String;-><init>([B)V

    goto/32 :goto_288

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37c
    iget-object v5, v12, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->location:Ljava/lang/String;

    nop

    goto/32 :goto_3ae

    nop

    nop

    nop

    nop

    :goto_37d
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    nop

    goto/32 :goto_39b

    nop

    nop

    nop

    nop

    nop

    :goto_37e
    check-cast v11, Landroid/content/Context;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_37f
    invoke-virtual {v13}, Lrss;->h()Z

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_3fe

    nop

    nop

    nop

    nop

    :goto_380
    new-instance v7, Lhgp;

    nop

    goto/32 :goto_2f7

    nop

    nop

    nop

    nop

    nop

    :goto_381
    invoke-virtual {v7, v10}, Ltkg;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    :goto_382
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_416

    nop

    nop

    :goto_383
    move-object v6, v7

    nop

    nop

    nop

    :goto_384
    goto/32 :goto_33c

    nop

    nop

    nop

    nop

    nop

    :goto_385
    iget-object v13, v5, Lrdc;->c:Lryb;

    nop

    nop

    nop

    goto/32 :goto_377

    nop

    nop

    :goto_386
    invoke-virtual/range {p1 .. p1}, Lrdf;->b()Lrcz;

    move-result-object v0

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_387
    check-cast v20, Lhgs;

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

    :goto_388
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_389
    check-cast v15, Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_38a
    check-cast v6, Lhgt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_341

    nop

    nop

    nop

    nop

    nop

    :goto_38b
    const/16 v5, 0x100

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27e

    nop

    nop

    :goto_38c
    check-cast v15, Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_32c

    nop

    nop

    nop

    :goto_38d
    iput v6, v12, Lhha;->c:I

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    :goto_38e
    iget v6, v0, Lrcv;->a:I

    nop

    nop

    nop

    goto/32 :goto_27d

    nop

    nop

    nop

    nop

    nop

    :goto_38f
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    :goto_390
    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    :goto_391
    iput-object v5, v12, Lhgv;->i:Lhgu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a2

    nop

    nop

    nop

    nop

    :goto_392
    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_245

    nop

    nop

    nop

    nop

    nop

    :goto_393
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_209

    nop

    nop

    nop

    :goto_394
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_395
    iget-object v8, v5, Lhgj;->f:Lrss;

    nop

    nop

    goto/32 :goto_332

    nop

    nop

    nop

    nop

    :goto_396
    const/16 v12, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_397
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    :goto_398
    goto/32 :goto_40b

    nop

    nop

    nop

    nop

    :goto_399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39a
    iget-object v0, v5, Lhgj;->a:Lhgs;

    nop

    nop

    nop

    goto/32 :goto_3c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39b
    iget v6, v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->encryptionType:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_361

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39c
    iget-object v13, v5, Lrdc;->c:Lryb;

    nop

    nop

    goto/32 :goto_203

    nop

    nop

    nop

    nop

    :goto_39d
    iget-object v11, v5, Lhgj;->a:Lhgs;

    nop

    goto/32 :goto_40f

    nop

    nop

    nop

    :goto_39e
    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    :goto_39f
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_353

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a0
    sget-object v4, Lhge;->d:Lhge;

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_3a1
    invoke-virtual {v15}, Ltkg;->C()Z

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_414

    nop

    nop

    nop

    :goto_3a2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_3a3

    nop

    nop

    nop

    nop

    nop

    :goto_3a3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_393

    nop

    nop

    nop

    :goto_3a4
    if-eqz v14, :cond_62

    nop

    nop

    goto/32 :goto_22d

    nop

    :cond_62
    goto/32 :goto_3cf

    nop

    nop

    :goto_3a5
    move-object/from16 v27, v0

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_3a6
    iget-object v6, v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->password:Ljava/lang/String;

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_3a7
    invoke-virtual/range {p1 .. p1}, Lrdf;->d()Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a8
    new-instance v6, Lhgn;

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_3a9
    check-cast v10, Landroid/content/pm/ResolveInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_2dd

    nop

    nop

    nop

    :goto_3aa
    goto/16 :goto_355

    nop

    nop

    nop

    nop

    nop

    :goto_3ab
    goto/32 :goto_354

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3ac
    iget-object v15, v14, Lhgw;->c:Ltkv;

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_3ad
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2fb

    nop

    nop

    nop

    nop

    :goto_3ae
    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_1e0

    nop

    nop

    :goto_3af
    check-cast v15, Lhgv;

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_3b0
    invoke-static {v10, v11}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    :goto_3b1
    check-cast v5, Lrdc;

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_3b2
    if-ne v10, v12, :cond_63

    nop

    nop

    nop

    goto/32 :goto_1f8

    nop

    :cond_63
    goto/32 :goto_75

    nop

    nop

    :goto_3b3
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    :goto_3b4
    move-object/from16 v23, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_3b5
    check-cast v5, Lhgv;

    nop

    goto/32 :goto_2cf

    nop

    nop

    :goto_3b6
    invoke-virtual {v11, v0}, Lhen;->e(Z)V

    :goto_3b7
    goto/32 :goto_1b9

    nop

    nop

    :goto_3b8
    check-cast v14, Lhgw;

    nop

    nop

    goto/32 :goto_3ac

    nop

    nop

    nop

    nop

    nop

    :goto_3b9
    iput-object v15, v14, Lhgw;->d:Ltkv;

    nop

    nop

    nop

    nop

    :goto_3ba
    goto/32 :goto_419

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3bb
    iget-object v7, v5, Lhgj;->e:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_233

    nop

    nop

    nop

    nop

    :goto_3bc
    iput-object v0, v4, Lhen;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    :goto_3bd
    goto/32 :goto_24f

    nop

    nop

    :goto_3be
    goto/16 :goto_8d

    nop

    nop

    :goto_3bf
    goto/32 :goto_2e3

    nop

    nop

    nop

    nop

    :goto_3c0
    if-nez v0, :cond_64

    nop

    nop

    nop

    goto/32 :goto_2a8

    nop

    nop

    nop

    nop

    nop

    :cond_64
    goto/32 :goto_48

    nop

    nop

    :goto_3c1
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    :goto_3c2
    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_24a

    nop

    nop

    nop

    nop

    nop

    :goto_3c3
    iput-object v0, v4, Lhen;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_34c

    nop

    nop

    nop

    :goto_3c4
    const-string v1, "Wifi actions must have wifi network data"

    nop

    nop

    goto/32 :goto_388

    nop

    nop

    :goto_3c5
    invoke-direct {v6, v7, v0, v8}, Lhgl;-><init>(Landroid/content/Context;Liof;Ljava/lang/String;)V

    goto/32 :goto_21f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c6
    sget-object v12, Lhgz;->f:Lhgz;

    nop

    nop

    nop

    nop

    :goto_3c7
    goto/32 :goto_32e

    nop

    nop

    nop

    :goto_3c8
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_3f7

    nop

    nop

    nop

    :goto_3c9
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_3ca
    check-cast v14, Lhgy;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3cb
    if-eq v10, v12, :cond_65

    nop

    nop

    goto/32 :goto_1f6

    nop

    :cond_65
    goto/32 :goto_1f5

    nop

    nop

    :goto_3cc
    if-nez v5, :cond_66

    nop

    nop

    goto/32 :goto_298

    nop

    nop

    nop

    nop

    nop

    :cond_66
    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3cd
    throw v0

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    :goto_3ce
    iget-object v12, v0, Lhgd;->g:Lqek;

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_3cf
    new-instance v6, Lhgn;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d0
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3d1
    goto/16 :goto_8d

    nop

    nop

    nop

    nop

    :catch_3
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_3d2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d3
    if-eqz v14, :cond_67

    nop

    goto/32 :goto_25a

    nop

    :cond_67
    goto/32 :goto_259

    nop

    nop

    nop

    nop

    nop

    :goto_3d4
    check-cast v0, Landroid/content/Context;

    nop

    nop

    goto/32 :goto_28e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d5
    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode;

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_3d6
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3cc

    nop

    nop

    nop

    nop

    nop

    :goto_3d7
    const v5, 0x7f080465

    nop

    nop

    goto/32 :goto_2c6

    nop

    nop

    nop

    nop

    :goto_3d8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_24b

    nop

    nop

    nop

    nop

    nop

    :goto_3d9
    check-cast v6, Lhgo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3da
    iget v1, v1, Lrcz;->I:I

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

    :goto_3db
    move-object/from16 v21, v11

    nop

    goto/32 :goto_142

    nop

    nop

    :goto_3dc
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_405

    nop

    nop

    nop

    nop

    nop

    :goto_3dd
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_280

    nop

    nop

    nop

    :goto_3de
    new-instance v7, Lhgt;

    nop

    goto/32 :goto_38c

    nop

    nop

    nop

    nop

    :goto_3df
    iput-object v5, v12, Lhgy;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e0
    iget-object v5, v5, Lhgj;->a:Lhgs;

    nop

    goto/32 :goto_363

    nop

    nop

    nop

    :goto_3e1
    move-object v13, v12

    nop

    goto/32 :goto_232

    nop

    nop

    nop

    nop

    nop

    :goto_3e2
    invoke-static {v4, v11}, Lhgd;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    nop

    goto/32 :goto_1fe

    nop

    nop

    nop

    nop

    :goto_3e3
    invoke-interface {v6}, Lhgo;->a()Landroid/content/Intent;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3e4
    if-eqz v14, :cond_68

    nop

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    nop

    nop

    :cond_68
    goto/32 :goto_1f3

    nop

    nop

    :goto_3e5
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v5, v6, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto :goto_3e8

    nop

    nop

    nop

    nop

    nop

    :goto_3e6
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    :goto_3e7
    iget-object v0, v0, Liof;->a:Ljava/lang/Object;

    nop

    check-cast v0, Landroid/content/Context;

    nop

    nop

    nop

    const v5, 0x7f080469

    nop

    nop

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3e8
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    goto/32 :goto_26a

    nop

    nop

    :goto_3e9
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_3ea
    invoke-virtual/range {p1 .. p1}, Lrdf;->b()Lrcz;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2fc

    nop

    nop

    :goto_3eb
    iput-object v5, v15, Lhgv;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_31d

    nop

    nop

    nop

    nop

    :goto_3ec
    iget v1, v1, Lhfa;->h:I

    nop

    nop

    goto/32 :goto_2ef

    nop

    nop

    nop

    :goto_3ed
    invoke-static {v5}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_33e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3ee
    if-nez v11, :cond_69

    nop

    nop

    goto/32 :goto_289

    nop

    nop

    :cond_69
    goto/32 :goto_3d8

    nop

    nop

    :goto_3ef
    if-ne v7, v6, :cond_6a

    nop

    goto/32 :goto_32b

    nop

    :cond_6a
    goto/32 :goto_39e

    nop

    nop

    :goto_3f0
    iget-object v0, v5, Lhgj;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_29c

    nop

    nop

    nop

    nop

    nop

    :goto_3f1
    iget-object v7, v5, Lhgj;->g:Lrss;

    nop

    nop

    goto/32 :goto_31f

    nop

    nop

    nop

    nop

    nop

    :goto_3f2
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_234

    nop

    nop

    :goto_3f3
    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3ed

    nop

    nop

    :goto_3f4
    check-cast v12, Lrcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f5
    move v8, v10

    nop

    goto/32 :goto_380

    nop

    nop

    :goto_3f6
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_3d9

    nop

    nop

    nop

    nop

    :goto_3f7
    check-cast v15, Liof;

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    :goto_3f8
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v8

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_3f9
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_3fa
    iget-object v5, v5, Lcom/google/android/libraries/barhopper/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2ad

    nop

    nop

    nop

    nop

    nop

    :goto_3fb
    invoke-static {v4}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_3fc
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_30b

    nop

    nop

    nop

    :goto_3fd
    iget v0, v0, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_3fe
    if-nez v13, :cond_6b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    :cond_6b
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3ff
    invoke-virtual {v12}, Ltkg;->m()Ltkb;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_3b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_400
    if-eqz v7, :cond_6c

    nop

    nop

    nop

    goto/32 :goto_216

    nop

    nop

    :cond_6c
    goto/32 :goto_21e

    nop

    nop

    nop

    :goto_401
    if-nez v10, :cond_6d

    nop

    nop

    goto/32 :goto_3e6

    nop

    :cond_6d
    goto/32 :goto_283

    nop

    nop

    nop

    nop

    :goto_402
    goto/16 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_2e9

    nop

    nop

    :goto_403
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3eb

    nop

    nop

    nop

    nop

    nop

    :goto_404
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_21d

    nop

    nop

    nop

    :goto_405
    sget-object v11, Lhgd;->a:Ljava/util/regex/Pattern;

    nop

    nop

    goto/32 :goto_2d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_406
    const/4 v12, 0x5

    nop

    goto/32 :goto_3b2

    nop

    nop

    nop

    :goto_407
    const-string v2, "Unsupported action "

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_408
    sget-object v11, Lhgz;->f:Lhgz;

    nop

    nop

    :goto_409
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_40a
    new-instance v7, Lhgm;

    nop

    goto/32 :goto_2ee

    nop

    nop

    nop

    nop

    :goto_40b
    const/4 v10, 0x0

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

    :goto_40c
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40d
    check-cast v0, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_3c3

    nop

    nop

    nop

    nop

    :goto_40e
    new-instance v6, Lhgn;

    nop

    goto/32 :goto_202

    nop

    nop

    nop

    nop

    :goto_40f
    invoke-virtual {v11}, Lhgs;->ordinal()I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_410
    invoke-virtual/range {p1 .. p1}, Lrdf;->d()Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_411
    if-eqz v17, :cond_6e

    nop

    goto/32 :goto_3ba

    nop

    nop

    nop

    nop

    :cond_6e
    goto/32 :goto_2f8

    nop

    nop

    nop

    nop

    nop

    :goto_412
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :goto_413
    iget-object v14, v13, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_24e

    nop

    nop

    nop

    :goto_414
    if-eqz v14, :cond_6f

    nop

    nop

    nop

    goto/32 :goto_251

    nop

    nop

    :cond_6f
    goto/32 :goto_250

    nop

    nop

    :goto_415
    invoke-direct {v7, v6, v0, v8}, Lhgq;-><init>(Liof;Landroid/content/Context;Lrss;)V

    goto/32 :goto_402

    nop

    nop

    nop

    nop

    nop

    :goto_416
    check-cast v15, Liof;

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_417
    invoke-static {v5}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_418
    iget-object v0, v1, Lhfa;->k:Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_419
    iget-object v14, v14, Lhgw;->d:Ltkv;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_41a
    invoke-virtual/range {p1 .. p1}, Lrdf;->d()Lrss;

    move-result-object v0

    nop

    goto/32 :goto_3d0

    nop

    nop

    nop

    nop

    nop

    :goto_41b
    if-eqz v13, :cond_70

    nop

    nop

    nop

    goto/32 :goto_241

    nop

    nop

    nop

    :cond_70
    goto/32 :goto_240

    nop

    nop

    nop

    :goto_41c
    goto/16 :goto_3bf

    nop

    nop

    nop

    nop

    :goto_41d
    :try_start_5
    new-instance v11, Landroid/content/Intent;

    nop

    const-string v12, "android.intent.action.VIEW"

    nop

    nop

    nop

    nop

    invoke-direct {v11, v12, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v12, v0, Lhgd;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    nop

    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    nop

    nop

    nop

    nop

    invoke-static {v11}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    goto/32 :goto_3d1

    nop

    nop

    nop

    nop

    :goto_41e
    sget-object v4, Lhge;->f:Lhge;

    nop

    goto/32 :goto_23a

    nop

    nop

    nop

    :goto_41f
    invoke-virtual {v13}, Lrss;->c()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_1e4

    nop

    nop

    nop

    nop

    :goto_420
    if-eqz v12, :cond_71

    nop

    goto/32 :goto_3c7

    nop

    :cond_71
    goto/32 :goto_3c6

    nop

    nop

    nop

    :goto_421
    if-eqz v14, :cond_72

    nop

    goto/32 :goto_9d

    nop

    nop

    :cond_72
    goto/32 :goto_9c

    nop

    nop
.end method
