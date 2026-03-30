.class public Lmds;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmcb;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Lpgo;

.field private final c:Lphh;

.field private final d:I

.field private final e:Lpik;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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
    sput-object v0, Lmds;->a:Lsdb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "mds"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpik;Lpgo;Lphh;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lmds;->b:Lpgo;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lmds;->c:Lphh;

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

    :goto_3
    iput-object p1, p0, Lmds;->e:Lpik;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iput p4, p0, Lmds;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Loiq;)V
    .locals 6

    goto/32 :goto_24

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-interface {v1}, Lprw;->close()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Lppo;->a(IZ)Lppo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    invoke-interface {v4, v5, v2}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_1d

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

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    check-cast v4, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    check-cast v4, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_7
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p1, Loiq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_8

    nop

    :goto_e
    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    const/16 v5, 0x1091

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

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v4, Lmds;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_14
    invoke-static {v1, p0}, Lcom/google/android/libraries/camera/jni/yuv/YuvUtilNative;->a(Lprw;Lppo;)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw v3

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    move-object v3, v1

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget p0, p0, Lmds;->d:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v4, v3}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1f
    const-string v5, "Attempt #%s to get a valid viewfinder frame failed"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move v2, v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1, p0}, Lmed;->a(Landroid/graphics/Bitmap;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v3, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_24
    const v0, 0x14

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

    :goto_25
    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_12

    nop

    nop

    :goto_28
    if-lt v2, v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_3
    :try_start_0
    iget-object v4, p0, Lmds;->e:Lpik;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lmds;->b:Lpgo;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lpik;->b(Lpgo;)Lpge;

    move-result-object v4

    nop

    nop

    nop
    :try_end_0
    .catch Lmdm; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v4}, Lpuq;->bC(Lpge;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmdm; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v5, p0, Lmds;->c:Lphh;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lpge;->e(Lphh;)Lprw;

    move-result-object v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_4

    nop

    nop

    nop

    move-object v1, v4

    nop

    goto :goto_27

    nop

    nop

    nop

    :cond_4
    new-instance v3, Lmdm;

    nop

    nop

    const/4 v4, 0x7

    nop

    invoke-direct {v3, v4, v1}, Lmdm;-><init>(ILjava/lang/Throwable;)V

    throw v3

    nop

    nop

    nop

    :catch_0
    move-exception v3

    nop

    nop

    nop

    new-instance v4, Lmdm;

    nop

    nop

    nop

    nop

    const/4 v5, 0x6

    nop

    nop

    nop

    nop

    invoke-direct {v4, v5, v3}, Lmdm;-><init>(ILjava/lang/Throwable;)V

    throw v4

    nop
    :try_end_2
    .catch Lmdm; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method
