.class public Licq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llxb;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Lmlc;

.field private final c:Ljava/util/Set;

.field private final d:Lidi;

.field private final e:Lico;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m(Llxm;)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

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
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "Refusing to remove %s from processingMediaManager because it is not present. It\'s likely the mediaStoreInsertion future was canceled"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Licq;->e:Lico;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Licm;->close()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    sget-object p0, Licq;->a:Lsdb;

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

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

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

    :goto_c
    iget-object v0, p0, Licq;->c:Ljava/util/Set;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Lico;->d(Llxm;)Licm;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    const/16 v0, 0x55f

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Licq;->e:Lico;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p1}, Lico;->b(Llxm;)Lrss;

    move-result-object v0

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

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string v0, "icq"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Licq;->a:Lsdb;

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

.method public constructor <init>(Lmlc;Lidi;Lico;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Licq;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p1, p0, Licq;->b:Lmlc;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p3, p0, Licq;->e:Lico;

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

    :goto_4
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    nop

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

    :goto_7
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

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
    iput-object p2, p0, Licq;->d:Lidi;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Llxm;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-direct {p0, p1}, Licq;->166277962e993c138a6b1f0c9b571cc0m(Llxm;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c(Llxm;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    :goto_1
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    :goto_5
    const/16 v0, 0x557

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_7
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Licq;->c:Ljava/util/Set;

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

    :goto_a
    invoke-virtual {v0, v1, p0}, Licm;->d(Landroid/graphics/Bitmap;I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_b
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lrss;->f()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_28

    nop

    nop

    :goto_10
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p0, Licq;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, p1}, Lmlc;->a(Llxm;)Landroid/graphics/Bitmap;

    move-result-object v1

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

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    :goto_16
    const-string v0, "#onSessionCaptureIndicatorUpdate Update for neither completed nor queued shot %s"

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

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, p1}, Lmlc;->b(Llxm;)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1a
    check-cast v0, Licm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1c
    const/16 v0, 0x558

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1f
    const-string v0, "thumbnailBitmap not present for shot %s"

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

    :goto_20
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p0, Lscz;

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

    :goto_23
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, p1}, Lico;->b(Llxm;)Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_25
    if-nez p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_26
    sget-object p0, Licq;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_27
    const/4 p0, 0x0

    nop

    :goto_28
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Licq;->e:Lico;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Licq;->b:Lmlc;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, p0, Licq;->b:Lmlc;

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

    :goto_2d
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    :goto_30
    goto/32 :goto_11

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final df(Llxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Licq;->166277962e993c138a6b1f0c9b571cc0m(Llxm;)V

    goto/32 :goto_1

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
.end method

.method public final synthetic dh(Landroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final synthetic e(J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final synthetic g(Llxm;Landroid/graphics/Bitmap;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p2}, Lkav;->I(Llxb;Landroid/graphics/Bitmap;)V

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
.end method

.method public final h(Llxm;Lpcj;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    check-cast p0, Licm;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lscz;

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

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Licq;->c:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-interface {p0, p2, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const/16 p2, 0x55b

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrss;->f()Ljava/lang/Object;

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

    nop

    :goto_7
    invoke-virtual {p0, p2}, Licm;->e(Lpcj;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0, p2}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    sget-object p0, Licq;->a:Lsdb;

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

    :goto_d
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    iget-object p0, p0, Licq;->e:Lico;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string p2, "#onSessionProgress update for neither completed nor queued shot %s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    invoke-virtual {p0, p1}, Lico;->b(Llxm;)Lrss;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final i(Llxm;Llxh;Llxp;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p2, Llxh;->c:Llxo;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    check-cast p1, Lidb;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    new-instance v0, Licm;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    invoke-virtual {p1, p3}, Lrss;->a(Lrss;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iget-wide p2, p2, Llxh;->a:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, p1, v0}, Lico;->e(Llxm;Licm;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1}, Lidb;->c(Llxo;)Lrss;

    move-result-object p1

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

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

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

    :goto_a
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    const v0, 0x17

    nop

    nop

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    invoke-static {p3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    sget-object p1, Llxp;->a:Llxp;

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
    iget-object v1, p0, Licq;->e:Lico;

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

    :goto_11
    if-eq p3, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Licq;->d:Lidi;

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

    nop

    :goto_13
    invoke-direct {v0, p2}, Licm;-><init>(Llxh;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, p2, p3, p1}, Lidi;->b(JLidb;)V

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_18
    sget-object p3, Lidb;->a:Lidb;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_b

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic j(Llxm;)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final n(Llxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Licq;->166277962e993c138a6b1f0c9b571cc0m(Llxm;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method
