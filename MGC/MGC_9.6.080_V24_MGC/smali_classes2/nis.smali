.class public Lnis;
.super Lnip;
.source "PG"


# static fields
.field private static final a:Lsdb;

.field private static final b:Lpck;

.field private static final c:Lpck;


# instance fields
.field private final d:Lpnv;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v1, 0x500

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1, v2}, Lpck;-><init>(II)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lnis;->b:Lpck;

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

    :goto_4
    const v1, 0x10

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    const-string v0, "nis"

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    sput-object v0, Lnis;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_8
    const/16 v1, 0x400

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    sput-object v0, Lnis;->c:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    const/16 v2, 0x300

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

    :goto_12
    new-instance v0, Lpck;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v1, v2}, Lpck;-><init>(II)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Lpck;

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

    :goto_16
    const/16 v2, 0x2d0

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/view/WindowManager;Lhoh;Lpnv;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p4}, Lnip;-><init>(Landroid/view/WindowManager;Lhoh;Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lnis;->d:Lpnv;

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

    nop
.end method


# virtual methods
.method public final b(Ljava/util/List;Lpby;Lpog;Lnne;Lpnx;)Lpck;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v3, 0x13c1

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

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super/range {p0 .. p5}, Lnip;->b(Ljava/util/List;Lpby;Lpog;Lnne;Lpnx;)Lpck;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1c

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v2, "selectViewfinderSize: cameraId=%s"

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
    if-eq p4, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lpby;->a()D

    move-result-wide v0

    nop

    invoke-virtual {p0, p1, v0, v1}, Lnip;->a(Ljava/util/List;D)Lpck;

    move-result-object v0

    nop

    iget-object v1, p0, Lnis;->d:Lpnv;

    nop

    nop

    nop

    nop

    invoke-interface {v1, p5}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0x22

    nop

    nop

    nop

    nop

    invoke-static {v1, v0, v2}, Lkxj;->a(Lpnu;Lpck;I)Lkxj;

    move-result-object v0

    nop

    iget-object v0, v0, Lkxj;->b:Lpck;

    nop

    nop

    sget-object v1, Lpby;->b:Lpby;

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lpby;->j(Lpck;)Lpby;

    move-result-object v2

    nop

    nop

    invoke-virtual {v1, v2}, Lpby;->m(Lpby;)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    sget-object v0, Lnis;->c:Lpck;

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    :cond_1
    sget-object v1, Lpby;->a:Lpby;

    nop

    nop

    invoke-static {v0}, Lpby;->j(Lpck;)Lpby;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Lpby;->m(Lpby;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, La;->au(Z)V

    sget-object v0, Lnis;->b:Lpck;

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop
    :try_end_0
    .catch Lkxi; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    invoke-static {v2, p5, v3, v1, v0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v1, Lnis;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    sget-object v0, Lnne;->b:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method
