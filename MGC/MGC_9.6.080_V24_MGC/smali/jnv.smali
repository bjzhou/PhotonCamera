.class public Ljnv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public b:Ljava/io/File;

.field public final c:Lmlf;

.field public final d:Ljava/io/File;

.field public final e:Ljava/io/File;

.field public final f:Ljqp;

.field public final g:Llwz;

.field public final h:Lnch;

.field public final i:Lmhz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

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

    nop

    :goto_1
    sput-object v0, Ljnv;->a:Lsdb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "jnv"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Llvw;Lmlf;Lmhz;Llwz;Ljqp;Lnch;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    iput-object p5, p0, Ljnv;->f:Ljqp;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const-string v0, ""

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v0, 0x9d3

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    iput-object p6, p0, Ljnv;->h:Lnch;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    iput-object p3, p0, Ljnv;->i:Lmhz;

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

    :goto_c
    invoke-virtual {p1, v0}, Llvw;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

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

    :goto_12
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Ljnv;->e:Ljava/io/File;

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

    nop

    :goto_14
    const v1, 0x2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Ljnv;->b:Ljava/io/File;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    :goto_19
    const-string v0, "panorama_sessions"

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p4, p0, Ljnv;->g:Llwz;

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

    :goto_1b
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v0}, Llvw;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Ljava/io/File;

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

    :goto_1e
    const-string v1, "panoramas"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    :goto_20
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v0, "Panorama directory not created."

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_23
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_24
    iput-object p2, p0, Ljnv;->c:Lmlf;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    check-cast p1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v0, p0, Ljnv;->d:Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_27
    sget-object p1, Ljnv;->a:Lsdb;

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


# virtual methods
.method public final a()Ljava/io/File;
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1
    sget-object p0, Ljnv;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lscz;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    :goto_5
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_1a

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

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Ljnv;->b:Ljava/io/File;

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

    :goto_12
    iget-object v1, p0, Ljnv;->b:Ljava/io/File;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    return-object v0

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "Thumbnails directory not created."

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, "thumbnails"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1c
    const/16 v0, 0x9d4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x1f

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
.end method
