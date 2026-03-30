.class public final Lhor;
.super Landroid/database/ContentObserver;
.source "PG"

# interfaces
.implements Ljpv;
.implements Ljps;
.implements Ljpq;
.implements Ljpn;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Lowu;

.field public final c:Ljov;

.field public final d:Lhot;

.field private final e:Z

.field private final f:Ljava/util/concurrent/Executor;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lhot;ZLowu;Ljov;Ljava/util/concurrent/Executor;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lhor;->b:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lhor;->d:Lhot;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhor;->a:Landroid/content/ContentResolver;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Lhor;->c:Ljov;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p3, p0, Lhor;->e:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    iput-object p6, p0, Lhor;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method


# virtual methods
.method public final cX()V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhor;->a:Landroid/content/ContentResolver;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lhor;->a:Landroid/content/ContentResolver;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x12

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

    :goto_8
    const v1, 0x16

    nop

    goto/32 :goto_a

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

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    nop

    :goto_b
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

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

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final cY()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhor;->a:Landroid/content/ContentResolver;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lhot;->q()Lsui;

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lhor;->g:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lhor;->g:Z

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget-object p0, p0, Lhor;->d:Lhot;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Lhor;->e:Z

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final de()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhor;->a:Landroid/content/ContentResolver;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lgba;

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

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lhor;->g:Z

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p3, :cond_1

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    and-int/lit8 p3, p3, 0x8

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

    :goto_10
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    :goto_11
    iget-object p3, p0, Lhor;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_20

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    and-int/lit8 v0, p3, 0x10

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    :goto_19
    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_0

    nop

    nop

    :goto_1b
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, p0, p1, p2, v1}, Lgba;-><init>(Lhor;ZLandroid/net/Uri;I)V

    goto/32 :goto_b

    nop

    nop

    :goto_1d
    goto/16 :goto_8

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1f
    const/4 p1, 0x0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method
