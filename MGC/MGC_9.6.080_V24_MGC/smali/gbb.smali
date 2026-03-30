.class public final Lgbb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpqs;


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/graphics/Bitmap;

.field public e:Landroid/view/ViewGroup;

.field public f:Landroid/view/View;

.field public g:Lcom/google/android/material/card/MaterialCardView;

.field public final h:Loyd;

.field public final i:Lkcd;

.field public final j:Lowu;

.field public final k:Liyt;

.field public l:Landroid/opengl/GLSurfaceView;

.field public final m:Lgbx;

.field public final n:Lfwv;

.field public final o:Llad;

.field private final p:Lrtm;


# direct methods
.method public constructor <init>(Loyd;Lfwv;Llad;Lkcd;Lrtm;Lowu;Liyt;Lgbx;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lgbb;->o:Llad;

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
    iput-object p6, p0, Lgbb;->j:Lowu;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Lgbb;->p:Lrtm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lgbb;->h:Loyd;

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

    :goto_4
    iput-object p7, p0, Lgbb;->k:Liyt;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iput-object p8, p0, Lgbb;->m:Lgbx;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lgbb;->n:Lfwv;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p4, p0, Lgbb;->i:Lkcd;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpcg;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v0}, Lgbb;->c(Lpcg;Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final b(Z)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    :try_start_1
    iput-boolean p1, v0, Lgbx;->a:Z

    nop

    nop

    nop

    if-nez p1, :cond_2

    nop

    const/4 v1, 0x0

    nop

    nop

    iput-boolean v1, v0, Lgbx;->k:Z

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lgbx;->g:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    iput-object v1, v0, Lgbx;->i:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lgbx;->h:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lgbx;->f:Lgbz;

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lgbz;->close()V

    :cond_1
    iput-object v1, v0, Lgbx;->f:Lgbz;

    nop

    nop

    nop

    :cond_2
    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lgbb;->l:Landroid/opengl/GLSurfaceView;

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

    nop

    :goto_f
    iget-object v0, p0, Lgbb;->m:Lgbx;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lgbb;->l:Landroid/opengl/GLSurfaceView;

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

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop
.end method

.method public final c(Lpcg;Z)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x20

    nop

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

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    new-instance v1, Lgba;

    nop

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

    nop

    :goto_4
    const v1, 0x16

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

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

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
    goto/32 :goto_8

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    iget-object v0, p0, Lgbb;->e:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lgbb;->a:Landroid/view/View;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lgbb;->d()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    invoke-direct {v1, p0, p1, p2, v2}, Lgba;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    goto/32 :goto_13

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lgbb;->b:Landroid/view/View;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    iget-object v0, p0, Lgbb;->j:Lowu;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Lowu;->execute(Ljava/lang/Runnable;)V

    :goto_14
    goto/32 :goto_6

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_10

    nop

    :goto_17
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_14

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop
.end method

.method public final d()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnbr;->i:Lnbe;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lgbb;->p:Lrtm;

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

    :goto_2
    iget-object p0, p0, Lnbs;->a:Lnbr;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object p0

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

    :goto_6
    return p0

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lnbe;->a:Lnbe;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Lnbs;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x1

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

    :goto_c
    invoke-virtual {p0, v0}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop
.end method
