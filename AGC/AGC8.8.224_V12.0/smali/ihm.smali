.class public final Lihm;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;

.field private final h:Loiw;

.field private final i:Loiw;

.field private final j:Loiw;

.field private final k:Loiw;

.field private final l:Loiw;

.field private final m:Loiw;

.field private final n:Loiw;

.field private final o:Loiw;

.field private final p:Loiw;

.field private final synthetic q:I

.field private final r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lihi;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I)V
    .locals 2

    move-object v0, p0

    move/from16 v1, p18

    iput v1, v0, Lihm;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lihm;->r:Ljava/lang/Object;

    move-object v1, p2

    iput-object v1, v0, Lihm;->a:Loiw;

    move-object v1, p3

    iput-object v1, v0, Lihm;->b:Loiw;

    move-object v1, p4

    iput-object v1, v0, Lihm;->c:Loiw;

    move-object v1, p5

    iput-object v1, v0, Lihm;->d:Loiw;

    move-object v1, p6

    iput-object v1, v0, Lihm;->e:Loiw;

    move-object v1, p7

    iput-object v1, v0, Lihm;->f:Loiw;

    move-object v1, p8

    iput-object v1, v0, Lihm;->g:Loiw;

    move-object v1, p9

    iput-object v1, v0, Lihm;->h:Loiw;

    move-object v1, p10

    iput-object v1, v0, Lihm;->i:Loiw;

    move-object v1, p11

    iput-object v1, v0, Lihm;->j:Loiw;

    move-object v1, p12

    iput-object v1, v0, Lihm;->k:Loiw;

    move-object v1, p13

    iput-object v1, v0, Lihm;->l:Loiw;

    move-object/from16 v1, p14

    iput-object v1, v0, Lihm;->m:Loiw;

    move-object/from16 v1, p15

    iput-object v1, v0, Lihm;->n:Loiw;

    move-object/from16 v1, p16

    iput-object v1, v0, Lihm;->o:Loiw;

    move-object/from16 v1, p17

    iput-object v1, v0, Lihm;->p:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I)V
    .locals 2

    move-object v0, p0

    move/from16 v1, p18

    iput v1, v0, Lihm;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lihm;->r:Ljava/lang/Object;

    move-object v1, p2

    iput-object v1, v0, Lihm;->e:Loiw;

    move-object v1, p3

    iput-object v1, v0, Lihm;->c:Loiw;

    move-object v1, p4

    iput-object v1, v0, Lihm;->h:Loiw;

    move-object v1, p5

    iput-object v1, v0, Lihm;->l:Loiw;

    move-object v1, p6

    iput-object v1, v0, Lihm;->a:Loiw;

    move-object v1, p7

    iput-object v1, v0, Lihm;->o:Loiw;

    move-object v1, p8

    iput-object v1, v0, Lihm;->n:Loiw;

    move-object v1, p9

    iput-object v1, v0, Lihm;->m:Loiw;

    move-object v1, p10

    iput-object v1, v0, Lihm;->k:Loiw;

    move-object v1, p11

    iput-object v1, v0, Lihm;->b:Loiw;

    move-object v1, p12

    iput-object v1, v0, Lihm;->j:Loiw;

    move-object v1, p13

    iput-object v1, v0, Lihm;->f:Loiw;

    move-object/from16 v1, p14

    iput-object v1, v0, Lihm;->p:Loiw;

    move-object/from16 v1, p15

    iput-object v1, v0, Lihm;->d:Loiw;

    move-object/from16 v1, p16

    iput-object v1, v0, Lihm;->g:Loiw;

    move-object/from16 v1, p17

    iput-object v1, v0, Lihm;->i:Loiw;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Lihm;->q:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lihm;->r:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcvr;

    iget-object v1, v0, Lihm;->e:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Leoa;

    iget-object v1, v0, Lihm;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v1, v0, Lihm;->h:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lgeh;

    iget-object v1, v0, Lihm;->l:Loiw;

    check-cast v1, Litb;

    invoke-virtual {v1}, Litb;->a()Litm;

    move-result-object v7

    iget-object v1, v0, Lihm;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lhwu;

    iget-object v9, v0, Lihm;->o:Loiw;

    iget-object v1, v0, Lihm;->n:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Liff;

    iget-object v1, v0, Lihm;->m:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lebj;

    iget-object v1, v0, Lihm;->k:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Licb;

    iget-object v1, v0, Lihm;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ldbf;

    iget-object v1, v0, Lihm;->j:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lgzn;

    iget-object v1, v0, Lihm;->f:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljwb;

    iget-object v1, v0, Lihm;->p:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lell;

    iget-object v1, v0, Lihm;->d:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lhtb;

    iget-object v1, v0, Lihm;->g:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lhtz;

    iget-object v1, v0, Lihm;->i:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lhud;

    new-instance v1, Lhun;

    move-object v2, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v2 .. v23}, Lhun;-><init>(Lcvr;Leoa;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lgeh;Litm;Lhwu;Loiw;Liff;Lebj;Licb;Ldbf;Lgzn;Ljwb;Lell;Lhtb;Lhtz;Lhud;[B[B[B[B)V

    return-object v1

    :pswitch_0
    iget-object v1, v0, Lihm;->r:Ljava/lang/Object;

    iget-object v2, v0, Lihm;->a:Loiw;

    check-cast v2, Ldwh;

    invoke-virtual {v2}, Ldwh;->a()Landroid/content/Context;

    move-result-object v4

    iget-object v2, v0, Lihm;->b:Loiw;

    check-cast v2, Leqz;

    invoke-virtual {v2}, Leqz;->a()Lcdi;

    move-result-object v2

    iget-object v3, v0, Lihm;->c:Loiw;

    check-cast v3, Leqy;

    invoke-virtual {v3}, Leqy;->a()Lezx;

    move-result-object v15

    iget-object v3, v0, Lihm;->d:Loiw;

    check-cast v3, Logm;

    invoke-virtual {v3}, Logm;->a()Ljava/util/Map;

    move-result-object v3

    iget-object v5, v0, Lihm;->e:Loiw;

    check-cast v5, Limt;

    invoke-virtual {v5}, Limt;->a()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, v0, Lihm;->f:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ldhi;

    iget-object v6, v0, Lihm;->g:Loiw;

    invoke-static {v6}, Logj;->a(Loiw;)Logd;

    move-result-object v11

    iget-object v6, v0, Lihm;->h:Loiw;

    invoke-static {v6}, Logj;->a(Loiw;)Logd;

    move-result-object v12

    iget-object v13, v0, Lihm;->i:Loiw;

    iget-object v6, v0, Lihm;->j:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Liff;

    iget-object v6, v0, Lihm;->k:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Ljuh;

    iget-object v6, v0, Lihm;->l:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Lkbc;

    iget-object v6, v0, Lihm;->m:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Lell;

    iget-object v6, v0, Lihm;->n:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Ljew;

    iget-object v6, v0, Lihm;->o:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v19, v6

    check-cast v19, Ljvs;

    iget-object v6, v0, Lihm;->p:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v24, v6

    check-cast v24, Ljvs;

    new-instance v6, Libv;

    invoke-virtual {v2}, Lcdi;->i()Ljuf;

    move-result-object v2

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v25, v3

    goto :goto_0

    :cond_0
    move-object/from16 v25, v3

    :goto_0
    check-cast v1, Lihi;

    iget-object v1, v1, Lihi;->b:Lihg;

    iget-object v3, v1, Lihg;->j:Ljava/lang/Object;

    iget-object v1, v1, Lihg;->m:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    move-object v7, v3

    check-cast v7, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v3, v6

    move-object v5, v2

    move-object v1, v6

    move-object/from16 v6, v25

    move-object v2, v14

    move-object v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v24

    invoke-direct/range {v3 .. v23}, Libv;-><init>(Landroid/content/Context;Ljuf;Ljava/util/Map;Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;Liff;Ldhi;Logd;Logd;Loiw;Ljuh;Lkbc;Lell;Ljew;Ljvs;Ljvs;[B[B[B[B)V

    invoke-static {v2, v0, v1}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
